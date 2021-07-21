<?php

namespace App\Http\Controllers;

use App\Order;
use App\User;

use Cart;
use Illuminate\Http\Request;
use Laravel\Cashier\Exceptions\PaymentActionRequired;



class PaymentController extends Controller
{
    public function view(Request $request)
    {
        $total = Money(Cart::getSubTotal(), config('settings.cashier_currency'), config('settings.do_convertion'))->format();

        //Clear cart
        Cart::clear();

        return view('payment.payment', [
            'total' => $total,
        ]);
    }

    public function handleOrderPaymentStripe(Request $request, Order $order)
    {
        if ($request->success . "" == "true") {
            $order->payment_status = 'paid';
            $order->update();
            return redirect()->route('order.success', ['order' => $order]);
        } else {
            //TODO - handle better when executed on mobile app
            return redirect()->route('vendor', $order->restorant->subdomain)->withMesswithErrorage($request->message)->withInput();
        }
    }
    private function isCouponValid($coupon)
    {
        \Stripe\Stripe::setApiKey(env('STRIPE_SECRET'));

        try {
            $coupon = \Stripe\Coupon::retrieve($coupon);
            return $coupon;
        } catch (\Exception $e) {
            return false;
        }
    }
    public function subscribe(Request $request)
    {

        $user = auth()->user();
        $planId = $request->plan_stripe_id;
        $paymentMethod = $request->payment_method;
        $coupon_code = $user->coupon_code;
        
        if ($this->isCouponValid($coupon_code) || $coupon_code == null) {
            try {
                if ($user->onTrial()) {
                    $user->newSubscription('main', $planId)->trialUntil($user->trial_ends_at)->withCoupon($coupon_code)->create($paymentMethod);
                } else {
                    $user->newSubscription('main', $planId)->withCoupon($coupon_code)->create($paymentMethod);
                }
                return redirect()->route('plans.current')->withStatus(__('Card Subscribed Successfully !'));
            } catch (\PaymentActionRequired $e) {
                $paymentRedirect = route('cashier.payment', [$e->payment->id, 'redirect' => route('plans.subscribe_3d_stripe', ['plan' => auth()->user()->plan_id, 'user' => auth()->user()->id])]);
                return redirect($paymentRedirect);
            }
        } else {
            return redirect()->route('plans.current')->with('alert', 'Sorry Wrong Coupon Code !');
        }
    }
    public function updateCoupon(Request $request)
    {
        // dd($request->all());
        $theRules = [
            'coupon_code' => ['valid_coupon','nullable'],
        ];
        $request->validate($theRules,['valid_coupon' => 'Invaild Coupon !']);

        $user = auth()->user();
        $user->coupon_code = $request->coupon_code ;
        $user->save();
        return redirect()->route('plans.current')->withStatus(__('Coupon Updated Successfully !'));
    }
    public function subscribeInRegister(Request $request)
    {
        $user = User::findOrFail($request->user_id);
        $planId = $request->plan_id;
        $paymentMethod = $request->payment_method;
        $coupon_code = $request->coupon_code;
        if ($user->onTrial()) {
            $user->newSubscription('main', $planId)->trialUntil($user->trial_ends_at)->withCoupon($coupon_code)->create($paymentMethod);
        } else {
            $user->newSubscription('main', $planId)->withCoupon($coupon_code)->create($paymentMethod);
        }
        return response([
            "data" => "success",
        ]);
    }
    public function removeCard()
    {
        $user = auth()->user();
        $user->deletePaymentMethods();
        $user->subscription('main')->cancelNow();
        return redirect()->route('plans.current')->withStatus(__('Card Removed Successfully !'));
    }
}

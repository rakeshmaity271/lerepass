<?php

namespace App\Http\Controllers;

use App\Http\Requests\UserRequest;
use App\Notifications\CloseAccount;
use App\Restorant;
use App\User;
use App\Plans;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Mail;
use Illuminate\Support\Facades\Auth;

class UserController extends Controller
{
    /**
     * Display a listing of the users.
     *
     * @param  \App\User  $model
     * @return \Illuminate\View\View
     */
    public function index(User $model)
    {
        return view('users.index', ['users' => $model->paginate(15)]);
    }

    /**
     * Show the form for creating a new user.
     *
     * @return \Illuminate\View\View
     */
    public function create()
    {
        return view('users.create');
    }

    /**
     * Store a newly created user in storage.
     *
     * @param  \App\Http\Requests\UserRequest  $request
     * @param  \App\User  $model
     * @return \Illuminate\Http\RedirectResponse
     */
    public function store(UserRequest $request, User $model)
    {
        $model->create($request->merge(['password' => Hash::make($request->get('password'))])->all());

        return redirect()->route('user.index')->withStatus(__('User successfully created.'));
    }

    /**
     * Show the form for editing the specified user.
     *
     * @param  \App\User  $user
     * @return \Illuminate\View\View
     */
    public function edit(User $user)
    {
        return view('users.edit', compact('user'));
    }

    /**
     * Update the specified user in storage.
     *
     * @param  \App\Http\Requests\UserRequest  $request
     * @param  \App\User  $user
     * @return \Illuminate\Http\RedirectResponse
     */
    public function update(UserRequest $request, User $user)
    {
        $user->update(
            $request->merge(['password' => Hash::make($request->get('password'))])
                ->except(
                    [$request->get('password') ? '' : 'password']
                )
        );

        return redirect()->route('user.index')->withStatus(__('User successfully updated.'));
    }

    /**
     * Remove the specified user from storage.
     *
     * @param  \App\User  $user
     * @return \Illuminate\Http\RedirectResponse
     */
    public function destroy(User $user)
    {
        if ($user->hasRole('owner')) {
            $data = Restorant::with('orders.items')->with('orders.status')->with('categories.items.variants.extras')->with('categories.items.extras')->with('categories.items.options')->where('id', $user->restorant->id)->get()->toArray();

            //delete restaurant
            $user->restorant->delete();

            $user->notify(new CloseAccount($user, json_encode($data)));

            //Logout user
            auth()->logout();

            //delete user
            $user->delete();

            return redirect()->route('front')->withStatus(__('notifications_acc_closed_msg'));
        } else {
            $user->delete();

            return redirect()->route('user.index')->withStatus(__('User successfully deleted.'));
        }
    }

    public function checkPushNotificationId(UserRequest $request)
    {
        return response()->json([
            'userId' => $request->userId,
            'status' => true,
            'errMsg' => '',
        ]);
    }

    public function stripeReAuth(Request $request)
    {
        dd($request->all());
    }

    public function stripeOnNoardResponse(Request $request)
    {
        dd($request->all());
    }
    public function updatePlan( $plan_id)
    {
        $user = Auth::user();
        if ($user->onTrial()) {
            return redirect('/plan')->with('alert', 'Sorry You can not change plan until Trials End!');
        }
        $plan = Plans::find($plan_id);
        $plan_trial_days = $plan->trial_days;
        $user->plan_id = $plan_id;
        if ($user->trial_ends_at == null && $plan_trial_days > 0) {
            $user->trial_ends_at = now()->addDays($plan_trial_days);
        }
        $user->save();
        return redirect('/plan')->withStatus(__('Your Plan Successfully Changed to '. Auth::user()->plan->name .'.'));
    }
}

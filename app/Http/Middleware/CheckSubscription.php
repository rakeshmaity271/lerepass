<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Support\Facades\Auth;

class CheckSubscription
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure  $next
     * @return mixed
     */
    public function handle($request, Closure $next)
    {
        if (!Auth::user()->hasRole('admin') && Auth::user()->plan_id != 1 ) {
            if ($request->user()->subscribed('main')) {
                return $next($request);
            }else if($request->user()->onTrial()){
                return $next($request);
            }else{
                return redirect('/plan')->with('alert', 'Please Make The Payment First !');;
            }
        }
        
        return $next($request);
    }
}

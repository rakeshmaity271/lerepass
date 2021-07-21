@extends('layouts.front', ['title' => __('User Profile')])
@if (strlen(config('settings.recaptcha_site_key'))>2)
@section('head')
{!! htmlScriptTagJsApi([]) !!}
@endsection
@endif

@section('content')
@include('users.partials.header', [
'title' => "",
])
<div class="container-fluid mt--7 mb-5">
    <div class="row">

    </div>
    <div class="col-xl-8 offset-xl-2">
        <div class="card bg-secondary shadow">
            <div class="card-header bg-white border-0">
                <div class="row align-items-center">
                    <h3 class="col-12 mb-0">{{ __('Add your Card (Optional) ') }}</h3>
                </div>
            </div>
            <div class="card-body" id="credit-card-body">
                <div class="card-body">
                    {{-- @if(auth()->user()->card_last_four == null ) --}}
                    <input id="card-holder-name" type="text" class="form-control" placeholder="Name">
                    <br>
                    <!-- Stripe Elements Placeholder -->
                    <div id="card-element"></div>
                    <br>
                    {{-- <button id="card-button" class="btn btn-success" data-secret="{{ $intent->client_secret }}">
                    --}}
                    <button id="card-button" class="btn btn-success" data-secret="{{ $intent->client_secret }}">
                        Update Payment Method
                    </button>
                    {{-- @else
            <div style="display:flex">
                <h3 class="align-self-center">Card Already Added</h3>
                <span class="align-self-center ml-auto">Card Number: **** **** **** {{ auth()->user()->card_last_four }}
                    </span>
                    <a href="{{ route('user.remove.card') }}"
                        class="btn btn-danger ml-auto text-white">{{ __('Remove') }}</a>
                </div> --}}
            </div>
        </div>
    </div>
    <div class="d-flex mt-5">
        <a href="/register/done" class="btn btn-primary ml-auto">Skip</a>
    </div>
</div>
<br />
</div>
<script src="https://js.stripe.com/v3/"></script>
<script>
    window.addEventListener('load', function(){
    const stripe = Stripe('{{ env('STRIPE_KEY') }}');
    const plan_stripe_id = '{{ $plan_stripe_id }}';
     const elements = stripe.elements();
     const cardElement = elements.create('card');
 
     cardElement.mount('#card-element');

    const cardHolderName = document.getElementById('card-holder-name');
const cardButton = document.getElementById('card-button');
const clientSecret = cardButton.dataset.secret;

cardButton.addEventListener('click', async (e) => {
    const { setupIntent, error } = await stripe.confirmCardSetup(
        clientSecret, {
            payment_method: {
                card: cardElement,
                billing_details: { name: cardHolderName.value }
            }
        }
    );

    if (error) {
        // Display "error.message" to the user...
    } else {
        // console.log('handling',setupIntent.payment_method);
        document.getElementById("credit-card-body").innerHTML = " <h2 class='text-center'> Adding Your Card Please Wait....! </h2>";
        axios.post('/user/subscribe/inRegister',{
            payment_method: setupIntent.payment_method,
            plan_id: plan_stripe_id,
            user_id: '{{$user_id}}',
            plan_trial_days: '{{$plan_trial_days}}',
            coupon_code: '{{$coupon_code}}',
        }).then( (response) => { 
            if (response.data.data == 'success') {
                window.location.href = '/register/done';
            }
        })  
    }
});

});
</script>

@endsection

@section('js')
@if (isset($_GET['name'])&&$errors->isEmpty())
<script>
    "use strict";
    document.getElementById("thesubmitbtn").click();
</script>

@endif
@endsection
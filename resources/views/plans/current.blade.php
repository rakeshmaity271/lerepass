
@extends('layouts.app', ['title' => __('Pages')])

@section('content')

<div class="header bg-gradient-primary pb-8 pt-5 pt-md-8">
	@if(session()->has('alert'))
	<div class="alert alert-warning mx-5" role="alert">
		{{ session()->get('alert') }}
	</div>
	@endif
</div>


<div class="container-fluid mt--7">

	<div class="row">

		<div class="col-12">
			@if (session('status'))
			<div class="alert alert-success alert-dismissible fade show" role="alert">
				{{ session('status') }}
				<button type="button" class="close" data-dismiss="alert" aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
			</div>
			@endif

			<!-- Errors display -->
			@if (session('error'))
			<div role="alert" class="alert alert-danger">{{ session('error') }}</div>
			@endif

		</div>

		@foreach ($plans as $plan)
		<div class="col-md-{{ $col}}">
			<div class="card shadow">
				<div class="card-header border-0">
					<div class="row align-items-center">
						<div class="col-8">
							<h3 class="mb-0">{{ $plan['name'] }}</h3>
						</div>
						<div class="col-4">
							@if (isset ( $coupon ))
							@if ( $plan['price'] > 0 && $coupon->percent_off > 0 && $coupon->amount_off == null)
							<s class="mb-0">@money($plan['price'],
								config('settings.cashier_currency'),config('settings.do_convertion'))/{{ $plan['period']==1?__('m'):__('y') }}
							</s>
							<h3 class="mb-0">@money($plan['price'] - ($plan['price']*$coupon->percent_off/100),
								config('settings.cashier_currency'),config('settings.do_convertion'))/{{ $plan['period']==1?__('m'):__('y') }}
							</h3>
							@elseif( $plan['price'] > 0 && $coupon->percent_off == null && $coupon->amount_off > 0 )
							<s class="mb-0">@money($plan['price'],
								config('settings.cashier_currency'),config('settings.do_convertion'))/{{ $plan['period']==1?__('m'):__('y') }}
							</s>
							<h3 class="mb-0">@money($plan['price'] - ($coupon->amount_off/100),
								config('settings.cashier_currency'),config('settings.do_convertion'))/{{ $plan['period']==1?__('m'):__('y') }}
							</h3>
							@else
							<h3 class="mb-0">@money($plan['price'],
								config('settings.cashier_currency'),config('settings.do_convertion'))/{{ $plan['period']==1?__('m'):__('y') }}
							</h3>
							@endif
							@else
							<h3 class="mb-0">@money($plan['price'],
								config('settings.cashier_currency'),config('settings.do_convertion'))/{{ $plan['period']==1?__('m'):__('y') }}
							</h3>
							@endif
						</div>
					</div>
				</div>


				@if(count($plans))
				<div class="table-responsive">
					<table class="table align-items-center table-flush">
						<thead class="thead-light">
							<tr>
								<th scope="col">{{ __('Features') }}</th>
							</tr>
						</thead>
						<tbody>
							@foreach (explode(",",$plan['features']) as $feature)
							<tr>
								<td>{{ __($feature) }} </td>
							</tr>
							@endforeach
						</tbody>
					</table>


				</div>
				@endif
				<div class="card-footer py-4">
					@if($currentPlan&&$plan['id'].""==$currentPlan->id."")
					<a href="" class="btn btn-primary disabled">{{__('Current Plan')}}</a>
					@else

					<!-- Button holder -->
					<div id="button-container-plan-{{$plan['id']}}"></div>



					@if(strlen($plan['stripe_id'])>2&&config('settings.subscription_processor')=='Stripe')
					<a href="{{url('update/plan/'. $plan['id'] )}}"
						class="btn btn-primary">{{__('Switch to ').$plan['name']}}</a>
					@endif

					{{-- @if($plan['price']>0&&(config('settings.subscription_processor')=='Local'||config('settings.subscription_processor')=='local'))
										<button data-toggle="modal" data-target="#paymentModal{{ $plan['id']  }}"
					class="btn btn-primary">{{__('Switch to ').$plan['name']}}</button>

					<!-- Modal -->
					<div class="modal fade" id="paymentModal{{ $plan['id']  }}" tabindex="-1" role="dialog"
						aria-labelledby="exampleModalLabel" aria-hidden="true">
						<div class="modal-dialog modal-danger modal-dialog-centered modal-" role="document">
							<div class="modal-content bg-gradient-danger">
								<div class="modal-header">
									<h5 class="modal-title" id="exampleModalLabel">{{ $plan['name'] }}</h5>
									<button type="button" class="close" data-dismiss="modal" aria-label="Close">
										<span aria-hidden="true">&times;</span>
									</button>
								</div>
								<div class="modal-body">
									{{ config('settings.local_transfer_info')}}
									<br /><br />
									{{ config('settings.local_transfer_account')}}
									<hr /><br />
									{{ __('Plan price ')}}<br />
									@money($plan['price'],
									config('settings.cashier_currency'),config('settings.do_convertion'))/{{ $plan['period']==1?__('m'):__('y') }}
								</div>
								<div class="modal-footer">
									<button type="button" class="btn btn-secondary"
										data-dismiss="modal">{{ __('Close') }}</button>
								</div>
							</div>
						</div>
					</div>
					@endif --}}

					<!-- END TO BE REMOVED -->


					@endif
				</div>
			</div>
		</div>
		@endforeach
	</div>

	<div class="row mt-4">
		<div class="col-md-12">
			<div class="card bg-secondary shadow">
				<div class="card-header border-0">
					<div class="row align-items-center">
						<div class="col-8">
							<h3 class="mb-0">{{ __('Your Coupon') }}</h3>
						</div>

					</div>
				</div>
				<div class="card-body">
					<form action="{{url('/user/coupon')}}" method="post">
						@csrf
						<div class="form-group{{ $errors->has('coupon_code') ? ' has-danger' : '' }}">
							<label class="form-control-label" for="plan_id">{{ __('Coupon Code') }}</label>
							<input type="text" name="coupon_code" id="coupon_code"
								class="form-control form-control-alternative{{ $errors->has('coupon_code') ? ' is-invalid' : '' }}"
								placeholder="{{ __('Coupon Code') }} ..."
								value="{{ isset(auth()->user()->coupon_code)? auth()->user()->coupon_code : ""}}" autofocus>

							@if ($errors->has('coupon_code'))
							<span class="invalid-feedback" role="alert">
								<strong>{{ $errors->first('coupon_code') }}</strong>
							</span>
							@endif
						</div>
						<div class="text-center">
							<button type="submit" class="btn btn-outline-success">Apply</button>
						</div>
						
					</form>
				</div>
			</div>
		</div>
	</div>



	@if(auth()->user()->plan_id != 1 && auth()->user()->plan_id != null)
	<!-- Stripe Subscription form -->
	<div class="row mt-4" id="stripe-payment-form-holder">
		<div class="col-md-12">
			<div class="card bg-secondary shadow">
				<div class="card-header border-0">
					<div class="row align-items-center">
						<div class="col-8">
							<h3 class="mb-0">{{ __('Subscribe to') }} <span
									id="plan_name">{{ auth()->user()->plan->name }}</span>
							</h3>
						</div>
					</div>
				</div>
				<div class="card-body" id="credit-card-body">
					@if(auth()->user()->card_last_four == null )
					<form action="{{url('/user/subscribe')}}" method="post" id="stripe-payment-form">
						@csrf
						<input id="card-holder-name" type="text" class="form-control" placeholder="Name"
							value="{{ auth()->user()->name }}">
						<br>


						<!-- Stripe Elements Placeholder -->
						<div id="card-element"></div>
						<br>
						<div class="row ">
							<div class="col-md-12">
								<button type="button" id="card-button" class="btn btn-success"
									data-secret="{{ $intent->client_secret }}">
									Update Payment Method
								</button>

							</div>
							<div class="col-md-8 ">
								<input type="hidden" name="payment_method" id="payment_method">
								<input type="hidden" name="plan_stripe_id" id="plan_stripe_id">
							</div>
						</div>
					</form>
					@else
					<div style="display:flex">
						<h3 class="align-self-center">Card Already Added</h3>
						<span class="align-self-center ml-auto">Card Number: **** **** ****
							{{ auth()->user()->card_last_four }} </span>
						<a href="{{ route('user.remove.card') }}"
							class="btn btn-danger ml-auto text-white">{{ __('Remove') }}</a>
					</div>
					@endif
				</div>
			</div>
		</div>
	</div>
	@endif
	@if($currentPlan)

	<!-- Show Current form actions -->
	<div class="row mt-4">
		<div class="col-md-12">
			<div class="card bg-secondary shadow">
				<div class="card-header border-0">
					<div class="row align-items-center">
						<div class="col-8">
							<h3 class="mb-0">{{ __('Your current plan') }}</h3>
						</div>

					</div>
				</div>
				<div class="card-body">
					<p>{{ __('You are currently using the ').$currentPlan->name." ".__('plan') }}<p>
							@if(strlen(auth()->user()->plan_status)>0)
							<p>{{ __('Status').": "}} <strong>{{ auth()->user()->plan_status }}</strong>
								<p>
									@endif
				</div>
				@if(strlen(auth()->user()->cancel_url)>5 && ( config('settings.subscription_processor') == "Stripe"))
				<div class="card-footer py-4">
					<a href="{{ auth()->user()->update_url }}" target="_blank"
						class="btn btn-warning">{{__('Update subscription')}}</a>
					<a href="{{ auth()->user()->cancel_url }}" target="_blank"
						class="btn btn-danger">{{__('Cancel subscription')}}</a>
				</div>
				@endif

				@if (!(config('settings.subscription_processor') == "Stripe" ||
				config('settings.subscription_processor') == "Local"))
				<!-- Payment processor actions -->
				@include($subscription_processor.'-subscribe::actions')
				@endif


			</div>

		</div>

	</div>
	@endif


	@include('layouts.footers.auth')
</div>
@endsection
@section('js')



<script src="https://js.stripe.com/v3/"></script>


<script>
	window.addEventListener('load', function(){

		const stripe = Stripe('{{ env('STRIPE_KEY') }}');
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
				console.log(error);
			} else {
				$(cardButton).attr("disabled", true);
				$('#payment_method').val(setupIntent.payment_method);
				$('#plan_stripe_id').val('{{ auth()->user()->plan->stripe_id }}');
				$("#stripe-payment-form").submit();
			};
		})
	})
</script>

@endsection
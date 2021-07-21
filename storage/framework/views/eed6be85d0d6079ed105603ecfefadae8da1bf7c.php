<?php $__env->startSection('content'); ?>

<div class="header bg-gradient-primary pb-8 pt-5 pt-md-8">
	<?php if(session()->has('alert')): ?>
	<div class="alert alert-warning mx-5" role="alert">
		<?php echo e(session()->get('alert')); ?>

	</div>
	<?php endif; ?>
</div>


<div class="container-fluid mt--7">

	<div class="row">

		<div class="col-12">
			<?php if(session('status')): ?>
			<div class="alert alert-success alert-dismissible fade show" role="alert">
				<?php echo e(session('status')); ?>

				<button type="button" class="close" data-dismiss="alert" aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
			</div>
			<?php endif; ?>

			<!-- Errors display -->
			<?php if(session('error')): ?>
			<div role="alert" class="alert alert-danger"><?php echo e(session('error')); ?></div>
			<?php endif; ?>

		</div>

		<?php $__currentLoopData = $plans; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $plan): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
		<div class="col-md-<?php echo e($col); ?>">
			<div class="card shadow">
				<div class="card-header border-0">
					<div class="row align-items-center">
						<div class="col-8">
							<h3 class="mb-0"><?php echo e($plan['name']); ?></h3>
						</div>
						<div class="col-4">
							<?php if(isset ( $coupon )): ?>
							<?php if( $plan['price'] > 0 && $coupon->percent_off > 0 && $coupon->amount_off == null): ?>
							<s class="mb-0"><?php echo money($plan['price'],
								config('settings.cashier_currency'),config('settings.do_convertion')); ?>/<?php echo e($plan['period']==1?__('m'):__('y')); ?>

							</s>
							<h3 class="mb-0"><?php echo money($plan['price'] - ($plan['price']*$coupon->percent_off/100),
								config('settings.cashier_currency'),config('settings.do_convertion')); ?>/<?php echo e($plan['period']==1?__('m'):__('y')); ?>

							</h3>
							<?php elseif( $plan['price'] > 0 && $coupon->percent_off == null && $coupon->amount_off > 0 ): ?>
							<s class="mb-0"><?php echo money($plan['price'],
								config('settings.cashier_currency'),config('settings.do_convertion')); ?>/<?php echo e($plan['period']==1?__('m'):__('y')); ?>

							</s>
							<h3 class="mb-0"><?php echo money($plan['price'] - ($coupon->amount_off/100),
								config('settings.cashier_currency'),config('settings.do_convertion')); ?>/<?php echo e($plan['period']==1?__('m'):__('y')); ?>

							</h3>
							<?php else: ?>
							<h3 class="mb-0"><?php echo money($plan['price'],
								config('settings.cashier_currency'),config('settings.do_convertion')); ?>/<?php echo e($plan['period']==1?__('m'):__('y')); ?>

							</h3>
							<?php endif; ?>
							<?php else: ?>
							<h3 class="mb-0"><?php echo money($plan['price'],
								config('settings.cashier_currency'),config('settings.do_convertion')); ?>/<?php echo e($plan['period']==1?__('m'):__('y')); ?>

							</h3>
							<?php endif; ?>
						</div>
					</div>
				</div>


				<?php if(count($plans)): ?>
				<div class="table-responsive">
					<table class="table align-items-center table-flush">
						<thead class="thead-light">
							<tr>
								<th scope="col"><?php echo e(__('Features')); ?></th>
							</tr>
						</thead>
						<tbody>
							<?php $__currentLoopData = explode(",",$plan['features']); $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $feature): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
							<tr>
								<td><?php echo e(__($feature)); ?> </td>
							</tr>
							<?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
						</tbody>
					</table>


				</div>
				<?php endif; ?>
				<div class="card-footer py-4">
					<?php if($currentPlan&&$plan['id'].""==$currentPlan->id.""): ?>
					<a href="" class="btn btn-primary disabled"><?php echo e(__('Current Plan')); ?></a>
					<?php else: ?>

					<!-- Button holder -->
					<div id="button-container-plan-<?php echo e($plan['id']); ?>"></div>



					<?php if(strlen($plan['stripe_id'])>2&&config('settings.subscription_processor')=='Stripe'): ?>
					<a href="<?php echo e(url('update/plan/'. $plan['id'] )); ?>"
						class="btn btn-primary"><?php echo e(__('Switch to ').$plan['name']); ?></a>
					<?php endif; ?>

					

					<!-- END TO BE REMOVED -->


					<?php endif; ?>
				</div>
			</div>
		</div>
		<?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
	</div>

	<div class="row mt-4">
		<div class="col-md-12">
			<div class="card bg-secondary shadow">
				<div class="card-header border-0">
					<div class="row align-items-center">
						<div class="col-8">
							<h3 class="mb-0"><?php echo e(__('Your Coupon')); ?></h3>
						</div>

					</div>
				</div>
				<div class="card-body">
					<form action="<?php echo e(url('/user/coupon')); ?>" method="post">
						<?php echo csrf_field(); ?>
						<div class="form-group<?php echo e($errors->has('coupon_code') ? ' has-danger' : ''); ?>">
							<label class="form-control-label" for="plan_id"><?php echo e(__('Coupon Code')); ?></label>
							<input type="text" name="coupon_code" id="coupon_code"
								class="form-control form-control-alternative<?php echo e($errors->has('coupon_code') ? ' is-invalid' : ''); ?>"
								placeholder="<?php echo e(__('Coupon Code')); ?> ..."
								value="<?php echo e(isset(auth()->user()->coupon_code)? auth()->user()->coupon_code : ""); ?>" autofocus>

							<?php if($errors->has('coupon_code')): ?>
							<span class="invalid-feedback" role="alert">
								<strong><?php echo e($errors->first('coupon_code')); ?></strong>
							</span>
							<?php endif; ?>
						</div>
						<div class="text-center">
							<button type="submit" class="btn btn-outline-success">Apply</button>
						</div>
						
					</form>
				</div>
			</div>
		</div>
	</div>



	<?php if(auth()->user()->plan_id != 1 && auth()->user()->plan_id != null): ?>
	<!-- Stripe Subscription form -->
	<div class="row mt-4" id="stripe-payment-form-holder">
		<div class="col-md-12">
			<div class="card bg-secondary shadow">
				<div class="card-header border-0">
					<div class="row align-items-center">
						<div class="col-8">
							<h3 class="mb-0"><?php echo e(__('Subscribe to')); ?> <span
									id="plan_name"><?php echo e(auth()->user()->plan->name); ?></span>
							</h3>
						</div>
					</div>
				</div>
				<div class="card-body" id="credit-card-body">
					<?php if(auth()->user()->card_last_four == null ): ?>
					<form action="<?php echo e(url('/user/subscribe')); ?>" method="post" id="stripe-payment-form">
						<?php echo csrf_field(); ?>
						<input id="card-holder-name" type="text" class="form-control" placeholder="Name"
							value="<?php echo e(auth()->user()->name); ?>">
						<br>


						<!-- Stripe Elements Placeholder -->
						<div id="card-element"></div>
						<br>
						<div class="row ">
							<div class="col-md-12">
								<button type="button" id="card-button" class="btn btn-success"
									data-secret="<?php echo e($intent->client_secret); ?>">
									Update Payment Method
								</button>

							</div>
							<div class="col-md-8 ">
								<input type="hidden" name="payment_method" id="payment_method">
								<input type="hidden" name="plan_stripe_id" id="plan_stripe_id">
							</div>
						</div>
					</form>
					<?php else: ?>
					<div style="display:flex">
						<h3 class="align-self-center">Card Already Added</h3>
						<span class="align-self-center ml-auto">Card Number: **** **** ****
							<?php echo e(auth()->user()->card_last_four); ?> </span>
						<a href="<?php echo e(route('user.remove.card')); ?>"
							class="btn btn-danger ml-auto text-white"><?php echo e(__('Remove')); ?></a>
					</div>
					<?php endif; ?>
				</div>
			</div>
		</div>
	</div>
	<?php endif; ?>
	<?php if($currentPlan): ?>

	<!-- Show Current form actions -->
	<div class="row mt-4">
		<div class="col-md-12">
			<div class="card bg-secondary shadow">
				<div class="card-header border-0">
					<div class="row align-items-center">
						<div class="col-8">
							<h3 class="mb-0"><?php echo e(__('Your current plan')); ?></h3>
						</div>

					</div>
				</div>
				<div class="card-body">
					<p><?php echo e(__('You are currently using the ').$currentPlan->name." ".__('plan')); ?><p>
							<?php if(strlen(auth()->user()->plan_status)>0): ?>
							<p><?php echo e(__('Status').": "); ?> <strong><?php echo e(auth()->user()->plan_status); ?></strong>
								<p>
									<?php endif; ?>
				</div>
				<?php if(strlen(auth()->user()->cancel_url)>5 && ( config('settings.subscription_processor') == "Stripe")): ?>
				<div class="card-footer py-4">
					<a href="<?php echo e(auth()->user()->update_url); ?>" target="_blank"
						class="btn btn-warning"><?php echo e(__('Update subscription')); ?></a>
					<a href="<?php echo e(auth()->user()->cancel_url); ?>" target="_blank"
						class="btn btn-danger"><?php echo e(__('Cancel subscription')); ?></a>
				</div>
				<?php endif; ?>

				<?php if(!(config('settings.subscription_processor') == "Stripe" ||
				config('settings.subscription_processor') == "Local")): ?>
				<!-- Payment processor actions -->
				<?php echo $__env->make($subscription_processor.'-subscribe::actions', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
				<?php endif; ?>


			</div>

		</div>

	</div>
	<?php endif; ?>


	<?php echo $__env->make('layouts.footers.auth', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
</div>
<?php $__env->stopSection(); ?>
<?php $__env->startSection('js'); ?>



<script src="https://js.stripe.com/v3/"></script>


<script>
	window.addEventListener('load', function(){

		const stripe = Stripe('<?php echo e(env('STRIPE_KEY')); ?>');
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
				$('#plan_stripe_id').val('<?php echo e(auth()->user()->plan->stripe_id); ?>');
				$("#stripe-payment-form").submit();
			};
		})
	})
</script>

<?php $__env->stopSection(); ?>
<?php echo $__env->make('layouts.app', ['title' => __('Pages')], \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH /home/admin/web/lerepass.com/public_html/resources/views/plans/current.blade.php ENDPATH**/ ?>
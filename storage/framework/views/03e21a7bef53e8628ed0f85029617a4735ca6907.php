
<?php if(strlen(config('settings.recaptcha_site_key'))>2): ?>
<?php $__env->startSection('head'); ?>
<?php echo htmlScriptTagJsApi([]); ?>

<?php $__env->stopSection(); ?>
<?php endif; ?>

<?php $__env->startSection('content'); ?>
<?php echo $__env->make('users.partials.header', [
'title' => "",
], \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
<div class="container-fluid mt--7 mb-5">
    <div class="row">

    </div>
    <div class="col-xl-8 offset-xl-2">
        <div class="card bg-secondary shadow">
            <div class="card-header bg-white border-0">
                <div class="row align-items-center">
                    <h3 class="col-12 mb-0"><?php echo e(__('Add your Card (Optional) ')); ?></h3>
                </div>
            </div>
            <div class="card-body" id="credit-card-body">
                <div class="card-body">
                    
                    <input id="card-holder-name" type="text" class="form-control" placeholder="Name">
                    <br>
                    <!-- Stripe Elements Placeholder -->
                    <div id="card-element"></div>
                    <br>
                    
                    <button id="card-button" class="btn btn-success" data-secret="<?php echo e($intent->client_secret); ?>">
                        Update Payment Method
                    </button>
                    
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
    const stripe = Stripe('<?php echo e(env('STRIPE_KEY')); ?>');
    const plan_stripe_id = '<?php echo e($plan_stripe_id); ?>';
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
            user_id: '<?php echo e($user_id); ?>',
            plan_trial_days: '<?php echo e($plan_trial_days); ?>',
            coupon_code: '<?php echo e($coupon_code); ?>',
        }).then( (response) => { 
            if (response.data.data == 'success') {
                window.location.href = '/register/done';
            }
        })  
    }
});

});
</script>

<?php $__env->stopSection(); ?>

<?php $__env->startSection('js'); ?>
<?php if(isset($_GET['name'])&&$errors->isEmpty()): ?>
<script>
    "use strict";
    document.getElementById("thesubmitbtn").click();
</script>

<?php endif; ?>
<?php $__env->stopSection(); ?>
<?php echo $__env->make('layouts.front', ['title' => __('User Profile')], \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH /home/admin/web/lerepass.com/public_html/resources/views/restorants/payment.blade.php ENDPATH**/ ?>
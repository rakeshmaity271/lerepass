<?php if(strlen(config('settings.recaptcha_site_key'))>2): ?>
<?php $__env->startSection('head'); ?>
<?php echo htmlScriptTagJsApi([]); ?>

<?php $__env->stopSection(); ?>
<?php endif; ?>

<?php $__env->startSection('content'); ?>
<?php echo $__env->make('users.partials.header', [
'title' => "",
], \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
<!--new registration page-->
<main>
    <!-- Hero 1 -->
    <section class="section-header register-section">
        <div class="row d-flex no-gutters w-100">
            <div class="col-12 col-md-6 py-5">
                <div class="form-section">
                    <h2><?php echo e(__('Register your restaurant')); ?></h2>
                    <div class="mt-5">
                        <form id="registerform" class="d-flex flex-column mb-5 mb-lg-0" method="post" action="<?php echo e(route('newrestaurant.store')); ?>" autocomplete="off">
                            <?php echo csrf_field(); ?>
                            <?php if(session('status')): ?>
                                <div class="alert alert-success alert-dismissible fade show" role="alert">
                                    <?php echo e(session('status')); ?>

                                    <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                                        <span aria-hidden="true">&times;</span>
                                    </button>
                                </div>
                            <?php endif; ?>
                            <h5><?php echo e(__('Business information')); ?></h5>
                            <input
                                class="form-control <?php echo e($errors->has('name') ? ' is-invalid' : ''); ?>"
                                type="text"
                                name="name"
                                id="name"
                                placeholder="<?php echo e(__('Business Name')); ?>"
                                value="<?php echo e(isset($_GET["name"])?$_GET['name']:""); ?>"
                                required autofocus
                            >
                            <?php if($errors->has('name')): ?>
                            <span class="invalid-feedback" role="alert">
                                <strong><?php echo e($errors->first('name')); ?></strong>
                            </span>
                            <?php endif; ?>
                            <h5><?php echo e(__('Owner information')); ?></h5>
                            <input
                                class="form-control <?php echo e($errors->has('name_owner') ? ' is-invalid' : ''); ?>"
                                type="text"
                                name="name_owner"
                                id="name_owner"
                                placeholder="<?php echo e(__('Full Name')); ?>"
                                value="<?php echo e(isset($_GET["name"])?$_GET['name']:""); ?>"
                                required autofocus
                            >
                            <?php if($errors->has('name_owner')): ?>
                            <span class="invalid-feedback" role="alert">
                                <strong><?php echo e($errors->first('name_owner')); ?></strong>
                            </span>
                            <?php endif; ?>
                            <input
                                class="form-control <?php echo e($errors->has('email_owner') ? ' is-invalid' : ''); ?>"
                                type="email"
                                name="email_owner"
                                id="email_owner"
                                placeholder="<?php echo e(__('Email')); ?>"
                                value="<?php echo e(isset($_GET["email"])?$_GET['email']:""); ?>"
                                required autofocus
                            >
                            <?php if($errors->has('email_owner')): ?>
                            <span class="invalid-feedback" role="alert">
                                <strong><?php echo e($errors->first('email_owner')); ?></strong>
                            </span>
                            <?php endif; ?>
                            <input
                                class="form-control <?php echo e($errors->has('password') ? ' is-invalid' : ''); ?>"
                                type="text"
                                name="password"
                                id="password"
                                placeholder="<?php echo e(__('Password')); ?>"
                                value="<?php echo e(isset($_GET["password"])? $_GET['password']:""); ?>"
                                required autofocus
                            >
                            <input
                                class="form-control <?php echo e($errors->has('password_confirm') ? ' is-invalid' : ''); ?>"
                                type="text"
                                name="confirm_password"
                                id="confirm_password"
                                placeholder="<?php echo e(__('Confirm Password')); ?>"
                                value="<?php echo e(isset($_GET["confirm_password"])? $_GET['confirm_password']:""); ?>"
                                required autofocus
                            >

                            
                            <div class="text-center my-5">
                                <?php if(strlen(config('settings.recaptcha_site_key'))>2): ?>
                                    <?php if($errors->has('g-recaptcha-response')): ?>
                                    <span class="invalid-feedback" role="alert">
                                        <strong><?php echo e($errors->first('g-recaptcha-response')); ?></strong>
                                    </span>
                                    <?php endif; ?>
                                <?php echo htmlFormButton(__('Save'), ['id'=>'thesubmitbtn','class' => 'btn btn-success mt-4']); ?>

                                <?php else: ?>
                                <button type="submit" id="thesubmitbtn" class="btn btn-primary register-btn"><?php echo e(__('Register')); ?></button>
                                <?php endif; ?>
                             
                            </div>
                            

                        </form>
                    </div>
                </div>
            </div>
            <div class="col-12 col-md-6 img-wrp d-flex align-items-center">
                <div class="img-section">
                     <h2>a few lines of the text here selling the product</h2>
                    <img src="https://www.lerepass.com/public/impactfront/img/flayer.png" alt="">
                </div>
            </div>
        </div>
    </section>
</main>
<!--new registration page-->
<br />
</div>
<?php $__env->stopSection(); ?>

<?php $__env->startSection('js'); ?>
<?php if(isset($_GET['name'])&&$errors->isEmpty()): ?>
<script>
    "use strict";
    document.getElementById("thesubmitbtn").click();
</script>
<?php endif; ?>
<?php $__env->stopSection(); ?>

<?php echo $__env->make('layouts.front', ['title' => __('User Profile')], \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\xampp\htdocs\lerepass\resources\views/restorants/register.blade.php ENDPATH**/ ?>



<?php $__env->startSection('content'); ?>

<section class="section-profile-cover section-shaped grayscale-05 d-none d-md-none d-lg-block d-lx-block">
    <!-- Circles background -->
    <img class="bg-image" loading="lazy" src="<?php echo e($restorant->coverm); ?>" style="width: 100%;">
    <!-- SVG separator -->
    <div class="separator separator-bottom separator-skew">
        <svg x="0" y="0" viewBox="0 0 2560 100" preserveAspectRatio="none" version="1.1"
            xmlns="http://www.w3.org/2000/svg">
            <polygon class="fill-white" points="2560 0 2560 100 0 100"></polygon>
        </svg>
    </div>
</section>
<section class="select-seat">
    <div class="text-center select-seat-body">
        <h2>Select Your Seat !</h2>
    </div>
    <div class="text-center ">
        <form action="/restaurant/choose_table" method="post">
            <?php echo csrf_field(); ?>
            <input type="hidden" name="alias" value="<?php echo e($alias); ?>">
            <input type="hidden" name="res_id" value="<?php echo e($restorant->id); ?>">
            <div class="my-4 <?php echo e($errors->has('table_id') ? ' has-danger has-error ' : ''); ?>">
                <select name="table_id" class="form-select ">
                    <option value="" disabled selected>Select Table</option>
                    <?php $__currentLoopData = $restorant->tables; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $table): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                    <option value="<?php echo e($table->id); ?>"><?php echo e($table->restoarea->name); ?> - <?php echo e($table->name); ?></option>
                    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                </select>
            </div>
            <?php if($errors->has('table_id')): ?>
            <span class="text-danger" role="alert">
                <strong><?php echo e($errors->first('table_id')); ?></strong>
            </span>
            <?php endif; ?>
            <div class="my-4">
                <button type="submit" class="btn btn-outline-success">Continue</button>
            </div>

        </form>

    </div>
</section>
<style>
    .select-seat {
        height: 45vh;
    }

    @media (max-width: 991px) {
        .select-seat {
            height: 50vh;
        }
        .select-seat-body{
            margin-top: calc(30vh + 10px)
        }
    }

    .has-error .form-control {
        border-color: #a94442;
        -webkit-box-shadow: inset 0 1px 1px rgba(0, 0, 0, .075);
        box-shadow: inset 0 1px 1px rgba(0, 0, 0, .075);
    }
</style>
<?php echo $__env->make('layouts.front', ['class' => ''], \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH /home/admin/web/lerepass.com/public_html/resources/views/restorants/choose_table.blade.php ENDPATH**/ ?>
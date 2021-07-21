 <!-- DEMO -->
 <section id="demo" class="section section-lg pb-5 bg-soft">
    <div class="container">
        <div class="row">
            <div class="col-12 text-center mb-5">
            <i class="fas fa-edit mr-2 text-primary ckedit_btn" type="button" style="display: none"></i><h2 class="mb-4 ckedit" key="demo_title" id="demo_title"><?php echo e(__('qrlanding.demo_title')); ?></h2>
            <i class="fas fa-edit mr-2 text-primary ckedit_btn" type="button" style="display: none"></i><p class="lead mb-5 ckedit" key="demo_subtitle" id="demo_subtitle"><?php echo e(__('qrlanding.demo_subtitle') . " "); ?><span class="font-weight-bolder"><?php echo e(__('qrlanding.qr_code')); ?></span> <?php echo e(__('qrlanding.below')); ?>!</p>
                <a href="#" class="icon icon-lg text-gray mr-3">
                    <img style="width:300px" src="<?php echo e(asset('impactfront')); ?>/img/qrdemo.jpg" />

                </a>

            </div>
            <div class="col-12 text-center">
                <!-- Button Modal -->
                <a href="<?php echo e(route('newrestaurant.register')); ?>" class="btn btn-secondary animate-up-2"><span class="mr-2"><i class="fas fa-hand-pointer"></i></span><?php echo e(__('qrlanding.demo_button')); ?></a>
            </div>
        </div>
    </div>
</section>
<?php /**PATH /home/admin/web/lerepass.com/public_html/resources/views/qrsaas/partials/demo.blade.php ENDPATH**/ ?>
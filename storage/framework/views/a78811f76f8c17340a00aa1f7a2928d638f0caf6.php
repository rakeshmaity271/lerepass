<?php if(!config('settings.hide_cod')): ?>
    <div class="text-center" id="totalSubmitCOD"  style="display: <?php echo e(config('settings.default_payment')=="cod"&&!config('settings.hide_cod')?"block":"none"); ?>;" >
        <button
            v-if="totalPrice"
            type="submit"
            class="btn btn-success mt-4 paymentbutton"
            onclick="this.disabled=true;this.form.submit();"
        ><?php echo e(__('Place order')); ?></button>
    </div>
<?php endif; ?>
<?php /**PATH /home/admin/web/lerepass.com/public_html/resources/views/cart/payments/cod.blade.php ENDPATH**/ ?>
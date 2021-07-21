<button
    id="checkout-<?php echo e($sessionId); ?>"
    role="link"
    style="<?php echo e(isset($style) && ! isset($class) ? $style : 'background-color:#6772E5;color:#FFF;padding:8px 12px;border:0;border-radius:4px;font-size:1em'); ?>"
    <?php if(isset($class)): ?> class="<?php echo e($class); ?>" <?php endif; ?>
>
    <?php echo e($label); ?>

</button>

<div id="error-message"></div>

<script>
    (() => {
        const checkoutButton = document.getElementById('checkout-<?php echo e($sessionId); ?>');

        checkoutButton.addEventListener('click', function () {
            Stripe('<?php echo e($stripeKey); ?>').redirectToCheckout({
                sessionId: '<?php echo e($sessionId); ?>'
            }).then(function (result) {
                if (result.error) {
                    document.getElementById('error-message').innerText = result.error.message;
                }
            });
        });
    })()
</script>
<?php /**PATH /home/admin/web/lerepass.com/public_html/vendor/laravel/cashier/resources/views/checkout.blade.php ENDPATH**/ ?>
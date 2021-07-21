<!DOCTYPE html>
<html lang="<?php echo e(str_replace('_', '-', app()->getLocale())); ?>">
    <head>
       
    </head>
    <body>
    <li class="nav-item">
        <a class="btn btn-success btn-sm ml-3" href="<?php echo e(route('cart.checkout')); ?>">
            <i class="fa fa-shopping-cart"></i>
            <span class="badge badge-light"><?php echo e(Cart::getTotalQuantity()); ?></span>
        </a>
    </li>
    </body>
</html><?php /**PATH /home/admin/web/lerepass.com/public_html/resources/views/layouts/navbars/cartTotal.blade.php ENDPATH**/ ?>
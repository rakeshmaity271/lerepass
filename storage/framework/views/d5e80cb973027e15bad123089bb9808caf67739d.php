<sitemap>
    <?php if(! empty($tag->url)): ?>
    <loc><?php echo e(url($tag->url)); ?></loc>
    <?php endif; ?>

    <?php if(! empty($tag->lastModificationDate)): ?>
    <lastmod><?php echo e($tag->lastModificationDate->format(DateTime::ATOM)); ?></lastmod>
    <?php endif; ?>
</sitemap>
<?php /**PATH /home/admin/web/lerepass.com/public_html/vendor/spatie/laravel-sitemap/resources/views/sitemapIndex/sitemap.blade.php ENDPATH**/ ?>
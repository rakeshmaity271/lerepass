<?php $__env->startSection('content'); ?>
    <div class="header bg-gradient-primary pb-8 pt-5 pt-md-8">
    </div>

    <div class="container-fluid mt--7">
        <div class="row">
            <div class="col">
                <div class="card shadow">
                    <div class="card-header border-0">
                        <div class="row align-items-center">
                            <div class="col-8">
                                <h3 class="mb-0"><?php echo e(__('Users')); ?></h3>
                            </div>
                            <div class="col-4 text-right">
                                <a href="<?php echo e(route('user.create')); ?>" class="btn btn-sm btn-primary"><?php echo e(__('Add user')); ?></a>
                            </div>
                        </div>
                    </div>
                    
                    <div class="col-12">
                        <?php echo $__env->make('partials.flash', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
                    </div>

                    <div class="table-responsive">
                        <table class="table align-items-center table-flush">
                            <thead class="thead-light">
                                <tr>
                                    <th scope="col"><?php echo e(__('Name')); ?></th>
                                    <th scope="col"><?php echo e(__('Email')); ?></th>
                                    <th scope="col"><?php echo e(__('Creation Date')); ?></th>
                                    <th scope="col"></th>
                                </tr>
                            </thead>
                            <tbody>
                                <?php $__currentLoopData = $users; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $user): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                    <tr>
                                        <td><?php echo e($user->name); ?></td>
                                        <td>
                                            <a href="mailto:<?php echo e($user->email); ?>"><?php echo e($user->email); ?></a>
                                        </td>
                                        <td><?php echo e($user->created_at->format(config('settings.datetime_display_format'))); ?></td>
                                        <td class="text-right">
                                            <div class="dropdown">
                                                <a class="btn btn-sm btn-icon-only text-light" href="#" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                    <i class="fas fa-ellipsis-v"></i>
                                                </a>
                                                <div class="dropdown-menu dropdown-menu-right dropdown-menu-arrow">
                                                    <?php if($user->id != auth()->id()): ?>
                                                        <form action="<?php echo e(route('user.destroy', $user)); ?>" method="post">
                                                            <?php echo csrf_field(); ?>
                                                            <?php echo method_field('delete'); ?>
                                                            
                                                            <a class="dropdown-item" href="<?php echo e(route('user.edit', $user)); ?>"><?php echo e(__('Edit')); ?></a>
                                                            <button type="button" class="dropdown-item" onclick="confirm('<?php echo e(__("Are you sure you want to delete this user?")); ?>') ? this.parentElement.submit() : ''">
                                                                <?php echo e(__('Delete')); ?>

                                                            </button>
                                                        </form>    
                                                    <?php else: ?>
                                                        <a class="dropdown-item" href="<?php echo e(route('profile.edit')); ?>"><?php echo e(__('Edit')); ?></a>
                                                    <?php endif; ?>
                                                </div>
                                            </div>
                                        </td>
                                    </tr>
                                <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                            </tbody>
                        </table>
                    </div>
                    <div class="card-footer py-4">
                        <nav class="d-flex justify-content-end" aria-label="...">
                            <?php echo e($users->links()); ?>

                        </nav>
                    </div>
                </div>
            </div>
        </div>
            
        <?php echo $__env->make('layouts.footers.auth', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
    </div>
<?php $__env->stopSection(); ?>
<?php echo $__env->make('layouts.app', ['title' => __('User Management')], \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH /home/admin/web/lerepass.com/public_html/resources/views/users/index.blade.php ENDPATH**/ ?>
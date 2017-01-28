<?php $__env->startSection('content'); ?>
    <table class="table table-striped">
        <thead>
            <tr>
                <th>ID</th>
                <th>Content</th>
                <th></th>
                <th>Created at</th>
                <th>Updated at</th>
                <th></th>
            </tr>
        </thead>
        <tbody>
    <?php $__currentLoopData = $messages; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $message): $__env->incrementLoopIndices(); $loop = $__env->getFirstLoop(); ?>
            <tr>
                <td><?php echo e($message->id); ?></td>
                <td class="content"><?php echo e($message->content); ?></td>
                <td><a href="/edit/<?php echo e($message->id); ?>">edit</a></td>
                <td><?php echo e($message->created_at); ?></td>
                <td><?php echo e($message->updated_at); ?></td>
                <td><a href="/delete/<?php echo e($message->id); ?>">X</a></td>
            </tr>
    <?php endforeach; $__env->popLoop(); $loop = $__env->getFirstLoop(); ?>
        </tbody>
    </table>

    <a href="/new" class="btn btn-default" style="margin: auto">New Message</a>
<?php $__env->stopSection(); ?>
<?php echo $__env->make('layouts.app', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>
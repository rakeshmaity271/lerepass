<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Subscription extends Model
{
    protected $table = 'subscriptions';
    public function user()
    {
        return $this->belongsTo(\App\User::class, 'user_id');
    }
}

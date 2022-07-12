<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class service_type extends Model
{
    use HasFactory;
    protected $fillable = ['service_name','helper','image','status'];
    protected $table = 'ust_service_type';
}

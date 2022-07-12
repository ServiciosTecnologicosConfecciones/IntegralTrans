<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class vehicle extends Model
{
    use HasFactory;
    protected $fillable = ['id_rnt','trademark','line','color','plate','model','passenger_capacity','image','helper','status'];
    protected $table = 'ust_vehicle';
}

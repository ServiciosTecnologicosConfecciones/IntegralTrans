<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class places extends Model
{
    use HasFactory;
    protected $fillable = ['place_name','id_department','status'];
    protected $table = 'ust_place';
}

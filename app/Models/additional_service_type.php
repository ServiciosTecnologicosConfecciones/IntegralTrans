<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Additional_service_type extends Model
{
    use HasFactory;
    protected $table = "ust_additional_service_type";
    protected $fillable = [
        'additional_service_name',
        'price',
        'image',
        'helper',
    ];
}


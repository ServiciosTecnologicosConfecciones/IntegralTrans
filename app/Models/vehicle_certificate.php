<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class vehicle_certificate extends Model
{
    use HasFactory;
    protected $fillable = ['id_vehicle','issuing_agency','certificate_type','certificate_number','expiration_date','image','helper','status'];
    protected $table = 'ust_vehicle_certificate';
}

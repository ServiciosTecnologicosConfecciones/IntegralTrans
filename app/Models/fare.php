<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class fare extends Model
{
    use HasFactory;
    protected $fillable = ['id_service_type','id_vehicle_type','id_location','id_destination','price','measurement_unit','distance','helper','status'];
    protected $table = 'ust_fare';
}

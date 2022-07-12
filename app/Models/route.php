<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class route extends Model
{
    use HasFactory;
    protected $fillable = ['id_service_type','location','destination','status'];
    protected $table = 'ust_route';
}

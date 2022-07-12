<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class rnt extends Model
{
    use HasFactory;
    protected $fillable = ['id_business','code','expedition_date','expedition_date','helper','status'];
    protected $table = 'ust_rnt';
}

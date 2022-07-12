<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class contact extends Model
{
    use HasFactory;
    protected $fillable = ['id_business', 'email', 'name', 'cell_phone', 'message'];
    protected $table = 'ust_contact_us';
}

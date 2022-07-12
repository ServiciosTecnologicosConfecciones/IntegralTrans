<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class client extends Model
{
    use HasFactory;
    protected $fillable = ['name', 'last_name', 'id_document_type','document_id','email','cell_phone','address','photo'];
    protected $table = 'ust_client';

}

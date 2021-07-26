<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class TPesananDetail extends Model
{
    use HasFactory;
    protected $table = 't_pesanan_detail';
    protected $primaryKey = 'id';
    public $incrementing = true;
    public $timestamps = true;
}

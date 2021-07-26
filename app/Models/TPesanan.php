<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class TPesanan extends Model
{
    use HasFactory;
    protected $table = 't_pesanan';
    protected $primaryKey = 'id';
    public $incrementing = true;
    public $timestamps = true;
}

<?php

namespace App\Models\Nomenclators;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Image extends Model
{
    // use HasFactory, SoftDeletes;
    use HasFactory;

    protected $table = 'images';

    protected $dates = ['deleted_at'];

    protected $fillable = [
        'name',
    ];
}

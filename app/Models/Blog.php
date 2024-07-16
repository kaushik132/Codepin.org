<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Blog extends Model
{

    protected $primaryKey = 'id';
    protected $table = 'blogs';
    public function blogCategory(){

        return $this->belongsTo(BlogCategory::class,'category_id');
    }

}

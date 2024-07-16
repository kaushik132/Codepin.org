<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class BlogCategory extends Model
{
    protected $primaryKey = 'id';
    protected $table = 'blog_category';

    public function blogs(){

        return $this->hasMany(Blog::class,'category_id');
    }
}

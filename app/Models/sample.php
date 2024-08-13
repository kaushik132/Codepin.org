<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class sample extends Model
{
    protected $table = 'sample';
    public function sampleCategory(){

        return $this->belongsTo(ServiceCategory::class, 'category');
        
      }
}

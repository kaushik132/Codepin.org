<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Service extends Model
{

protected $primaryKey = 'id';
protected $table = 'services';

  public function serviceCategory(){

    return $this->belongsTo(ServiceCategory::class, 'service_category_id');
    
  }


}

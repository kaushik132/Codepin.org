<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class ServiceCategory extends Model
{
    protected $primaryKey = 'id';
    protected $table = 'service_category';
 
    public function services()
    {
        return $this->hasMany(Service::class,'service_category_id');
    }


}

<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Orders extends Model
{
    protected $table = 'orders';
    protected $fillable = ['vendor_id','tags_id','nama_vendor','nama_tags','created_at','updated_at'];

    public function vendor(){
    	return $this->belongsTo(Vendor::class, "vendor_id");
    }

}

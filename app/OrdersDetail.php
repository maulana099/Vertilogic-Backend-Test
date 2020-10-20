<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class OrdersDetail extends Model
{
    protected $table = 'orders_detail';
    // protected $fillable = ['id_vendor','id_tags','nama_vendor','nama_tags','created_at','updated_at'];

    public function tag(){
    	return $this->hasMany(Tag::class, "id", "tags_id");
    }


}

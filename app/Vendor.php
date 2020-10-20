<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Vendor extends Model
{
	// tambahan
	protected $table = 'vendors';
    protected $fillable = ['name','logo','created_at','updated_at'];

    public function tags()
    {   
        return $this->morphToMany('App\Tag', 'taggable');
    }
    
}

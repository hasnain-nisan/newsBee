<?php

namespace App;

use App\User;
use Illuminate\Database\Eloquent\Model;

class News extends Model
{
    protected $fillable = [
        'status', 'user_id', 'author', 'title', 'description', 'url', 'source', 'image', 'category', 'language', 'country', 'published_at',
    ];

    public function user()
    {
        return $this->belongsTo(User::class);
    }
}



<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Media extends Model
{
    protected $table = 'media';

    protected $fillable = ['character_id', 'bg_image', 'description_image', 'battle_image'];

    
    public function character() {
        return $this->belongsTo(Character::class, 'character_id');
    }
}

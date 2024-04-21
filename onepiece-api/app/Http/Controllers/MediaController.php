<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Media;

class MediaController extends Controller
{
    // 根据characterId显示媒体信息
    public function show($characterId) {
        $media = Media::where('character_id', $characterId)->first();

        if($media) {
            return response()->json($media);
        } else {
            return response()->json(['message' => 'Media not found'], 404);
        }
    }
}

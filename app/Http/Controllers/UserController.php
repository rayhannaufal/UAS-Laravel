<?php

namespace App\Http\Controllers;

use App\Models\Post;

class UserController extends Controller
{
    public function index()
    {
        $posts = Post::latest()->get();

        return view('index',compact('posts'), [
            'title' => 'post'
        ]);
    }

    public function show($id)
    {
        return view('show',[
            'title' => '',
            'post' => Post::findOrFail($id)
        ]);
    }
}

@extends('layout.main')

@section('container')
    <h1 class="text-center my-4 fw-normal" >All Posts</h1>
    <div class="row justify-content-center">
        @if ($posts->count())
        <div class="col-md-8">
            <div class="card mb-3">
                <img src="/image/{{$posts[0]->image}}" class="card-img">
                <div class="card-body">
                    <h5 class="card-title">{{$posts[0]->judul}}</h5>
                    <p class="card-text">{!! Str::limit($posts[0]->isi, 300) !!}</p>
                    <a href="/users/{{$posts[0]->id}}">Read more</a>
                </div>
            </div>
        </div>
        @endif
    </div>
    <div class="row justify-content-center">
        @foreach ($posts->skip(1) as $post )
        <div class="col-md-4 mb-3">
            <a href="{{ "users/$post->id" }}">
                <div class="card text-light">
                    <img src="/image/{{$post->image}}" height="250px" class="card-img">
                    <div class="card-img-overlay d-flex align-items-center p-0">
                        <h5 class="card-title text-center flex-fill p-4" style="background-color: rgba(0, 0, 0, 0.7);">{{$post->judul}}</h5>
                    </div>
                </div>
            </a>
        </div>
        @endforeach
    </div>
@endsection

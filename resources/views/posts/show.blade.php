@extends('posts.layout.main')

@section('container')

    <div class="row">

        <h1 class="my-3">{{$post->judul}}</h1>
        <div class="col-md-10">
            <div class="form-group">
                <strong>Category</strong>
                <p>{{ $post->category->nama}}</p>
            </div>
        </div>
        <div class="col-md-10 mb-3">
            <div class="form-group">
                <img class="img-thumbnail" width="500px" src="/image/{{$post->image}}">
            </div>
        </div>
        <div class="col-md-10">
            <div class="form-group">
                <p>
                    {!! $post->isi !!}
                </p>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-lg-12 margin-tb mb-3">
            <div>
                <a class="btn btn-success" href="{{ route('posts.index') }}"><i class="bi bi-back"></i> Back</a>
            </div>
        </div>
    </div>
@endsection

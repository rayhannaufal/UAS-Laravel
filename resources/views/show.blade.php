@extends('layout.main')

@section('container')
    <div class="row">

        <div class="col-md-12">
            <h1 class="fw-normal" >{{$post->judul}}</h1>
            <div class="form-group">
                <strong>Category</strong>
                <p><a href="/categories/{{$post->category->id}}">{{ $post->category->nama}}</a></p>
            </div>
        </div>
        <div class="col-md-12 mb-3">
            <div class="form-group">
                <img class="img-thumbnail" width="500px" src="/image/{{$post->image}}">
            </div>
        </div>
        <div class="col-md-12 mb-3">
            <div class="form-group">
                <article class="">
                    {!! $post->isi !!}
                </article>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-md-12 ">
            <div>
                <a class="btn btn-success mb-3" href="/users"><i class="bi bi-back"></i> Back</a>
            </div>
        </div>
    </div>
@endsection

@extends('layout.main')

@section('container')
    <h1 class="text-center my-4 fw-normal">Post Categories</h1>
    <div class="row justify-content-center">
        @foreach ($categories as $category)
        <div class="col-md-4 mb-3">
            <a href="{{"categories/$category->id"}}">
                <div class="card text-light">
                    <img src="https://source.unsplash.com/500x500?{{$category->nama}}" class="card-img" alt="{{$category->nama}}">
                    <div class="card-img-overlay d-flex align-items-center p-0">
                        <h5 class="card-title text-center flex-fill p-4" style="background-color: rgba(0, 0, 0, 0.7);">{{$category->nama}}</h5>
                    </div>
                </div>
            </a>
        </div>
        @endforeach
    </div>

@endsection

@extends('posts.layout.main')

@section('container')
<div class="row  mt-5">
    <h1>My Posts</h1>

    <div class="row ">
        <div class="col-md-8">
            @if ($message = Session::get('success'))
                <div class="alert alert-success">
                    <p>{{ $message }}</p>
                </div>
            @endif
            <table class="table">
                <thead>
                    <tr>
                        <th>#</th>
                        <th>Title</th>
                        <th>Category</th>
                        <th>Action</th>
                    </tr>
                </thead>
                @php
                    $i = 0
                @endphp
                @foreach ($posts as $post)
                <tr>
                    <td>{{ ++$i }}</td>
                    <td>{{ $post->judul }}</td>
                    <td>{{ $post->category->nama }}</td>
                    <td>
                        <form action="{{ route('posts.destroy',$post->id) }}" method="POST">
                            <div class="btn-group">
                                <a class="btn btn-warning" href="{{ route('posts.show',$post->id) }}"><span data-feather="eye" class="align-middle"></span></a>
                                <a class="btn btn-info" href="{{ route('posts.edit',$post->id) }}"><span data-feather="edit" class="align-middle"></span></a>
                                @csrf
                                @method('DELETE')
                                <button type="submit" class="btn text-dark btn-danger"><span data-feather="trash-2" class="align-middle"></span></button>
                            </div>
                        </form>
                    </td>
                </tr>
                @endforeach
            </table>
        </div>
    </div>
@endsection

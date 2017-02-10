@extends('layouts.app')
@section('content')
@if (session('success'))
    <div class="alert alert-success">
        {{ session('success') }}
    </div>
@elseif (session('error'))
    <div class="alert alert-danger">
        {{ session('error') }}
    </div>
@endif
    <table class="table table-striped">
        <thead>
            <tr>
                <th>ID</th>
                <th>auteur</th>
                <th>Content</th>
                <th></th>
                <th>Created at</th>
                <th>Updated at</th>
                <th></th>
            </tr>
        </thead>
        <tbody>
    @foreach($messages as $message)
            <tr>
                <td>{{$message->id}}</td>
                <td>{{$message->author}}</td>
                <td class="content">{{$message->content}}</td>
                @if ( Auth::user() && $message->author == Auth::user()->name)
                            <td><a href="/edit/{{$message->id}}">edit</a></td>
                            <td>{{$message->created_at}}</td>
                            <td>{{$message->updated_at}}</td>
                            <td><a href="/delete/{{$message->id}}">X</a></td>
                @else
                            <td></td>
                            <td>{{$message->created_at}}</td>
                            <td>{{$message->updated_at}}</td>
                            <td></td>
                
                @endif
            </tr>
    @endforeach
        </tbody>
    </table>

    <a href="/new" class="btn btn-default" style="margin: auto">New Message</a>
@endsection
@extends('layouts.app')
@section('content')
    <table class="table table-striped">
        <thead>
            <tr>
                <th>ID</th>
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
                <td class="content">{{$message->content}}</td>
                <td><a href="/edit/{{$message->id}}">edit</a></td>
                <td>{{$message->created_at}}</td>
                <td>{{$message->updated_at}}</td>
                <td><a href="/delete/{{$message->id}}">X</a></td>
            </tr>
    @endforeach
        </tbody>
    </table>

    <a href="/new" class="btn btn-default" style="margin: auto">New Message</a>
@endsection
@extends('layouts.app')
@section('content')

    <div class="container">
        <div class="row">
            <div class="col-md-8 col-md-offset-2">
                <div class="panel panel-default">
                    <div class="panel-heading">Edit Message</div>
                    <div class="panel-body">
                        <form class="form-horizontal" role="form" method="POST" action="{{ url('/edit/{id}') }}">
                            {{ csrf_field() }}

                            <div class="form-group">
                                <label for="content" class="col-md-4 control-label">Message</label>

                                <div class="col-md-6">
                                    <textarea class="form-control" rows="5" id="content" name="content" style="resize: none;" required>@foreach($messages as $message){{$message->content}}@endforeach</textarea>
                                </div>
                            </div>

                            <div class="form-group">
                                <div class="col-md-8 col-md-offset-4">
                                    <button type="submit" class="btn btn-primary">
                                        Edit
                                    </button>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection
@extends('layouts.app')
@section('content')

    <div class="container">
        <div class="row">
            <div class="col-md-8 col-md-offset-2">
                <div class="panel panel-default">
                    <div class="panel-heading">New Message</div>
                    <div class="panel-body">
                        <form class="form-horizontal" role="form" method="POST" action="{{ url('/new') }}">
                            {{ csrf_field() }}

                            <div class="form-group">
                                <label for="content" class="col-md-4 control-label">Message</label>

                                <div class="col-md-6">
                                    <textarea class="form-control" rows="5" id="content" name="content" placeholder="Write your message here..." style="resize: none;" required></textarea>
                                    <input type="hidden" name="author" value="{{ Auth::user()->name }}">
                                </div>
                            </div>

                            <div class="form-group">
                                <div class="col-md-8 col-md-offset-4">
                                    <button type="submit" class="btn btn-primary">
                                        Submit
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
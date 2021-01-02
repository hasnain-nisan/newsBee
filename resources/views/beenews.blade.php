@extends('layouts.app')

@section('content')
    <div class="container">
        <div class="row">
        
            <div class="col-md-12 mt-3 mb-5 flex justify-content-center">
                <div class="col-md-6">
                    <h4 class="mr-3">Search Beenews...</h4>
                    </div>
                <div class="col-md-6">
                    <form action="{{ route('beenews.search') }}" class="form-inline my-2 my-lg-0" method="get">
                        <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search" name="search">
                        <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
                    </form>
                </div>
            </div>

            @foreach($newsItems as $data)
                @if($data->status)
                    <div class="row ml-4 text-justify">
                        <h3>Status:</h3>
                        <p class="font-weight-bold mt-2 ml-3">{{ $data->status }}</p>
                    </div>
                @endif
                @include('partials.news')
                <div class="col-md-6 pl-4 mb-2">
                    <p class="badge badge-primary">Shared by: {{ $data->user->username }}</p>
                </div>
                <hr class="col-md-11">
            @endforeach

        </div>

        <div class="row flex justify-content-center mt-3">
            {{ $newsItems->links() }}
        </div>

    </div>
@endsection
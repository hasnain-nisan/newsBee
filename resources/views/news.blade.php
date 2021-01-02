@extends('layouts.app')

@section('content')
    <div class="container">

        <div class="row">
        
            @if(session('alert'))
                <div class="col-md-12 pl-5 pr-5 text-center alert alert-primary">
                    
                        {{ session('alert') }}
                    
                </div> 
            @endif

            <div class="col-md-12 mt-3 mb-5 flex justify-content-center">
                <div class="col-md-6">
                    <h4 class="mr-3">Search News...</h4>
                </div>
                <div class="col-md-6">
                    <form action="{{ route('news.search') }}" class="form-inline my-2 my-lg-0" method="get">
                        <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search" name="search">
                        <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
                    </form>
                </div>
            </div>

            @foreach($newsItems['data'] as $data)
                @include('partials.news')
                @include('partials.shareModal')
                <hr class="col-md-11">
            @endforeach

        </div>

        @include('partials.newsPagination')

    </div>
@endsection
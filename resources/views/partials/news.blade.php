
<div class="row mb-2 mt-1 pl-4 pr-4">
                
    <div class="col-md-7 pr-5">

        <div class="row flex mb-3">
            <div class="col-md-5 mr-auto">
                <h3>{{ $data['source'] }}</h3>
            </div>
            <div class="col-md-5 pt-2">
                <p> Date: {{ date('d/m/y'), strtotime($data['published_at']) }}</p>
            </div>
        </div>

        <div class="row pl-3 text-justify mt-3">
            <a href="{{ $data['url'] }}" target="_blank"><h3>{{ $data['title'] }}</h3></a>
        </div>

        <div class="row mt-3 pl-3 text-justify">
            <p>{{ $data['description'] }}</p>
        </div>

        <div class="row flex mb-2 mt-2">
            <div class="col-md-5 mr-auto">
                <p><h6>Author:</h6>
                    @if($data['author'] == !null)
                        {{ $data['author'] }}
                    @endif
                    @if($data['author'] == null)
                        Not found
                    @endif
                </p>
            </div>
            <div class="col-md-5">
                <p><h6>Category:</h6>{{ $data['category'] }}</p>
            </div>
        </div>

    </div> 

    <div class="col-md-5 pl-2 d-flex align-items-center justify-content-center">
        @if( $data['image'] == !null )
            <img src="{{ $data['image'] }}" alt="" style="max-width: 100%; height: auto;">
        @endif
        @if( $data['image'] == null )
            <div class="alert alert-primary">
                <p>No image found associated with the post</p>
            </div>
        @endif
    </div>

</div>

                

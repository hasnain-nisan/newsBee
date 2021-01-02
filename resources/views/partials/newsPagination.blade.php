<div class="row flex justify-content-center">
    <div class="row mt-3">
        @if( $newsItems['pagination']['offset'] > 0  )
            <form action="{{ route('paginate') }}" method="get">
                <input type="hidden" name="offset" value="{{ $newsItems['pagination']['offset'] - 25 }}">
                <button type="submit" class="btn btn-info m-3 p-3">Previous page</button>
            </form>
        @endif
        @if( $newsItems['pagination']['count'] >= $newsItems['pagination']['limit'] )
            <form action="{{ route('paginate') }}" method="get">
                <input type="hidden" name="offset" value="{{ $newsItems['pagination']['offset'] + 25 }}">
                <button type="submit" class="btn btn-info m-3 p-3">Next page</button>
            </form>
        @endif
    </div>
</div>
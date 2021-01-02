<!-- Button to triger modal -->
<div class="col-md-6 pl-4 mb-2">

  <button type="button" 
          data-author="{{ $data['author'] }}"
          data-title="{{ $data['title'] }}"
          data-description="{{ $data['description'] }}" 
          data-source="{{ $data['source'] }}"
          data-published="{{ $data['published_at'] }}"
          data-url="{{ $data['url'] }}"
          data-category="{{ $data['category'] }}"
          data-image="{{ $data['image'] }}"
          data-language="{{ $data['language'] }}"
          data-country="{{ $data['country'] }}"
          class="btn btn-primary" 
          data-toggle="modal" 
          data-target="#exampleModal">
          Share
  </button>

</div>




<!-- Modal -->
<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    
    <div class="modal-content">
      
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Share the news</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      
      <div class="modal-body">
        <form action="{{ route('news.store') }}" method="POST">
            @csrf
            <div class="form-group">
                <textarea class="form-control" id="exampleFormControlTextarea1" rows="3" name="status" placeholder="Write something about the news..."></textarea>
            </div>
                <input type="hidden" name="author" id="author">
                <input type="hidden" name="title" id="title">
                <input type="hidden" name="description" id="description">
                <input type="hidden" name="url" id="url">
                <input type="hidden" name="source" id="source">
                <input type="hidden" name="image" id="image">
                <input type="hidden" name="category" id="category">
                <input type="hidden" name="language" id="language">
                <input type="hidden" name="country" id="country">
                <input type="hidden" name="published_at" id="published">
                                
                <button type="submit" class="btn btn-info share">Share</button>
        </form>
      </div>

    </div>
  </div>
</div>




<script>
    $('#exampleModal').on('show.bs.modal', function (event) {
        var button = $(event.relatedTarget) // Button that triggered the modal

        var author = button.data('author') // Extract info from data-* attributes
        var title = button.data('title')
        var description = button.data('description')
        var url = button.data('url')
        var source = button.data('source')
        var image = button.data('image')
        var category = button.data('category')
        var language = button.data('language')
        var country = button.data('country')
        var published = button.data('published')

        var modal = $(this)

        modal.find('.modal-body #author').val(author);
        modal.find('.modal-body #title').val(title);
        modal.find('.modal-body #description').val(description);
        modal.find('.modal-body #url').val(url);
        modal.find('.modal-body #source').val(source);
        modal.find('.modal-body #image').val(image);
        modal.find('.modal-body #category').val(category);
        modal.find('.modal-body #language').val(language);
        modal.find('.modal-body #country').val(country);
        modal.find('.modal-body #published').val(published);

});
</script>
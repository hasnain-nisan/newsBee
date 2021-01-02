<?php

namespace App\Http\Controllers;

use App\News;
use App\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Http;

class NewsController extends Controller
{

    public function __construct()
    {
        $this->middleware('auth');
    }

    //view news data fetched from the api
    public function index() 
    {
        $country = auth()->user()->country;
        $newsItems = Http::get('http://api.mediastack.com/v1/news', [
            'access_key' => '12f2c17d23096ae1475353ae7ee0ed5b',
            'countries' => $country,
            'languages' =>'en',
        ]);
        
        return view('news', compact('newsItems'));
    }

    //Pagination to see next page
    public function paginate(Request $request)
    {
        $country = auth()->user()->country;
        $newsItems = Http::get('http://api.mediastack.com/v1/news', [
            'access_key' => '12f2c17d23096ae1475353ae7ee0ed5b',
            'countries' => $country,
            'languages' =>'en',
            'offset' => $request->offset,
        ]);
        
        return view('news', compact('newsItems'));
    }

    //Search news in the api with keywords
    public function searchNews(Request $request)
    {
        $request->session()->put('keyword', $request->input('search'));
        $newsItems = Http::get('http://api.mediastack.com/v1/news', [
            'access_key' => '12f2c17d23096ae1475353ae7ee0ed5b',
            'languages' =>'en',
            'countries' => auth()->user()->country,
            'keywords' => $request->search,
        ]);
 
        return view('search', compact('newsItems'));
    }
 
    //paginate the search result
    public function searchPaginate(Request $request)
    {
        $keyword = $request->session()->get('keyword');
        $newsItems = Http::get('http://api.mediastack.com/v1/news', [
            'access_key' => '12f2c17d23096ae1475353ae7ee0ed5b',
            'languages' => 'en',
            'countries' => auth()->user()->country,
            'keywords' => $keyword,
            'offset' => $request->offset,
        ]);
 
        return view('search', compact('newsItems'));
    }

    //show all the news shared in newsbee
    public function beenews()
    {
        $newsItems = News::orderBy('created_at', 'desc')->paginate(25);
        return view('beenews', compact('newsItems'));
    }

    //Search only shared news in newsbee
    public function searchBeenews(Request $request)
    {
        $search = $request->search;
        $newsItems = News::where('status','LIKE', '%'.$search.'%')
                ->orWhere('author','LIKE', '%'.$search.'%')
                ->orWhere('title','LIKE', '%'.$search.'%')
                ->orWhere('description','LIKE', '%'.$search.'%')
                ->orWhere('source','LIKE', '%'.$search.'%')
                ->orWhere('country','LIKE', '%'.$search.'%')
                ->get();
        
        return view('beenews', compact('newsItems'));
    }


    //Show only authenticated user shared post
    public function mycollection(User $user)
    {
        $newsItems = News::where('user_id', $user->id)->orderBy('created_at', 'desc')->paginate(25);
        return view('mycollection', compact('newsItems'));
    }

    //Search only in authenticated user post
    public function searchMycollection(Request $request)
    {
        $search = $request->search;
        $newsItems = auth()->user()->news()
                ->where('status','LIKE', '%'.$search.'%')
                ->orWhere('author','LIKE', '%'.$search.'%')
                ->orWhere('title','LIKE', '%'.$search.'%')
                ->orWhere('description','LIKE', '%'.$search.'%')
                ->orWhere('source','LIKE', '%'.$search.'%')
                ->orWhere('country','LIKE', '%'.$search.'%')
                ->get();
        
        return view('mycollection', compact('newsItems'));
    }

    //Share a particular news from api data and store in newsbee batabase
    public function store(Request $request)
    {
        News::create([
                'status' => $request->status,
                'user_id' => auth()->user()->id,
                'author' => $request->author,
                'title' => $request->title,
                'description' => $request->description,
                'url' => $request->url,
                'source' => $request->source,
                'image' => $request->image,
                'category' => $request->category,
                'language' => $request->language,
                'country' => $request->country,
                'published_at' => $request->published_at,
        ]);

        return back()->with('alert', 'The post has been shared');
    }

    //Delete authenticated users shared news
    public function destroy(Request $request, User $user, News $data)
    {
        $this->authorize('delete', $data);
        $data->delete();

        return back()->with('status', 'The post has been deleted');
    }
   
}

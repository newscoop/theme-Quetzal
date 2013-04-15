<div class="span8 home-featured-news">
    <!-- SECTION ARTICLES -->                                
    <div class="row section-articles">
    {{ list_articles length="10" ignore_issue="true" }}
        {{ if $gimme->current_list->at_beginning }}            

        <article class="span8 section-article section-featured">                                        
            <figure class="pull-left article-image">
                <a href="{{ uri options="article" }}">
                    <img src="http://placehold.it/330x215" alt="News Title">
                </a>
            </figure>
            <span class="red-text">Business</span>
            <span class="label label-important normal-weight">premium</span>
            <header>
                <h1>{{ $gimme->article->name }}</h1>
                <span class="article-date">Jan 28 2012, 4:35 am</span>
            </header>
            <div class="article-excerpt hidden-phone">
                {{ $gimme->article->full_text|truncate:255:"...":true }}
            </div>  
            <div class="article-links hidden-phone">
                <hr>
                <a href="#" class="comments-link">{{ $gimme->article->comment_count }} Comments</a> | <a href="{{ uri options="article" }}" class="red-text negrita-weight">Read more +</a>
            </div>                                        
            <div class="clearfix"></div>
        </article>
        {{ else }}

        <article class="span8 section-article">
            <figure class="pull-left article-image">
                <a href="{{ uri options="article" }}">
                    <img class="hidden-tablet" src="http://placehold.it/202x152" alt="News Title">
                    <img class="visible-tablet" src="http://placehold.it/225x150" alt="News Title">
                </a>
            </figure>
            <span class="red-text">Business</span>
            <span class="label label-important normal-weight">premium</span>
            <header>
                <h1>{{$gimme->article->name}}</h1>
                <span class="article-date">Jan 28 2012, 4:35 am</span>
            </header>
            <div class="article-excerpt hidden-phone">
                {{ $gimme->article->full_text|truncate:200:"...":true}}
            </div>  
            <div class="article-links hidden-phone">
                <hr>
                <a href="#" class="comments-link">{{ $gimme->article->comment_count }} Comments</a> | <a href="{{ uri options="article" }}" class="red-text negrita-weight">Read more +</a>
            </div>
            <div class="clearfix"></div>
        </article>
        {{ /if}}
        {{ /list_articles }}    
    </div>
</div>

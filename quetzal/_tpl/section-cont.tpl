<div class="span8 home-featured-news">
    <!-- SECTION ARTICLES -->                                
    <div class="row section-articles">
    {{ list_articles length="5" ignore_issue="true" }}
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

        {{ if $gimme->current_list->at_end }}            

        {{* PAGINATION *}}
        {{ $pages=ceil($gimme->current_list->count/5) }}
        {{ $curpage=intval($gimme->url->get_parameter($gimme->current_list_id())) }}
        {{ if $pages gt 1 }}
        <nav class="span8">
            <div class="pagination">
                <ul>
                    {{ if $gimme->current_list->has_previous_elements }}<li class="prev"><a href="{{ uripath options="section" }}?{{ urlparameters options="previous_items" }}">&laquo;</a></li>{{ /if }}
                    {{ for $i=0 to $pages - 1 }}
                        {{ $curlistid=$i*5 }}
                        {{ $gimme->url->set_parameter($gimme->current_list_id(),$curlistid) }}
                        {{ if $curlistid != $curpage }}
                    <li><a href="{{ uripath options="section" }}?{{ urlparameters }}">{{ $i+1 }}</a></li>
                        {{ else }}
                    <li class="active disable"><a href="{{ uripath options="section" }}?{{ urlparameters }}">{{ $i+1 }}</a></li>
                        {{ $remi=$i+1 }}
                        {{ /if }}
                    {{ /for }}
                    {{ if $gimme->current_list->has_next_elements }}<li class="next"><a href="{{ uripath options="section" }}?{{ urlparameters options="next_items" }}">&raquo;</a></li>{{ /if }}
                </ul>
            </div>
        </nav>
        {{ $gimme->url->set_parameter($gimme->current_list_id(),$curpage) }}
        {{ /if }}

        {{ /if }}

        {{ /list_articles }}    
    </div>
</div>

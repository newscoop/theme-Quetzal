<div class="span8 section-articles">
{{ list_sections }}  
{{ list_articles }}
{{ if $gimme->current_articles_list->at_beginning }}
    <section class="archive-block">
        <h1 class="block-title">{{ $gimme->section->name}}</h1>
        <hr>
{{ /if }}    
        <article class="section-article archive-entry">
            <figure class="pull-left article-image">
                <img src="http://placehold.it/130x70" alt="Month Name">
            </figure>
            <header>
                <h1><a href="{{ uri options="article" }}">{{ $gimme->article->name }}</a></h1>
                <span class="article-date"><time datetime="{{ $gimme->article->publish_date|date_format:"%Y-%m-%dT%H:%MZ" }}">{{ $gimme->article->publish_date|camp_date_format:"%M %e, %Y" }}</time></span><br>
                <span>{{ $gimme->article->comment_count }} comment(s)</span>
            </header>                                        
            <div class="clearfix"></div>
        </article>
{{ if $gimme->current_articles_list->at_end }}

    </section>

{{ /if }}
{{ /list_articles }}    
{{ /list_sections }}
</div>

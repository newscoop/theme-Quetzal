{{ if $user->isAuthor() }}
{{ $escapedName=str_replace(" ", "\ ", $user->author->name) }}
{{/if}}
<div class="span8 section-articles profile-articles">
    <section class="archive-block">
        <h1 class="block-title">{{ #articlesBy# }}<span class="red-text">{{ $user->first_name}} {{ $user->last_name}}</span></h1>
        <hr>
        {{ list_articles length="5" ignore_publication="true" ignore_issue="true" ignore_section="true" constraints="author is $escapedName type is news" order="bypublishdate desc" }}
        <article class="section-article archive-entry">
            {{ include file='_tpl/img/img_130x70.tpl'}}
            <header>
                <h1><a href="{{ $gimme->article->url }}">{{ $gimme->article->name }}</a></h1>
                <span class="article-date">{{ $gimme->article->publish_date|camp_date_format:"%M %e, %Y" }}</span>
                <span class="label label-important normal-weight">{{ #premium# }}</span>
                <br>
                <span>{{ $gimme->article->comment_count }} {{ #comments# }}</span>
            </header>                                        
            <div class="clearfix"></div>
        </article>
        {{/list_articles}}
    </section>
    
</div>

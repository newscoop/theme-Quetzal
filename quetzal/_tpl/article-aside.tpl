<!-- SIDEBAR -->
<div class="span4">
    <aside class="sidebar">
        
        <!-- ADVERTISEMENTS -->
        <div class="advertisements visible-desktop">
            <a href="#"><img src="http://placehold.it/300x250" alt="Link title"></a>
        </div>

        <!-- RELATED NEWS WIDGET -->

        {{ list_related_articles }}
        {{ if $gimme->current_list->at_beginning }} 
        <div class="widget-more-news visible-desktop">
            <header>
                <h4>More news like this</h3>
            </header>
            <div class="widget-wrap">
                <div class="news-content">
                    <div class="visible-desktop">
                        {{/if}}
                        <div class="news-box">
                            <img src="http://placehold.it/70x45" alt="News title here" class="pull-left">
                            <div class="pull-right newtitle">
                                <a href="{{ uri options="article"}}">{{ $gimme->article->name }}</a>
                            </div>
                            <div class="clearfix divider"></div>
                            <div class="newdata">
                                <span>{{ $gimme->article->comment_count }} comments</span> | 
                                <a href="{{ uri options="article"}}" class="red-text">Read more +</a>
                                <span class="date pull-right">Jan 28 2012, 4:35 pm</span>
                            </div>
                        </div>
                        {{ if $gimme->current_list->at_end }}
                    </div>
                </div>
            </div>
        </div>
        {{/if}}
        {{ /list_related_articles}}

        {{ list_related_articles }}
        {{ if $gimme->current_list->at_beginning }} 
        <div class="widget-more-news hidden-tablet hidden-desktop">
            <header>
                <h4>More news like this</h3>
            </header>
            <div class="widget-wrap">
                <div class="news-content">
                    <div class="more-like-this-phone visible-phone">
                        {{/if}}
                        <article>
                            <figure class="article-image">
                                <a href="{{ uri options="article"}}">
                                    <img src="http://placehold.it/130x98" alt="News Title">
                                </a>
                            </figure>
                            <section class="article-content">
                                <span class="red-text">{{ $gimme->article->section }}</span>
                                <header>
                                    <h2><a href="{{ uri options="article"}}">{{ $gimme->article->name }}</a></h2>
                                    <span class="article-date">Nov 02 2012, 5:40 am</span>
                                </header>
                                <div class="clearfix"></div>
                            </section>
                        </article>
                        {{ if $gimme->current_list->at_end }}
                    </div>
                </div>
            </div>
        </div>
        {{/if}}
        {{ /list_related_articles}}

        <!-- MAP WIDGET -->
        <div class="widget-map hidden-tablet">
            <header class="widget-wrap">
                <h4>News near you</h4>
            </header>
            <section class="widget-wrap">
                {{ if $gimme->article->has_map }}         
                <figure class="map">
                    {{ map show_locations_list="false" show_reset_link="false" width="100%" height="250" }}
                </figure>  
                {{ /if }}

                <div class="badges">
                    <a href="#" class="map-badge">New in place <i class="icon-center"></i></a>
                    <a href="#" class="map-badge">Another new in place <i class="icon-center"></i></a>
                    <a href="#" class="map-badge">New in place <i class="icon-center"></i></a>
                </div>
            </section>
            <footer>
                <hr>
                <div class="widget-wrap">
                    <i class="icon-center"></i> Center a place
                </div>
            </footer>
        </div>

    </aside>
</div>

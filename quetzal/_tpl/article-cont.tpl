<!-- MAIN ARTICLE -->
<div class="span8 article-container">
    <article class="main-article single-1">                                    
        
        <header>
            <span class="article-info">
                15 February 2012 By <a href="#" class="red-text">James Q. Reporter</a>, <a href="#" class="red-text">Sarah Staffwriter</a> <span class="pull-right visible-desktop">Location(s): Prague, Vilnius</span> <span class="visible-phone">Location(s): Prague, Vilnius</span>
            </span>
            <div class="clearfix"></div>

            <figure class="aside-figure pull-right visible-desktop">
                <img src="img/devel/article-picture1.jpg" alt="Article Title or Photo Title">
                <figcaption>A cheeky macaque</figcaption>
            </figure>

            <h1>{{ $gimme->article->name }}</h1>
        </header>

        <section class="article-content">
            <figure class="hidden-desktop">
                <img src="img/devel/article-picture.jpg" alt="Article Title or Photo Title">
                <figcaption>A cheeky macaque</figcaption>
            </figure>                                        
            {{ $gimme->article->full_text }}
        </section>

        <!-- AddThis Button BEGIN -->
        <div class="addthis_toolbox addthis_default_style">
            <a class="addthis_button_facebook_send visible-desktop"></a>
            <a class="addthis_button_facebook_like visible-desktop" fb:like:layout="standard"></a>
            <a class="addthis_button_facebook_like visible-phone" fb:like:layout="button_count"></a>
            <a class="addthis_button_tweet"></a>
            <a class="addthis_button_google_plusone" g:plusone:size="medium"></a>
        </div>
        <!-- AddThis Button END -->
        {{ include file="_tpl/article-comments.tpl" }}
        </section>

    </article>
</div>

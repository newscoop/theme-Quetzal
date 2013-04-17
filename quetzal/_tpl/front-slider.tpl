<section id="quetzal-slideshow">
    <div class="cycle-slideshow" 
        data-cycle-fx="fade" 
        data-cycle-timeout="5000"                        
        data-cycle-slides="> div.quetzal-slide"
        data-cycle-pager="#no-template-pager"
        data-cycle-pause-on-hover="true"
        data-cycle-pager-template="">
        
        <div class="quetzal-slide" 
            style="background-image: url(http://lorempixel.com/960/300/sports/)">
            <div class="slide-title">
                <span class="red-text">Culture</span>
                <h3><a href="#">Lorem ipsum dolor sit amet, consectetur</a></h3>
            </div>
            <div class="slide-description hidden-phone">
                Vestibulum id ligula porta felis euismod semper. Aenean eu leo quam. Pellentesque ornare sem lacinia quam venenatis vestibulum. Integer posuere
                <div class="slide-time">Today, 8:47 pm</div>
                <a class="read-more red-text" href="#">Read more +</a>
            </div>
        </div>
        <div class="quetzal-slide" 
            style="background-image: url(http://lorempixel.com/960/300/cats/)">
            <div class="slide-title">
                <span class="red-text">Sports</span>
                <h3><a href="#">Lorem Dolor Fusce Risus</a></h3>
            </div>
            <div class="slide-description hidden-phone">
                Aenean eu leo quam. Pellentesque ornare sem lacinia quam venenatis vestibulum. Integer posuere Vestibulum id ligula porta felis euismod semper. 
                <div class="slide-time">Today, 10:30 pm</div>
                <a class="read-more red-text" href="#">Read more +</a>
            </div>
        </div>
        <div class="quetzal-slide" 
            style="background-image: url(http://lorempixel.com/960/300/people/)">
            <div class="slide-title">
                <span class="red-text">Business</span>
                <h3><a href="#">Lorem Mollis Vestibulum Fermentum Lorem</a></h3>
            </div>
            <div class="slide-description hidden-phone">
                Pellentesque Aenean eu leo quam.  Vestibulum id ligula porta felis euismod semper. ornare sem lacinia quam venenatis vestibulum. Integer posuere
                <div class="slide-time">Tomorrow, 12:30 pm</div>
                <a class="read-more red-text" href="#">Read more +</a>
            </div>
        </div>
    </div>

    <div id="no-template-pager" class="cycle-pager external quetzal-slideshow-pager pager-default">
        <a href=""><img src="http://placehold.it/68x45"></a>
        <a href=""><img src="http://placehold.it/68x45"></a>
        <a href=""><img src="http://placehold.it/68x45"></a>
    </div>

    <!-- POPULAR NEWS -->
    <div class="quetzal-popular-news visible-desktop">
        <h3>Most popular news</h3>
        {{ local }} 
        {{ set_current_issue }} 
        {{ list_articles length="4" order="bypopularity desc" constraints="type is news" }}
        <div class="mgzn-news-box">
            <a href="{{ uri options="article" }}"><img src="http://placehold.it/72x46" alt="News Title" class="pull-left"></a>
            <div class="mgzn-news-info pull-right">
                <span><b>{{ $gimme->article->section->name }}</b></span><br>
                <a href="{{ uri options="article" }}">{{ $gimme->article->name }}</a>
            </div>
            <div class="clearfix"></div>
        </div>
        {{ /list_articles }} 
        {{ /local }}
    </div>
</section>

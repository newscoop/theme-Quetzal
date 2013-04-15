<!-- _tpl/article-comments.tpl-->
<section id="comments">
    <div class="row">
        <div class="span6">
            <h2>{{ $gimme->article->comment_count}} Comments</h2>
        </div>
        <div class="span2 write-comment">
            <a href="#" class="red-text">Write a comment</a>
        </div>
    </div>
{{list_article_comments order="bydate desc"}}
    <div class="row comment-box" id="comment-{{$gimme->current_list->index}}">
        <div class="span1">
            <a href="#" class="avatar">
                <img src="http://placehold.it/60x60" alt="Author's Name">
            </a>
        </div>
        <div class="span7 comment-content">                                                
            <h4 class="pull-left comment-author red-text">
            {{ if $gimme->comment->user->identifier }}
                <a href="http://{{ $gimme->publication->site }}/user/profile/{{ $gimme->comment->user->uname|urlencode }}">{{ $gimme->comment->user->uname }}</a>
            {{ else }}
                {{ $gimme->comment->nickname }} (Anonymous)
            {{ /if }}
            </h4>
            <div class="pull-right comment-date">
                <time datetime="{{ $gimme->comment->submit_date|camp_date_format:"%Y-%m-%dT%H:%iZ" }}">{{ $gimme->comment->submit_date|camp_date_format:"%e.%m.%Y at %H:%i" }}</time>
            </div>
            <div class="clearfix"></div>
            <div class="comment-body">
             {{ $gimme->comment->content}}
            </div>                                                
        </div>
    </div>
{{/list_article_comments}}
    
    <div class="divider"></div>

    <!-- COMMENT FORM -->
    <section id="comment-form">
        <div class="row">
            <div class="span6">
                <h2>Write a comment</h2>
            </div>
            <div class="span2 write-comment">
                <a href="#" class="red-text">Login or Sign Up</a>
            </div>                                                
        </div>
        {{ comment_form html_code="id=\"commentform\"" _button="submit" button_html_code="tabindex=\"6\"" }}
            <div class="row">                                                
                <div class="span4">
                    {{ camp_edit object="comment" attribute="nickname" html_code="id=\"author\" tabindex=\"1\"" }}
                    {{ camp_edit object="comment" attribute="reader_email" html_code="id=\"email\" tabindex=\"2\"" }}
                    {{ recaptcha }}
                </div>
                <div class="span4">
                    {{ camp_edit object="comment" attribute="content" html_code="id=\"comment\" tabindex=\"4\"" }}
                </div>
            </div>
            <input type="submit" value="Publish comment" class="btn btn-large pull-right">
            <div class="clearfix"></div>
        {{ /comment_form }}
</section>
<!--  end _tpl/article-comments.tpl-->

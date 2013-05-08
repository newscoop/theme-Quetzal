<!-- sidebar -->
<div class="span4">
    
    <!-- ADVERTISEMENTS -->
    <div class="advertisements visible-desktop">
        <a href="http://www.sourcefabric.org/" target="_blank"><img src="{{ url static_file='_img/sourcefabric-336x280.png' }}"></a>
    </div>

    <!-- TABS SIDEBAR -->
    <div class="sidebar-widget-tabs visible-desktop">
        <ul class="nav nav-tabs">
            <li class="active">
                <a href="#last-comments" data-toggle="tab">{{ #latestComments# }}</a>
            </li>
            <li><a href="#more-searches" data-toggle="tab">{{ #moreSearches# }}</a></li>
            <li><a href="#sports-poll" data-toggle="tab">Sports Poll</a></li>
        </ul>
        <div class="tab-content">
            <div class="tab-pane active" id="last-comments">
                {{list_article_comments length="3" ignore_article="true" order="byDate desc"}}
                {{if $gimme->comment->content }}
                <div class="comment-box">
                    <div>
                        <a href="{{uri}}#comments">{{$gimme->comment->content|truncate:120}}</a>
                    </div>
                    <div class="comment-info">
                        <time class="timeago link-color" datetime="{{ $gimme->comment->submit_date}}">{{ $gimme->comment->submit_date }},</time> {{ #by# }}
                                    {{ if $gimme->comment->user->identifier }}
                                        <a href="http://{{ $gimme->publication->site }}/user/profile/{{ $gimme->comment->user->uname|urlencode }}">{{ $gimme->comment->user->uname }}</a>
                                    {{ else }}
                                        {{ $gimme->comment->nickname }} ({{ #anonymous# }})
                                    {{ /if }}
                    </div>
                </div>
                <hr>
                {{/if}}
                {{ /list_article_comments }}                
            </div>
            <div class="tab-pane" id="more-searches">
                searches
            </div>
            <div class="tab-pane" id="sports-poll">
                <div class="polls">
                    Pellentesque habitant morbi tristique senectus et netus et malesuada?
                    <div class="pollWrap">
                        <form>
                            <div class="poll-option">
                                <label><input type="radio" name="group1" value="Option1"> Option 1</label>
                            </div>
                            <div class="poll-option">
                                <label><input type="radio" name="group1" value="Option2"> Option 2</label>
                            </div>
                            <div class="poll-option noborder">
                                <label><input type="radio" name="group1" value="Option3"> Option 3</label>
                            </div>
                            <input type="submit" value="Vote this poll!" class="btn btn-block">
                        </form>
                    </div>
                </div>                                            
            </div>
        </div>
    </div>
</div>  

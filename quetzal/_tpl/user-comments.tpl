<div class="span8 section-articles profile-articles">
    <section class="archive-block">
        <h1 class="block-title">{{ #commentsBy# }} <span class="red-text">{{ $user->first_name}} {{ $user->last_name}}</span></h1>
        <hr>
        {{ list_user_comments user=$user->identifier order="bydate desc" length="20" }}
        {{if $gimme->comment->content }}
                <div class="comment-box">
                    <div>
                        <a href="{{uri}}#comments">{{$gimme->comment->content|truncate:120}}</a>
                    </div>
                    <div class="comment-info">
                        <time class="timeago red-text" datetime="{{ $gimme->comment->submit_date}}">{{ $gimme->comment->submit_date }},</time> {{ #by# }}
                                    {{ if $gimme->comment->user->identifier }}
                                        <a href="http://{{ $gimme->publication->site }}/user/profile/{{ $gimme->comment->user->uname|urlencode }}">{{ $gimme->comment->user->uname }}</a>
                                    {{ else }}
                                        {{ $gimme->comment->nickname }} ({{ #anonymous# }})
                                    {{ /if }}
                    </div>
                </div>
                <hr>
        {{/if}}
        {{ /list_user_comments }}


    </section>
    
</div>

<!-- sidebar -->
<div class="span4">
    
    <!-- ADVERTISEMENTS -->
    <div class="advertisements visible-desktop">
        <a href="http://www.sourcefabric.org/" target="_blank"><img src="{{ url static_file='_img/sourcefabric-336x280.png' }}"></a>
    </div>

    <!-- TABS SIDEBAR -->
    <div class="sidebar-widget-tabs visible-desktop">
        <ul class="nav nav-tabs">
            <li class="active"> <a href="#last-comments" data-toggle="tab">{{ #latestComments# }}</a> </li>
            <li><a href="#poll" data-toggle="tab">{{ #pollTitle# }}</a></li>
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
            <div class="tab-pane" id="poll">
                <div class="polls">
                {{ list_articles length="1" ignore_issue="true" ignore_section="true" constraints="type is poll" }}
                {{ list_debates length="1" item="article" }}
                    <div class="pollWrap">
                    {{ if $gimme->debate_action->defined }}
                        <blockquote>{{ $gimme->debate->question }}</blockquote>
                        {{ if $gimme->debate->user_vote_count >= $gimme->debate->votes_per_user || $gimme->debate_action->ok }}
                            <p class="poll-info">{{ #thankYouPoll# }}</p>
                        {{ elseif $gimme->debate_action->is_error }}
                            <p>{{ #alreadyVoted# }}</p>
                        {{ /if }}                        
                        <ul class="question-list">
                        {{ assign var="votes" value=0 }}
                        {{ list_debate_answers }}
                          <li>
                              <label for="radio{{ $gimme->current_list->index }}">{{ $gimme->debateanswer->answer }}</label>
                              <span class="q-score" style="width:{{ math equation="round(x)" x=$gimme->debateanswer->percentage_overall format="%d" }}%;"> <small>{{ math equation="round(x)" x=$gimme->debateanswer->percentage_overall format="%d" }}%</small></span>
                            </li>
                            {{ assign var="votes" value=$votes+$gimme->debateanswer->votes }}
                            {{ if $gimme->current_list->at_end }}
                            <li class="total-votes"><span>Number of votes: {{ $votes }}</span></li>
                            {{ /if }} 
                        {{ /list_debate_answers }}
                        </ul>
                    {{ else }}
                       {{ if $gimme->debate->is_votable }}
   
                            <blockquote>{{ $gimme->debate->question }}</blockquote> 
                            {{ debate_form template="_tpl/sidebar-poll.tpl" submit_button="{{ #pollButton# }}" html_code="id=\"poll-button\" class=\"button debbut center\"" }}  
                            
    {{* this is to find out template id for this template, will have to be assigned as hidden form field *}}     
    {{ $uriAry=explode("tpl=", {{ uri options="template _tpl/sidebar-poll.tpl" }}, 2) }}                        

                            <input name="tpl" value="{{ $uriAry[1] }}" type="hidden">
                            <ul class="question-list">
                            {{ list_debate_answers }}
                              <li>
                                  <!--input type="radio" id="radio{{ $gimme->current_list->index }}" name="radios1" /-->
                                  {{ debateanswer_edit html_code="id=\"radio{{ $gimme->current_list->index }}\"" }}<label for="radio{{ $gimme->current_list->index }}">{{ $gimme->debateanswer->answer }}</label>
                                  <span class="q-score" style="width:{{ math equation="round(x)" x=$gimme->debateanswer->percentage_overall format="%d" }}%;"> <small>{{ math equation="round(x)" x=$gimme->debateanswer->percentage_overall format="%d" }}%</small></span>
                              </li>
                            {{ /list_debate_answers }}
                            </ul> 
                            {{ /debate_form }}                        
                            
                       {{ else }}                       
                            <blockquote>{{ $gimme->debate->question }}</blockquote> 
                            {{ if $gimme->debate->user_vote_count >= $gimme->debate->votes_per_user }}<p class="poll-info">{{ #thankYouPoll# }}</p>{{ /if }}  
                            <ul class="question-list">
                            {{ list_debate_answers }}
                              <li>
                                  <label for="radio{{ $gimme->current_list->index }}">{{ $gimme->debateanswer->answer }}</label>
                                  <span class="q-score" style="width:{{ math equation="round(x)" x=$gimme->debateanswer->percentage_overall format="%d" }}%;"> <small>{{ math equation="round(x)" x=$gimme->debateanswer->percentage_overall format="%d" }}%</small></span>
                              </li>
                            {{ /list_debate_answers }}
                            </ul>    
                       {{ /if }}
                    {{ /if }}
                    </div>
                    {{ if $gimme->current_list->at_end }}
                    </div>
                    {{ /if }}
                    {{ /list_debates }}
                    {{ /list_articles }}
                </div>                                            
            </div>
        </div>
    </div>
</div>  

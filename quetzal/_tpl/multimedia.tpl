{{* assign counter and maximum count for collecting multimedia files *}}
{{assign var=multimediacounter value=0}}
{{assign var=multimediacountermax value=12}}
{{ list_articles length="100" ignore_issue="true" ignore_section="true" order="bypublishdate desc" }}
  {{* check if we have to do anything => not yet hit maximum *}}
  {{if $multimediacounter lt $multimediacountermax}}
      {{* assign variable for current article. 1 => has multimedia *}}
      {{assign var=multimediacurrent value=0}}
      {{ foreach $gimme->article->slideshows as $slideshow }}
        {{assign var=multimediacurrent value=1}}
      {{ /foreach }}
      {{ if $gimme->article->has_attachments }} 
          {{ list_article_attachments }}
              {{ if $gimme->attachment->extension == oga }}    
                {{assign var=multimediacurrent value=1}}              
              {{ elseif $gimme->attachment->extension == ogv || $gimme->attachment->extension == ogg || $gimme->attachment->extension == mp4 || $gimme->attachment->extension == webm }}             
                {{assign var=multimediacurrent value=1}}
              {{ /if }}  
          {{ /list_article_attachments }}   
      {{ /if }}  
      {{* check now if multimedia found *}}
      {{if $multimediacurrent == 1}}
        {{* add to array with multimedia articles *}}
        {{append var=multimedia value="yes" index="`$gimme->article->number`"}}
        {{* increase counter to check for max number *}}
        {{ assign "multimediacounter" $multimediacounter+1 }}
      {{/if}}
  {{/if}}
{{ /list_articles }}  
<div class="row hidden-phone">
  <div class="span12 quetzal-carousel">
      <h4>Latest Multimedia</h4>
      <div id="myCarousel" class="carousel slide">                            
          <div class="carousel-inner quetzal-carousel-content">
            {{foreach from=$multimedia key=articleID item=articleName name=multimediaLoop}}
                {{ if $smarty.foreach.multimediaLoop.first }}
                    <div class="item active">                                
                {{/if}}

                {{ if $smarty.foreach.multimediaLoop.iteration is div by 4}}
                      <div class="clearfix"></div>
                    </div>                                
                {{/if}}

                {{ if $smarty.foreach.multimediaLoop.iteration is div by 4}}
                    <div class="item">                                
                {{/if}}
                
                {{ list_articles ignore_issue="true" ignore_section="true" length="1" constraints="number is `$articleID`"}}
                  {{ if $gimme->article->has_attachments }} 
                      {{ list_article_attachments }}
                      {{ if $gimme->attachment->extension == oga || $gimme->attachment->extension == ogv || $gimme->attachment->extension == ogg || $gimme->attachment->extension == mp4 || $gimme->attachment->extension == webm }}             
                      <a href="{{ uri options="article" }}" class="pull-left sub-item video">
                          <img style="background: #000;" src="{{url static_file='_img/player.png'}}" alt="uno">
                      </a> 
                      {{ /if }}
                      {{ /list_article_attachments }}
                  {{ else }}
                  <a href="{{ uri options="article" }}" class="pull-left sub-item photo">
                      {{ include file="_tpl/img/img_235x220.tpl"}}
                  </a>
                  {{ /if }}
                  {{ /list_articles }}

                {{ if $smarty.foreach.multimediaLoop.last}}
                      <div class="clearfix"></div>
                    </div>                                
                {{/if}}
            {{/foreach}}
          </div>
          <a class="left carousel-control" href="#myCarousel" data-slide="prev">
              <span class="arrow-left"></span>
          </a>
          <a class="right carousel-control" href="#myCarousel" data-slide="next">
              <span class="arrow-right"></span>
          </a>
      </div>
  </div>
</div>

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
        {{$multimediacounter++}}
      {{/if}}
  {{/if}}
{{ /list_articles }}  
{{* spit out what we found *}}
{{$multimedia|@print_r}}
{{* this is the resulting article list *}}
{{foreach from=$multimedia key=articleID item=articleName}}
    {{ list_articles ignore_issue="true" ignore_section="true" length="1" constraints="number is `$articleID`"}}
      <li>Section:{{ $gimme->section->name }} | ID:{{$articleID}}: {{ $gimme->article->name }}</li>
    {{ /list_articles }}
{{/foreach}}
<div class="row hidden-phone">
  <div class="span12 quetzal-carousel">
      <h4>Latest Multimedia</h4>
      <div id="myCarousel" class="carousel slide">                            
          <div class="carousel-inner quetzal-carousel-content">
            <div class="item active">                                
                  <a href="#" class="pull-left sub-item video">
                      <img style="background: url(http://lorempixel.com/235/220) no-repeat;" src="{{url static_file='_img/player.png'}}" alt="uno">
                  </a>
                  <a href="#" class="pull-left sub-item photo">
                      <img src="http://lorempixel.com/235/220/sports" alt="uno">
                      <div class="photo-caption">
                          Nulla odio nibh, fringilla vel vulputate vitae.
                      </div>
                  </a>
                  <a href="#" class="pull-left sub-item video">
                      <img style="background: url(http://placehold.it/235x220) no-repeat;" src="{{url static_file='_img/player.png'}}" alt="uno">
                  </a>
                  <a href="#" class="pull-left sub-item">
                      <img src="http://placehold.it/235x220" alt="uno">
                  </a>
                  <div class="clearfix"></div>
            </div>
            <div class="item">                            
                  <img class="pull-left" src="http://placehold.it/235x220" alt="uno">
                  <img class="pull-left" src="http://placehold.it/235x220" alt="uno">
                  <img class="pull-left" src="http://placehold.it/235x220" alt="uno">
                  <img class="pull-left" src="http://placehold.it/235x220" alt="uno">
            </div>                              
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

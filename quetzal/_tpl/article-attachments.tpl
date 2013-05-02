{{ if $gimme->article->has_attachments }} 
{{ list_article_attachments }}
{{ if $gimme->attachment->extension == oga }}           
<div class="audio-attachment">
  <h5><i class="icon-headphones"></i> Listen</h5><hr><br>
    <audio src="{{ uri options="articleattachment" }}" width="100%" controls>
  <a href="{{ uri options="articleattachment" }}">Download audio file</a>
  </audio>
</div><!-- /#audio-attachment -->
{{ elseif $gimme->attachment->extension == ogv || $gimme->attachment->extension == ogg || $gimme->attachment->extension == mp4 || $gimme->attachment->extension == webm }}             

  <div class="video-attachment"><!-- read http://diveintohtml5.org/video.html -->
  <h5><i class="icon-film"></i> Watch</h5><hr>
  <video id="video_{{ $gimme->current_list->index }}" class="video-js vjs-default-skin" controls
          preload="auto" width="100%" height="270"
          data-setup="{}">
    <source src="{{ uri options="articleattachment" }}" type='{{ $gimme->attachment->mime_type }}'>
    <a href="{{ uri options="articleattachment" }}">Download .{{ $gimme->attachment->extension }} file</a>
   </video>

</div><!-- /#video-attachment --> 
      
{{ else }}
<div class="attachment">
    <h5><i class="icon-download-alt"></i> Attachment</h5><hr>
    <a href="{{ uri options="articleattachment" }}" class="btn btn-mini btn-red">Download | {{ $gimme->attachment->file_name }} ({{ $gimme->attachment->size_kb }}kb)</a>
    <p><em>{{ $gimme->attachment->description }}</em></p>
</div><!-- /.attachment -->
{{ /if }}      
{{ /list_article_attachments }}      
{{ /if }}  

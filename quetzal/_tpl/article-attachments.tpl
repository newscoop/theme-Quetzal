{{ if $gimme->article->has_attachments }} 
{{ list_article_attachments }}
{{ if $gimme->attachment->extension == oga }}           
<div class="audio-attachment">
  <h3>Listen</h3>
    <audio src="{{ uri options="articleattachment" }}" width="100%" controls>
  <a href="{{ uri options="articleattachment" }}">Download audio file</a>
  </audio>
</div><!-- /#audio-attachment -->
{{ elseif $gimme->attachment->extension == ogv || $gimme->attachment->extension == ogg || $gimme->attachment->extension == mp4 || $gimme->attachment->extension == webm }}             

    <div class="video-attachment"><!-- read http://diveintohtml5.org/video.html -->
    <h3>Watch</h3>
    <video id="video_{{ $gimme->current_list->index }}" class="video-js vjs-default-skin" controls
            preload="auto" width="100%"
            data-setup="{}">
      <source src="{{ uri options="articleattachment" }}" type='{{ $gimme->attachment->mime_type }}'>
      <a href="{{ uri options="articleattachment" }}">Download .{{ $gimme->attachment->extension }} file</a>
     </video>

  </div><!-- /#video-attachment --> 
      
{{ else }}
      <div class="attachment">
          <h3>Download</h3>
          <p>File of type: {{ $gimme->attachment->mime_type }}</p>
          <a href="{{ uri options="articleattachment" }}">{{ $gimme->attachment->file_name }} ({{ $gimme->attachment->size_kb }}kb)</a>
          <p><em>{{ $gimme->attachment->description }}</em></p>
      </div><!-- /.attachment -->
{{ /if }}      
{{ /list_article_attachments }}      
{{ /if }}  

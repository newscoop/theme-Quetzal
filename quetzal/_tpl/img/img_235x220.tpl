{{ image rendition="multimedia"}}
{{ if $where=='slideshow'}}
<a href="{{ uri options="article" }}" class="pull-left sub-item photo">
    <img src="{{ $image->src }}" alt="uno">
{{else}}
<a href="{{ uri options="article" }}#video-cont-label" class="pull-left sub-item video">
  <img style="background: #000 url({{ $image->src }});" src="{{url static_file='_img/player.png'}}" alt="uno">
{{/if}}
    <div class="photo-caption">
        <i class="icon-camera icon-white"></i>
        <i class="icon-headphones icon-white"></i>
        <i class="icon-film icon-white"></i>
    </div>
</a>
{{ /image }}

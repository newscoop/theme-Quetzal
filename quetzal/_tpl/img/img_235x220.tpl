{{ image rendition="multimedia"}}
{{ if $where=='slideshow'}}
<a href="{{ uri options="article" }}" class="pull-left sub-item photo">
    <img src="{{ $image->src }}" alt="uno">
{{else}}
<a href="{{ uri options="article" }}" class="pull-left sub-item video">
  <img style="background: #000;" src="{{url static_file='_img/player.png'}}" alt="uno">
{{/if}}
    <div class="photo-caption">
        {{ $image->caption }}
    </div>
</a>
{{ /image }}

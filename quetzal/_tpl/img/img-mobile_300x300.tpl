{{ image rendition="articlesquare" }}
<figure class="hidden-desktop">
    <img src="{{ $image->src }}" width="{{ $image->width }}" height="{{ $image->height }}" alt="{{ $image->photographer }}: {{ $image->caption }}" />
        <figcaption>{{ $image->caption}}</figcaption>
</figure>
{{ /image }}

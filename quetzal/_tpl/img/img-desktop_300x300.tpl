{{ image rendition="articlesquare" }}
<figure class="aside-figure pull-right visible-desktop">
    <img src="{{ $image->src }}" width="{{ $image->width }}" height="{{ $image->height }}" alt="{{ $image->photographer }}: {{ $image->caption }}" />
        <figcaption>{{ $image->caption}}</figcaption>
</figure>
{{ /image }}

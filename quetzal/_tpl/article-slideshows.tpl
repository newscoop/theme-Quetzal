{{ foreach $gimme->article->slideshows as $slideshow }}
          <h4>{{ $slideshow->headline }}</h4>
          <div id="gallery">
{{ assign var="counter" value=0 }}              
{{ foreach $slideshow->items as $item }}      
{{ assign var="counter" value=$counter+1 }}
              <img src="{{ $item->image->src }}" />                
{{ /foreach }}
          </div>

          <!-- Gallery vendor plugin -->
          <script>
            Galleria.loadTheme('{{ url static_file='_js/vendor/galleria/themes/classic/galleria.classic.min.js'}}');
            Galleria.run('#gallery');
          </script>

{{ /foreach }}

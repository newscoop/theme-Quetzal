{{ foreach $gimme->article->slideshows as $slideshow }}
          <h3>Article Gallery</h3>
          <h4>{{ $slideshow->headline }}</h4>
          <div id="gallery">
{{ assign var="counter" value=0 }}              
{{ foreach $slideshow->items as $item }}      
{{ assign var="counter" value=$counter+1 }}
                <img src="{{ $item->image->src }}" />                
{{ /foreach }}
            </div><!-- /#gallery -->
            <!-- BYRON: mover esto al css oficial sin esto no funciona -->
            <style>
            #gallery{ min-width: 320px; max-width: 600px; min-height: 300px; max-height: 400px; background: #000 }
            </style>
            <script>
            Galleria.loadTheme('{{ url static_file='_js/vendor/galleria/themes/classic/galleria.classic.min.js'}}');
            Galleria.run('#gallery');
            </script>
{{ /foreach }}

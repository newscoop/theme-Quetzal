<div class="span4 hidden-tablet">
    <!-- MAP WIDGET -->
    <div class="widget-map">
        <header class="widget-wrap">
            <h4>News near you</h4>
        </header>
        <section class="widget-wrap">
            <figure class="map">
            {{* All possible constraints for setting the map you can see here:
            https://wiki.sourcefabric.org/display/CS/Dynamic+maps+-+Constraints *}}
            {{ set_map
                label="Latest locations"
                issues="_current"
                max_points=5
            }}

            {{* Options for displaying the map are described here:
            https://wiki.sourcefabric.org/display/CS/Dynamic+maps+-+Display *}}
            {{ map
                show_locations_list=false
                show_reset_link=false
                area_show="focus"
                width="100%"
                height="250"
                show_open_link=true
                open_map_on_click=false
                popup_width="1000"
                popup_height="750"
                max_zoom=15
                map_margin=20
                area_show="focus"
            }}
            </figure>
            <div class="badges">
                <a href="#" class="map-badge">New in place <i class="icon-center"></i></a>
                <a href="#" class="map-badge">Another new in place <i class="icon-center"></i></a>
                <a href="#" class="map-badge">New in place <i class="icon-center"></i></a>
            </div>
        </section>
        <footer>
            <hr>
            <div class="widget-wrap">
                <i class="icon-center"></i> Center a place
            </div>
        </footer>
    </div>
</div>

        <!-- FOOTER -->
        <footer id="main-footer">
            <div class="container">                
                <!-- FOOTER INFO -->
                <div class="row footer-info">
                    <div class="span3 about-us right-separator visible-desktop">
                        <h4>About us</h4>
                        <div class="pad10right">
                            Etiam porta sem malesuada magna mollis euismod. Cras mattis consectetur purus sit amet fermentum. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Cras mattis consectetur<br>
                            <a href="#" class="red-text">More about us +</a>
                        </div>
                    </div>
                    <div class="span4 categories right-separator visible-desktop">
                        <h4>Sections</h4>
                        <div class="row">
                            <div class="span2">
                                <ul>
                                    {{ list_sections }}
                                    <li><a href="{{ url options="section" }} title="{{ $gimme->section->name }}"> {{ $gimme->section->name }}</a></li>
                                    {{ /list_sections }}
                                </ul>
                            </div>
                            <!--<div class="span2">
                                <ul>
                                    <li><a href="#">Environment</a></li>
                                    <li><a href="#">Multimedia</a></li>                                    
                                </ul>
                            </div>-->
                        </div>
                    </div>
                    <div class="span3 more-links right-separator visible-desktop">
                        <h4>More links</h4>
                        <ul>
                            <li><a href="#">About us</a></li>
                            <li><a href="#">Terms and conditions</a></li>
                            <li><a href="#">Contact</a></li>
                            <li><a href="#">Follow us on twitter</a></li>
                            <li><a href="#">Become a facebook fan</a></li>
                            <li><a href="#">Sign up to our newsletter</a></li>
                            <li><a href="#">Subscribe to our feed</a></li>                            
                        </ul>
                    </div>
                    <div class="span2 contact-us visible-desktop">
                        <h4>Contact us</h4>
                        <div class="info">
                            <span class="red-text">Email</span>
                            support@domain.com
                        </div>

                        <div class="info">
                            <span class="red-text">Address</span>
                            New York, NY 10021-3528
                        </div>

                        <div class="info">
                            <span class="red-text">Phone</span>
                            +1 (502) 2468-4984
                        </div>
                    </div>

                    <!-- FOOTER TABLET VISIBLE HOME ONLY -->
                    <div class="span12 visible-tablet tablet-map">
                        <div class="widget-map">                            
                            <h4 class="widget-wrap">News near you</h4>                            
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
                            <div class="widget-footer">
                                <hr>
                                <div class="widget-wrap">
                                    <i class="icon-center"></i> Center a place
                                    <a href="#" class="btn btn-red pull-right">Back to Top</a>
                                </div>
                            </div>
                        </div>
                    </div>

                    <!-- FOOTER MOBILE VISIBLE -->
                    <div class="span12 visible-phone action-buttons">
                        <a href="#" class="btn btn-large btn-red">Back to Top</a>
                        <a href="#" class="btn btn-large btn-gray">Web Version</a>
                    </div>
                </div>

                <!-- FOOTER BRAND AND COPYRIGHT -->
                <div class="row footer-brand">
                    <div class="span12">
                        <a href="/" class="visible-desktop">
                            <img class="logo-footer" src="{{ url static_file='_img/newscoop-quetzal-logo-footer.png' }}">
                        </a>
                        Copyright 2013. All rights reserved. Newscoop Quetzal Theme
                    </div>
                </div>
            </div>
        </footer>

{{ include file="_tpl/_html-head.tpl" }}

<body>
<!--[if lt IE 7]>
    <p class="chromeframe">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> or <a href="http://www.google.com/chromeframe/?redirect=true">activate Google Chrome Frame</a> to improve your experience.</p>
<![endif]-->
 
{{ include file="_tpl/header.tpl" }}
<section role="main" class="internal-page section-page">
    <div class="wrapper">

        {{ include file="_tpl/dashboard-header.tpl" }}

        <div class="container">
            <section id="content">
                <div class="row home-featured-news">
                    <div class="span4">
                        <header>
                            <h3>Welcome {{ $user->name }}</h3>
                        </header>

                        {{ $form }}
                    </div>
                    <div class="span4">
                        <figure class="user-image threecol">
                            <img src="{{ include file="_tpl/user-image.tpl" user=$user width=175 height=210 }}" style="max-width: 100%" rel="resizable" />
                        </figure>
                    </div>
                {{ include file="_tpl/user-sidebar.tpl" }}          

                </div> <!--end div class="row"-->
            </section> <!-- end section id=content -->
        </div> <!-- end div class='container' -->
    </div> <!-- end div class='wrapper' -->
</section> <!-- end section role main -->

{{ include file="_tpl/footer.tpl" }}

{{ include file="_tpl/_html-foot.tpl" }}


{{ include file="_tpl/_html-head.tpl" }}

<body>
<!--[if lt IE 7]>
    <p class="chromeframe">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> or <a href="http://www.google.com/chromeframe/?redirect=true">activate Google Chrome Frame</a> to improve your experience.</p>
<![endif]-->
 
{{ include file="_tpl/header.tpl" }}
<section role="main" class="internal-page section-page">
    <div class="wrapper">

        {{ include file="_tpl/user-header.tpl" }}

        <div class="container">
            <section id="content">
                <div class="row home-featured-news">
                    <div class="span8">
                        <h3>Please fill your data</h3>
                        <fieldset class="background-block">
                        {{ $form }}
                        </fieldset>

                        <script type="text/javascript">
                        $('#first_name, #last_name').keyup(function() {
                            $.post('{{ $view->url(['controller' => 'register', 'action' => 'generate-username'], 'default') }}?format=json', {
                                'first_name': $('#first_name').val(),
                                'last_name': $('#last_name').val()
                            }, function (data) {
                                $('#username').val(data.username).css('color', 'green');
                            }, 'json');
                        });

                        $('#username').change(function() {
                            $.post('{{ $view->url(['controller' => 'register', 'action' => 'check-username'], 'default') }}?format=json', {
                                'username': $(this).val()
                            }, function (data) {
                                if (data.status) {
                                    $('#username').css('color', 'green');
                                } else {
                                    $('#username').css('color', 'red');
                                }
                            }, 'json');
                        }).keyup(function() {
                            $(this).change();
                        });
                        </script>
                    </div> 
                    {{ include file="_tpl/user-sidebar.tpl" }}          

                </div> <!--end div class="row"-->
            </section> <!-- end section id=content -->
        </div> <!-- end div class='container' -->
    </div> <!-- end div class='wrapper' -->
</section> <!-- end section role main -->

{{ include file="_tpl/footer.tpl" }}

{{ include file="_tpl/_html-foot.tpl" }}


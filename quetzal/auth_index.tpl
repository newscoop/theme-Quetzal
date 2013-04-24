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
                        <header>
                            <h3>Login</h3>
                        </header>
                        <form action="{{ $form->getAction() }}" method="{{ $form->getMethod() }}">
                            <fieldset>
                            {{ if $form->isErrors() }}
                            <div class="alert alert-error">
                                <h5>Login failed</h5>
                                <p>Either your email or password is wrong.</p>
                                <p>Try again please!</p>
                                <p><a class="register-link" href="{{ $view->url(['controller' => 'auth', 'action' => 'password-restore']) }}">Forgot your password?</a></p>
                            </div>
                            {{ /if }}
                            </fieldset>
                            <fieldset class="background-block login">
                            <dl>
                                {{ $form->email->setLabel("E-mail")->removeDecorator('Errors') }}
                                {{ $form->password->setLabel("Password")->removeDecorator('Errors') }}
                                <dt class="empty">&nbsp;</dt>
                                <dd>
                                    <span class="input-info">
                                        <a class="register-link" href="{{ $view->url(['controller' => 'register', 'action' => 'index']) }}">Register</a>
                                        <a class="register-link" href="{{ $view->url(['controller' => 'auth', 'action' => 'password-restore']) }}">Forgot password?</a>
                                    </span>
                                </dd>
                            </dl>
                            <div class="form-buttons right">
                                <input type="submit" id="submit" class="button big" value="Login" />
                            </div>
                            </fieldset>
                        </form>

                    </div> 
                    {{ include file="_tpl/user-sidebar.tpl" }}          

                </div> <!--end div class="row"-->
            </section> <!-- end section id=content -->
        </div> <!-- end div class='container' -->
    </div> <!-- end div class='wrapper' -->
</section> <!-- end section role main -->

{{ include file="_tpl/footer.tpl" }}

{{ include file="_tpl/_html-foot.tpl" }}

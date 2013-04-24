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
                            <h3>Set new Password</h3>
                        </header>
                        <form action="{{ $form->getAction() }}" method="{{ $form->getMethod() }}">
                            <fieldset>
                                {{ if $form->isErrors() }}
                                <div class="alert alert-error">
                                    <p>Your password could not be changed. Please follow the instructions and try again.</p>
                                </div>
                                {{ /if }}
                            </fieldset>
                            <fieldset class="fixBackground background-block login">
                                <dl>
                                        {{ $form->password->setLabel("Neues Passwort")->removeDecorator('Errors') }}
                                        {{ if $form->password->hasErrors() }}
                                        <dt class="info-block">&nbsp;</dt>
                                        <dd class="info-block">
                                            <span class="error-info">Please enter your new password (minimum 6 characters)</span>
                                        </dd>
                                        {{ /if }}
                                </dl>
                                <dl>
                                        {{ $form->password_confirm->setLabel("Retype your password")->removeDecorator('Errors') }}
                                        {{ if $form->password_confirm->hasErrors() && !$form->password->hasErrors() }}
                                        <dt class="info-block">&nbsp;</dt>
                                        <dd class="info-block">
                                            <span class="error-info">The confirmation of your password does not match your password.</span>
                                        </dd>
                                        {{ /if }}
                                 </dl>
                                <div class="form-buttons right">
                                    <input type="submit" id="submit" class="button" value="Save password" />
                                </div>
                            </fieldset>
                            </form>
                    {{ include file="_tpl/user-sidebar.tpl" }}          

                </div> <!--end div class="row"-->
            </section> <!-- end section id=content -->
        </div> <!-- end div class='container' -->
    </div> <!-- end div class='wrapper' -->
</section> <!-- end section role main -->

{{ include file="_tpl/footer.tpl" }}

{{ include file="_tpl/_html-foot.tpl" }}

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
                        <h3>Reset Password</h3>
                     </header>
                     <form action="{{ $form->getAction() }}" method="{{ $form->getMethod() }}">
                         <fieldset>
                             {{ if $form->email->hasErrors() }}
                             <div class="alert alert-error">
                                 <h5>E-mail is not correct</h5>
                                 <p>Maybe you registered on <em>{{ $gimme->publication->name }}</em> with another e-mail account?</p>
                             </div>
                             {{ /if }}
                         </fieldset>
                         <fieldset class="background-block login">
                             <dl> {{ $form->email->setLabel("E-Mail")->removeDecorator('Errors') }}</dl>
                             <div class="form-buttons right">
                                 <input type="submit" id="submit" class="button" value="Request new password" />
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

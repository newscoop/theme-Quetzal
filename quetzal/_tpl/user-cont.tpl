<div class="span8">
    <form action="{{ $view->url(['controller' => 'user', 'action' => 'search'], 'default', true) }}" method="GET">
        <div class="input-append">
            <input type="search" placeholder="Search" name="q">
            <button class="btn" type="button"><i class="icon-search"></i></button>
        </div>
        <div class="clearfix"></div>
    </form>

    <section class="user-list">
        {{ foreach $users as $user }}
        <div class="row">

            <article class="span4 user-entry">
                <a href="{{ $view->url(['username' => $user->uname], 'user') }}" class="pull-left user-picture"><img src="{{ include file="_tpl/user-image.tpl" user=$user width=50 height=50 }}" alt="User Name"></a>
                <h1><a class="red-text" href="{{ $view->url(['username' => $user->uname], 'user') }}">{{ $user->uname }}</a></h1>
                <span class="gray-text">Member since <time class="timeago" datetime="{{ $user->created|date_format:'%Y-%m-%d' }} 06:00:00">{{ $user->created|date_format:"%Y-%m-%d" }} 06:00:00</time></span><br>
                <span>{{ $user->posts_count }}&nbsp;posts</span>
                <div class="clearfix"></div>
            </article>
            <!--
            <article class="span4 user-entry">
                <a href="#" class="pull-left user-picture"><img src="img/user-icon.png" alt="User Name"></a>
                <h1><a class="red-text" href="#">User Name</a></h1>
                <span class="gray-text">Member since 2 years ago</span><br>
                <span>34 posts</span>
                <div class="clearfix"></div>
            </article>
            -->
        </div>
        <hr>
        {{ /foreach }}
    </section>

</div>

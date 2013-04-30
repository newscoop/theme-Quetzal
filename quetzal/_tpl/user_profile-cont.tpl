<div class="span6">
    <img class="pull-left profile-picture" src="{{ include file='_tpl/user-image.tpl' user=$user width=175 height=210 }}" alt="Profile Picture"> 
    <div class="profile-info">
        <h1>{{ $user->first_name }} {{ $user->last_name }} ({{$user->uname}})</h1>
        <p><b>Gender</b> {{ $profile['gender'] }}</p>
        <p><b>Organisation</b> {{ $profile['organisation']}}</p>
        <p><b>Website</b> <a class="red-text" href="{{ $profile['website']|escape:url}}">http://{{ $profile['website']|escape}}</a></p>
        <p><b>Date of birth</b> {{ $profile['birth_date'] }}</p>
        <p><b>Twitter</b> {{ $profile['twitter'] }}</p>

        <p class="member-since">Member since <time class="timeago" datetime="{{ $user->created }}">{{ $user->created }}</time></p>
        <p class="member-post">{{ $user->posts_count }} posts</p>
    </div>
    <div class="clearfix"></div>
</div>
<div class="span6">                                                                
    <h3>ABOUT</h3>
    <div class="about-text">
        {{ $profile['bio']}}
    </div>
</div>

<div>
	<h2>Profile Information</h2>
	<div class='profile'>

		Name: <?=$user->first_name?> <?=$user->last_name?> <br>
		Email address: <?=$user->email?> <br>

	    <?php if($user->site != ""): ?>
			Web Site: <?=$user->site?><br>
	    <?php endif; ?>

	    <?php if($user->location != ""): ?>
			Location: <?=$user->location?><br>
	    <?php endif; ?>

	   	<?php if($user->profile_pic != ""): ?>
			<br>
			<img src="<?=$user->profile_pic?>" alt="<?=basename($user->profile_pic)?>" width=200><br>
	    <?php endif; ?>

	    <br>
	    <a href='/users/editprofile'>Edit Profile?</a>

	</div>

	<h2>User Posts</h2>
	<div class='post'>
		<?php foreach($posts as $post): ?>

			<article id='post'>

			    <p><?=$post['content']?></p>

			    <p><time datetime="<?=Time::display($post['modified'],'Y-m-d g:i')?>">
			        <?=Time::display($post['modified'])?>
			    </time></p>

			    <a href='/posts/edit/<?=$post['post_id']?>'>Edit?</a>
			    <a href='/posts/delete/<?=$post['post_id']?>'>Delete?</a>

			</article>

		<?php endforeach; ?>
	</div>
</div>

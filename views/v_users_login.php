<div class='profile'>
	<h2>Log in</h2>

	<form method='POST' class='profileForm' action='/users/p_login'>

		Email<br> <input type='text' name='email' size=50 autofocus><br>

		Password<br> <input type='password' name='password' size=50><br>

	    <?php if(isset($error)): ?>
	        <div class='error'>
	            Login failed. Please double check your email and password.
	        </div>
	        <br>
	    <?php endif; ?>
		
		<input type='Submit' value='Log in'>	

	</form>
</div>
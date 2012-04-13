	<body>
		<div>
			<form name="form_login" id='form_login' method="POST" action="controllers/try_login.php">
				<label for="login">Email:</label>
				<input type="text" id="login" name ="login"/>
				<br/>
				<label for="password">Senha:</label>
				<input type="password" id="password" name ="password"/>
				<br/>
				<input type="button" id="try_login" name ="try_login" value='Entrar' onclick="return validateLoginRequest();"/>
				<br/>
				<input type="button" id="register" value='Não sou cadastrado' onclick="location.href='controllers/register_form.php'"/>
				<br/>
			</form>
		</div>
	</body>


<?php require_once('controllers/header.php'); ?>

<script type="text/javascript">
	
</script>

<form id='register' action='register.php' method='post' accept-charset='UTF-8'>
	<fieldset >
		<legend>Registro de novo Aluno</legend>
		<label for='name' >Nome*: </label>
		<input type='text' name='name' id='name' maxlength="50" /><br/>
		<label for='email' >Email*:</label>
		<input type='text' name='email' id='email' maxlength="50" onchange="check_if_existent"/><br/>
		<label for='password' >Senha*:</label>
		<input type='password' name='password' id='password' maxlength="20" /><br/><br/>
		<label for='password_conf' >Confirmação de Senha*:</label>
		<input type='text' name='password_conf' id='password_conf' maxlength="20" /><br/><br/>
		
		<label for='inst_type' >Tipo de instituição de ensino:</label>
			<input type='radio' name='inst_type' id='inst_public' value='public' checked> Pública
			<input type='radio' name='inst_type' id='inst_private' value='private'> Privada<br/>
		<label for='inst_name' >Nome da instituição de ensino:</label>
		<input type='text' name='inst_name' id='inst_name' maxlength="50" /><br/>
		<br/>
			
		<input type='submit' name='Submit' value='Salvar' disabled/><br/>
		<span style='color:red'>Os campos com "*" são obrigatórios</span>
	</fieldset>
</form>
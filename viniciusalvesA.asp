<%@ LANGUAGE="VBSCRIPT"%>

<%response.buffer=true%>
<html>
<head>
<TITLE>Tela A</TITLE>

<link rel="icon" type="image/png" href="https://www.topdown.com.br/favicon.ico"/>
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css" href="vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css" href="fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css" href="vendor/animate/animate.css">
<!--===============================================================================================-->	
<link rel="stylesheet" type="text/css" href="vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css" href="vendor/select2/select2.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css" href="css/util.css">
<link rel="stylesheet" type="text/css" href="css/main.css">

</head>


<script language="javascript" type="text/javascript">
function validar() {
var nome = form.nome.value;
var cpf = form.cpf.value;
var dataNascimento = form.dataNascimento.value;

if (nome == "") {
alert('Preencha o campo com seu nome');
form.nome.focus();
return false;
}

if (cpf == "") {
alert('Preencha o seu cpf');
form.cpf.focus();
return false;
}

if (dataNascimento == "") {
alert('Preencha a data de nascimento');
form.dataNascimento.focus();
return false;
}
else{
	alert('Dados salvos com sucesso');
	document.form.action = "viniciusalvesB.asp";
}

}
</script>

<body>
<%
session("nome")=request("nome")
session("cpf")=request("cpf")
session("dataNascimento")=request("dataNascimento")
%>

<div class="limiter">
    <div class="container-login100">
        <div class="wrap-login100">

            <div class="login100-pic js-tilt" data-tilt>
                <img src="https://o.remove.bg/downloads/8bf0222d-6eb5-47e2-9fa5-72d4ddf1bd43/image-removebg-preview.png" alt="IMG">
            </div>


            <form  class="login100-form validate-form" name="form"  method="post" onSubmit="return validar()">			
                
                <div class="login100-form-title">
                    <%Response.Write "Preencha o Forms"%>
                </div> 


                <div class="wrap-input100 validate-input">
                    Qual o seu Nome: <br>
                    <input class="input100" type="text" name="nome" size="20" value="<%=session("nome")%>"><br>
                    <span class="focus-input100"></span>
                            <span class="symbol-input100">
                                <i class="fa fa-user" aria-hidden="true"></i>
                            </span>
                </div>
               

                <div class="wrap-input100 validate-input">
                    Qual o seu CPF: <br>
                    <input  id="cpf" class="input100" type="number" name="cpf"  size="20" value="<%=session("cpf")%>"><br>
                    <span class="focus-input100"></span>
						<span class="symbol-input100">
							<i class="fa fa-id-card-o" aria-hidden="true"></i>
						</span>
                </div>
               

                <div class="wrap-input100 validate-input">
                    Qual a sua Data de Nascimento:<br>
                    <input class="input100" type="date" name="dataNascimento" size="20" value="<%=session("dataNascimento")%>">
                    <span class="focus-input100"></span>
                        <span class="symbol-input100">
                            <i class="fa fa-calendar" aria-hidden="true"></i>
                        </span>
                </div>

                <div class="container-login100-form-btn">
                    <input  class="login100-form-btn" type="submit" value="Salvar" id="botao">
                </div>
            </form>
        </div>
    </div>
</div>

    <script src="vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/bootstrap/js/popper.js"></script>
	<script src="vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/select2/select2.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/tilt/tilt.jquery.min.js"></script>
	<script >
		$('.js-tilt').tilt({
			scale: 1.1
		})
	</script>
<!--===============================================================================================-->
	<script src="js/main.js"></script>

</body>
</html>
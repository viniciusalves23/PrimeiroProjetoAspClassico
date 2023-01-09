<%@ LANGUAGE="VBSCRIPT" %>

<%response.buffer=true%>
<html>
<html>
<head>
<TITLE>Tela B</TITLE>

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

<% 
session("nome")=request("nome")
session("cpf")=request("cpf")
session("dataNascimento")=request("dataNascimento")
%>

<body>
    <div class="limiter1">   
        <div class="container-login1001">

           
            <div class="wrap-login1001">

                <div class="login1001-pic js-tilt" data-tilt>
					<img src="https://o.remove.bg/downloads/8bf0222d-6eb5-47e2-9fa5-72d4ddf1bd43/image-removebg-preview.png" alt="IMG">
                </div>
                
                Ola <h5> <%=session("nome")%> !</h5><p>
                Obrigado por fornecer os seus dados pessoais!<p>
                <p>O seu cpf: </p><%=session("cpf")%><br>
                <p>Sua data de nascimento:</p> <%=session("dataNascimento")%>
            </div>
        </div>
    </div>
</body>
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

<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>

<!--===============================================================================================-->
	<script src="js/main.js"></script>
</html>

<!-- 
    body>
    <div class="limiter">   
        <div class="container-login100">
            <div class="wrap-login100">
                Ola <%=session("nome")%><p>
                Obrigado por fornecer os seus dados pessoais<p>
                O seu cpf: <%=session("cpf")%><br>
                Sua data de nascimento: <%=session("dataNascimento")%>
            </div>
        </div>
    </div>
</body>
 -->
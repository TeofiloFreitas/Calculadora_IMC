<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%
		String pesoParam = request.getParameter("peso");
		String alturaParam = request.getParameter("altura");
		String anoParam = request.getParameter("ano");
		
		float peso = Float.parseFloat(pesoParam);
		float altura = Float.parseFloat(alturaParam);
		int ano = Integer.parseInt(anoParam);
		int idade = 2020 - ano;
		
		float IMC = peso / (altura * altura);
		
		String res = null;
		
		if(idade <= 60){
			if(IMC < 18.5){
				res = "Abaixo do peso";
			}else if(IMC < 25){
				res = "Peso normal";
			}else if(IMC < 30){
				res = "Sobrepeso";
			}else if(IMC < 35){
				res = "Obesidade Grau 1";
			}else if(IMC < 40){
				res = "Obesidade Grau 2";
			}else{
				res = "Obesidade Grau 3";
			}
		}else{
			if(IMC < 22){
				res = "Baixo peso";
			}else if(IMC < 27){
				res = "Peso normal";
			}else{
				res = "Obesidade";
			}
		}
		
		response.sendRedirect("resultado.jsp?resultado="+res);
		
		
	%>
</body>
</html>
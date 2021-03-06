<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
  <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
  <%@ taglib uri="http://www.springframework.org/tags" prefix="s" %>
  <%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
  

<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
    
<!DOCTYPE html>
<html lang="pt-br">
<head>
  <title>Bootstrap 4 Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  
  <%-- 
  
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.6/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/js/bootstrap.min.js"></script> 
  
  --%>
  
  <%@ include file="/resources/styles.jsp" %>
  
  <style>textarea:focus, input:focus, input[type]:focus, .uneditable-input:focus {   
       border-color: rgba(229, 103, 23, 0.8);
      box-shadow: 0 1px 1px rgba(252, 3, 198, 0.26) inset, 0 0 8px rgba(255, 0, 221, 0.795);
      outline: 0 none;
  } </style>
</head>
<body>


    <nav class="navbar navbar-expand-md navbar-dark" style="background-color:rgb(224, 39, 147)">
        <!-- Brand -->
        <a class="navbar-brand" href="#">BelAgenda</a>
      
        <!-- Toggler/collapsibe Button -->
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsibleNavbar">
          <span class="navbar-toggler-icon"></span>
        </button>
      
        <!-- Navbar links -->
        <div class="collapse navbar-collapse" id="collapsibleNavbar">
          <ul class="navbar-nav">
            <li class="nav-item">
              <a class="nav-link" href="#">Cadastro</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="#">Agendas</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="#">Servi�os</a>
            </li>
            
          </ul>
        </div> 
      </nav>


<div class="container-fluid">
  <h1>Criar cadastro</h1>
  <p>Insira seus dados para criar sua conta</p> 

  <!--<div class="row">
      <div class="col" style="background-color:lavender;">.col</div>
      <div class="col" style="background-color:orange;">.col</div>
      <div class="col" style="background-color:lavender;">.col</div>
  </div>-->

  
  
  <c:if test="${not empty pf.idPessoaFisica}">
   <form action="alteraPessoa" method="POST">                   
  
  
    <div class="row">
      
      
      <div class="col-sm-4">
        <div class="form-group">
          <label for="idPessoaFisica">Codigo:</label>
          <input type="text" class="form-control" id="idPessoaFisica" name="idPessoaFisica"
          value="${pf.idPessoaFisica}">
        </div>
      </div>
      
      <div class="col-sm-4">
        <div class="form-group">
          <label for="nmPessoaFisica">Nome:</label>
          <input type="text" class="form-control" id="nmPessoaFisica" name="nmPessoaFisica"
          value="${pf.nmPessoaFisica}">
        </div>
      </div>

      <div class="col-sm-4">   
        <div class="form-group">
            <label for="dtNascimento">Nascimento:</label>
            <input type="date" class="form-control" id="dtNascimento" name="dtNascimento"
            value="${pf.dtNascimento}">
        </div>      
      </div>

      <div class="col-sm-4">   
          <div class="form-group">
              <label for="cpf">CPF:</label>
              <input type="text" class="form-control" id="cpf" name="cpf" value="${pf.cpf}">
          </div>      
      </div>

      <div class="col-sm-4">   
          <div class="form-group">
              <label for="rg">RG:</label>
              <input type="text" class="form-control" id="rg" name="rg" value="${pf.rg}">
          </div>      
      </div>

      <div class="col-sm-4">   
          <div class="form-group">
              <label for="celular">Celular:</label>
              <input type="number" class="form-control" id="celular" name="celular" value="${pf.celular}">
          </div>      
      </div>

      <div class="col-sm-4">   
          <div class="form-group">
              <label for="email">E-mail:</label>
              <input type="email" class="form-control" id="email" name="email" value="${pf.email}">
          </div>      
      </div>




      <div class="col-sm-4">
        <div class="form-check">
            <label class="form-check-label">
               <input class="form-check-input" type="checkbox"> Remember me
            </label>
        </div>
      </div>

    </div>
    <button type="submit" class="btn btn-primary">Submit</button>
    </form>
    </c:if>
    
    <c:if test="${empty pf.idPessoaFisica}">
    <form action="adicionaPessoa" method="POST">
    
    
    <div class="row">
      
      
      <div class="col-sm-4">
        <div class="form-group">
          <label for="nmPessoaFisica">Nome:</label>
          <input type="text" class="form-control" id="nmPessoaFisica" name="nmPessoaFisica"
          >
        </div>
      </div>

      <div class="col-sm-4">   
        <div class="form-group">
            <label for="dtNascimento">Nascimento:</label>
            <input type="date" class="form-control" id="dtNascimento" name="dtNascimento"
            >
        </div>      
      </div>

      <div class="col-sm-4">   
          <div class="form-group">
              <label for="cpf">CPF:</label>
              <input type="text" class="form-control" id="cpf" name="cpf" >
          </div>      
      </div>

      <div class="col-sm-4">   
          <div class="form-group">
              <label for="rg">RG:</label>
              <input type="text" class="form-control" id="rg" name="rg">
          </div>      
      </div>

      <div class="col-sm-4">   
          <div class="form-group">
              <label for="celular">Celular:</label>
              <input type="number" class="form-control" id="celular" name="celular">
          </div>      
      </div>

      <div class="col-sm-4">   
          <div class="form-group">
              <label for="email">E-mail:</label>
              <input type="email" class="form-control" id="email" name="email">
          </div>      
      </div>




      <div class="col-sm-4">
        <div class="form-check">
            <label class="form-check-label">
               <input class="form-check-input" type="checkbox"> Remember me
            </label>
        </div>
      </div>

    </div>
    <button type="submit" class="btn btn-primary">Submit</button>
    </form>
    </c:if>
    
    
    
  
</div>

</body>
</html>
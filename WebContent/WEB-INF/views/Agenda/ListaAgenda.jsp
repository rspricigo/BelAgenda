<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html lang="en">
<head>
  <title>Bootstrap 4 Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.6/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/js/bootstrap.min.js"></script>
  <style>textarea:focus, input:focus, input[type]:focus, .uneditable-input:focus {   
       border-color: rgba(229, 103, 23, 0.8);
      box-shadow: 0 1px 1px rgba(252, 3, 198, 0.26) inset, 0 0 8px rgba(255, 0, 221, 0.795);
      outline: 0 none;
  }</style>
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



<table class="table" id="tabela">
                
                <thead>
                  <tr>
                    <th>Codigo</th>
                    <th>Descri��o</th>
                    <th>Profissional</th>
                    
                  </tr>
                </thead>
                <tbody>
<c:forEach items="${agendas}" var="agenda">
<tr>
<td>${agenda.idAgenda}</td>
<td>${agenda.nmAgenda}</td>
<td>${agenda.idPessoa.nmPessoaFisica}</td>
</tr>

</c:forEach>



</tbody>

</table>

</div>

</body>
</html>


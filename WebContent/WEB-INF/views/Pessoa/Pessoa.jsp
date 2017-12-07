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
              <a class="nav-link" href="#">Serviços</a>
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

  <form>
    <div class="row">
      
      
      <div class="col-sm-4">
        <div class="form-group">
          <label for="nmPessoaFisica">Nome:</label>
          <input type="text" class="form-control" id="nmPessoaFisica">
        </div>
      </div>

      <div class="col-sm-4">   
        <div class="form-group">
            <label for="dtNascimento">Nascimento:</label>
            <input type="date" class="form-control" id="dtNascimento">
        </div>      
      </div>

      <div class="col-sm-4">   
          <div class="form-group">
              <label for="cpf">CPF:</label>
              <input type="text" class="form-control" id="cpf">
          </div>      
      </div>

      <div class="col-sm-4">   
          <div class="form-group">
              <label for="rg">RG:</label>
              <input type="text" class="form-control" id="rg">
          </div>      
      </div>

      <div class="col-sm-4">   
          <div class="form-group">
              <label for="celular">Celular:</label>
              <input type="number" class="form-control" id="celular">
          </div>      
      </div>

      <div class="col-sm-4">   
          <div class="form-group">
              <label for="email">E-mail:</label>
              <input type="email" class="form-control" id="email">
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
</div>

</body>
</html>
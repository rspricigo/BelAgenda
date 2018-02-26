<!DOCTYPE html>
<html lang="pt-br">
<head>
  <title>Agenda Salão</title>
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
  <h1>Criar Agenda</h1>
  <p>Escolha um nome e selecione um profissional</p> 

  <!--<div class="row">
      <div class="col" style="background-color:lavender;">.col</div>
      <div class="col" style="background-color:orange;">.col</div>
      <div class="col" style="background-color:lavender;">.col</div>
  </div>-->
  


  <form action="adicionaAgenda" method="POST">

    <input type="hidden" id="idPessoa" name="idPessoa">
    <div class="row">
        
        
          
          
          <div class="col-sm-6">
            <div class="form-group">
              <label for="nmAgenda">Nome:</label>
              <input type="text" class="form-control" name="nmAgenda" id="nmAgenda" >
            </div>
          </div>

          <div class="col-sm-6">   
            <div class="form-group">
              <label for="nmPessoaFisica">Profissional:</label>
              <input type="text" class="form-control"  id="nmPessoaFisica" data-toggle="modal" data-target="#myModal">
            </div>      
          </div>
    </div>
    <button type="submit" class="btn btn-primary">Submit</button>
  </form>

 <!-- <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#myModal">
      Buscar Mae
  </button> -->
  
  <!-- The Modal -->
    <div class="modal fade" id="myModal">
      <div class="modal-dialog modal-lg">
        <div class="modal-content">
  
          <!-- Modal Header -->
          <div class="modal-header">
            <h4 class="modal-title">Localizar Profissional</h4>
            <button type="button" class="close" data-dismiss="modal">&times;</button>
          </div>
  
          <!-- Modal body -->
          <div class="modal-body">
            <div class="container-fluid">
              
              <!--<div class="row">
              <div class="col" style="background-color:lavender;">.col</div>
              <div class="col" style="background-color:orange;">.col</div>
              <div class="col" style="background-color:lavender;">.col</div>
              </div>-->
  
              <form>

                
                <div class="row">
                  
                    <div class="col-sm-6">
                        <div class="form-group">
                          <label for="nmPessoa">Nome:</label>
                          <input type="text" class="form-control" name="nmPessoa" id="nmPessoa" onkeypress="buscaProfissional()">
                        </div>
                    </div>
  
                  
                </div>
                <button type="button" class="btn btn-primary">Localizar</button>
              </form>
            </div>
                
            <div class="container">
              <table id="pessoaAgenda" class="table">
                
                <thead>
                  <tr>
                    <th>Codigo</th>
                    <th>Nome</th>
                    <th>Data Nascimento</th>
                    <th>CPF</th>
                    <th>RG</th>
                    <th>Celular</th>
                    <th>Email</th>
                  </tr>
                </thead>
              </table>
            </div>
          </div>
  
          <!-- Modal footer -->
          <div class="modal-footer">
            <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
          </div>
  
        </div>
      </div>
    </div>
  
</div>
<script>
$(document).ready(function(){
  $("#pessoaAgenda").delegate("tr", "click", function(){
    var nome = null, id = null;
    nome = $(this).find("td").eq(1).text()
    $("#nmPessoaFisica").val(nome);
    id = $(this).find("td").eq(0).text()
    $("#idPessoa").val(id);
    
  });
});   



function buscaProfissional() {
          var a = document.getElementById('nmPessoa');    	
          $.post("listaPorNome", {"nm_pessoa" : a.value}, 
              function (result){
              $("#pessoaAgenda").html(result);
                  })
          ;
         
  
}
</script>
</body>
</html>
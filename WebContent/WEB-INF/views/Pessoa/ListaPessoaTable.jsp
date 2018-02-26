<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<table class="table" id="tabela">
                
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
                <tbody>
<c:forEach items="${pessoas}" var="pessoa">
<tr data-dismiss="modal">
<td>${pessoa.idPessoaFisica}</td>
<td>${pessoa.nmPessoaFisica}</td>
<td>${pessoa.dtNascimento}</td>
<td>${pessoa.cpf}</td>
<td>${pessoa.rg}</td>
<td>${pessoa.celular}</td>
<td>${pessoa.email}</td>
</tr>

</c:forEach>



</tbody>

</table>



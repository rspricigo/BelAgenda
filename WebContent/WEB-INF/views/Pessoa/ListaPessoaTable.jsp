<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<table class="table" id="tabela">
                
                <thead>
                  <tr>
                    <th>Codigo</th>
                    <th>Nome</th>
                    <th>Data Nascimento</th>
                    <th>Celular</th>
                  </tr>
                </thead>
                <tbody>
<c:forEach items="${pessoas}" var="pessoa">
<tr data-dismiss="modal">
<td>${pessoa.idPessoaFisica}</td>
<td>${pessoa.nmPessoaFisica}</td>
<td>${pessoa.dtNascimento}</td>
<td>${pessoa.celular}</td>
</tr>

</c:forEach>



</tbody>

</table>



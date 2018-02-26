<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>


<table class="table" id="tabela">
                
                <thead>
                  <tr>
                    <th>Codigo</th>
                    <th>Descrição</th>
                    <th>Profissional</th>
                    
                  </tr>
                </thead>
                <tbody>
<c:forEach items="${agendas}" var="agenda">
<tr data-dismiss="modal">
<td>${agenda.idAgenda}</td>
<td>${agenda.nmAgenda}</td>
<td>${agenda.idPessoa.nmPessoaFisica}</td>
</tr>

</c:forEach>



</tbody>

</table>



<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="cp" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>

<html>
    <head>
        <title>Novo DVD</title>
        <meta charset="UTF-8">
        <meta name="viewport"
              content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet"
              href="${cp}/css/estilos.css"/>
    </head>

    <body>

        <h1>Novo DVD</h1>

        <form method="post" action="${cp}/processaDVDs">

            <input name="acao" type="hidden" value="inserir"/>

            <table>
                <tr>
                    <td class="alinharDireita">Título: </td>
                    <td>
                        <input name="titulo"
                               type="text"
                               required/>
                    </td>
                </tr>

                <tr>
                    <td class="alinharDireita">Ano Lançamento: </td>
                    <td>
                        <input name="anoLanc"
                               type="text"
                               required/>
                    </td>
                </tr>

                <tr>
                    <td class="alinharDireita">Duração(em minutos): </td>
                    <td>
                        <input name="duracaoMin"
                               type="text"
                               required/>
                    </td>
                </tr>

                <tr>
                    <td class="alinharDireita">Data de Lançamento:</td>
                    <td>
                        <input name="dataLanc"
                               type="date"
                               size="8"
                               placeholder="yyyy-mm-dd"
                               required/>
                    </td>
                </tr>
                <tr>
                    <td class="alinharDireita">Ator/Atriz Principal: </td>
                    <td>

                        <jsp:useBean 
                            id="servicos"
                            scope="page"
                            class="locacaodvds.servicos.AtorServices"/>

                        <select name="atorPrincId" required>
                            <c:forEach items="${servicos.todos}" var="ator">
                                <option value="${ator.id}">
                                    ${ator.nome} ${ator.sobrenome}
                                </option>
                            </c:forEach>
                        </select>

                    </td>
                </tr>

                <tr>
                    <td class="alinharDireita">Ator/Atriz Coadjuvante: </td>
                    <td>

                        <jsp:useBean 
                            id="servicos_ator"
                            scope="page"
                            class="locacaodvds.servicos.AtorServices"/>

                        <select name="atorCoadId" required>
                            <c:forEach items="${servicos_ator.todos}" var="ator">
                                <option value="${ator.id}">
                                    ${ator.nome} ${ator.sobrenome}
                                </option>
                            </c:forEach>
                        </select>

                    </td>
                </tr>

                <tr>
                    <td class="alinharDireita">Classificação Etária: </td>
                    <td>

                        <jsp:useBean 
                            id="servicos_classi"
                            scope="page"
                            class="locacaodvds.servicos.ClassificacaoEtariaServices"/>

                        <select name="classificacaoId" required>
                            <c:forEach items="${servicos_classi.todos}" var="classificacao">
                                <option value="${classificacao.id}">
                                    ${classificacao.descricao}
                                </option>
                            </c:forEach>
                        </select>

                    </td>
                </tr>

                <tr>
                    <td class="alinharDireita">Gênero: </td>
                    <td>

                        <jsp:useBean 
                            id="servicos_gnr"
                            scope="page"
                            class="locacaodvds.servicos.GeneroServices"/>

                        <select name="generoId" required>
                            <c:forEach items="${servicos_gnr.todos}" var="genero">
                                <option value="${genero.id}">
                                    ${genero.descricao}
                                </option>
                            </c:forEach>
                        </select>

                    </td>
                </tr>

                <tr>
                    <td>
                        <a href="${cp}/formularios/dvds/listagem.jsp">Voltar</a>
                    </td>
                    <td class="alinharDireita">
                        <input type="submit" value="Salvar"/>
                    </td>
                </tr>
            </table>

        </form>

    </body>

</html>
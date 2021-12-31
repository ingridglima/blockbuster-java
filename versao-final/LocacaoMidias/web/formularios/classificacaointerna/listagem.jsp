<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="cp" value="${pageContext.request.contextPath}"/>
<c:set var="prefixo" value="processaClassificacaoInterna?acao=preparar"/>
<!DOCTYPE html>

<html class="fundo">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="Cache-Control" content="no-cache, no-store, must-revalidate" />
    <meta http-equiv="Pragma" content="no-cache" />
    <meta http-equiv="Expires" content="0" />
    <meta content="width=device-width, initial-scale=1" name="viewport" />
    <title>Classificação Interna</title>

    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
    <link rel="stylesheet" href="${cp}/css/style.css">
    <link href="https://fonts.googleapis.com/css?family=Lato" rel="stylesheet">
  </head>

  <body class="fundo">
    <header class="main-header">
      <div class="wrap">   
        <div class="main-options">
          <ul class="menu-top">
            <li><img class="logo" src="_logo.PNG" alt="logo"></li>
            <li><a href="${cp}/index.jsp">Página inicial</a></li>
            <li><a href="${cp}/formularios/classificacaointerna/novo.jsp">Cadastro</a></li>
          </ul>
        </div>
      </div>
    </header>
    <div class="front-page"></div>
       <section class="section-information fundo">
            <div class="container">
                <div class="row title-section" id="programa-trainee">
                  <h1 class="title">Classificações Internas Cadastradas</h1>
                </div>
                <table class="table table-hover table-bordered">
                    <thead>
                      <tr>
                        <th>Id</th>
                        <th>Descrição</th>
                        <th>Valor do Aluguel</th>
                        <th>Alterar</th>
                        <th>Excluir</th>
                      </tr>
                    </thead>
                    <tbody>
                      <jsp:useBean
                          id="servicos"
                          scope="page"
                          class="locacaomidias.servicos.ClassificacaoInternaServices"/>

                      <c:forEach items="${servicos.todos}" var="classificacao">
                        <tr>
                          <td>${classificacao.id}</td>
                          <td>${classificacao.descricao}</td>
                          <td>${classificacao.valorAluguel}</td>
                          <td>
                            <a href="${cp}/${prefixo}Alteracao&id=${classificacao.id}">
                              Alterar
                            </a>
                          </td>
                          <td>
                            <a href="${cp}/${prefixo}Exclusao&id=${classificacao.id}">
                              Excluir
                            </a>
                          </td>
                        </tr>
                      </c:forEach>
                    </tbody>
              </table>
            </div>    
       </section>
  </body>
</html>

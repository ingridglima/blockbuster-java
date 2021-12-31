<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="cp" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>

<html class="fundo">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="Cache-Control" content="no-cache, no-store, must-revalidate" />
        <meta http-equiv="Pragma" content="no-cache" />
        <meta http-equiv="Expires" content="0" />
        <meta content="width=device-width, initial-scale=1" name="viewport" />
        <title>Alterar Ator</title>

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
                        <li><img class="logo logo-imagem" src="_logo.PNG" alt="logo"></li>
                        <li><a href="${cp}/index.jsp">Página inicial</a></li>
                        <li><a href="${cp}/formularios/atores/listagem.jsp">Voltar</a></li>
                    </ul>
                </div>
            </div>
        </header>

        <div class="front-page"></div>
        <section class="section-information fundo">
            <div class="container" style="background:#d9d9d9">
                <div class="row title-section" id="programa-trainee">
                    <h1 class="title form-signin">Alterar Ator</h1>
                </div>

                <form method="post"  action="${cp}/processaAtores">

                    <input name="acao" type="hidden" value="alterar"/>
                    <input name="id" type="hidden" value="${requestScope.ator.id}"/>

                    <table class="form-signin">
                        <div class="form-group">
                            <tr>
                                <td class="alinharDireita">Nome:</td>
                                <td>
                                    <input name="nome"
                                           type="text"
                                           size="20"
                                           maxlength="30"
                                           required
                                           value="${requestScope.ator.nome}"
                                           class="form-control"/>
                                </td>
                            </tr>
                            <tr>
                                <td class="alinharDireita">Sobrenome:</td>
                                <td>
                                    <input name="sobrenome"
                                           type="text"
                                           required
                                           value="${requestScope.ator.sobrenome}"
                                           class="form-control"/>
                                </td>
                            </tr>
                            <tr>
                                <td class="alinharDireita">Data de Estreia:</td>
                                <td>
                                    <input name="estreia"
                                           type="date"
                                           size="8"
                                           placeholder="yyyy-mm-dd"
                                           required
                                           value="${requestScope.ator.dataEstreia}"
                                           class="form-control"/>
                                </td>
                            </tr>
                    </table>
                    <div class="form-group" id="btn-save">
                        <input type="submit" class="btn btn-success"  value="Alterar"/>
                    </div>
                </form>
            </div>
        </section>

    </body>

</html>
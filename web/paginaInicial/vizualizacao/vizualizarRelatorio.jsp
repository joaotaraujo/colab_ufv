<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml"> 

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <link rel="stylesheet" media="screen" type="text/css" href="/ProjetoColabUFV/css/style.css"  />
    
    <link rel="stylesheet" type="text/css" href="/ProjetoColabUFV/DataTables-1.10.12/media/css/jquery.dataTables.css">
	
	<script type="text/javascript" language="javascript" src="//code.jquery.com/jquery-1.12.3.min.js">
	</script>
	<script type="text/javascript" language="javascript" src="/ProjetoColabUFV/DataTables-1.10.12/media/js/jquery.dataTables.js">
	</script>
        <script type="text/javascript" language="javascript" class="init">

        $(document).ready(function() {
            $("#conteudoAbas div:nth-child(1)").show();
                                          $(".abas li:first div").addClass("selected");           
                                          $(".aba").click(function(){
                                                  $(".aba").removeClass("selected");
                                                  $(this).addClass("selected");
                                                  var indice = $(this).parent().index();
                                                  indice++;
                                                  $("#conteudoAbas div").hide();
                                                  $("#conteudoAbas div:nth-child("+indice+")").show();
                                          });

                                          $(".aba").hover(
                                                  function(){$(this).addClass("ativa")},
                                                  function(){$(this).removeClass("ativa")}
                                          ); 

        } );
        
    </script>
    <script>
        function showHide(obj){
        var tbody = obj.parentNode.parentNode.parentNode.getElementsByTagName("tbody")[0];
        var old = tbody.style.display;
        tbody.style.display = (old == "none"?"":"none");
        }
    </script>    
        
    <title>ColabUFV</title>
    <link rel='shortcut icon' href="/ProjetoColabUFV/imagens/brasaoUFV.jpg" /> 
</head>
<body>
    
    <style>
        th{
        text-align: left;
        cursor: pointer;
        background:#ADB8FC;
        padding-left:3px;
        padding-right:3px;
        }
        table tbody tr td{
        padding-left: 5px; 
        }
        table {
	font-family: verdana,arial,sans-serif;
	font-size:11px;
	color:#333333;
	border-width: 1px;
	border-color: #999999;
	border-collapse: collapse;
        width: 700px;
            
}
table td {
	background:#E0EAF3   url('cell-grey.jpg');
	border-width: 1px;
	padding: 8px;
	border-style: solid;
	border-color: #999999;
}
         body{
		font-family:Calibri, Tahoma, Arial
	}

        .TabControl{ 
        padding-top:0px;
	width:100%; 
	overflow:hidden; 
	height:395px;
        border:solid 0px; 
            padding-bottom:50px;
	}

        .TabControl #headerAbas{ 
	width:100%; 
	border: solid 0px; 
	overflow-x: hidden;
	cursor:hand
	}

        .TabControl #conteudoAbas{ 
	width:100%; 
	border: solid 1px;
	overflow-y: auto;
        overflow-x: hidden;
	height:370px; 
	}

        .TabControl .abas{
	display:inline;
	}

        .TabControl .abas li{
	float:left
	}

        .aba{
	width:150px; 
	height:20px; 
	border:solid 1px; 
	border-radius:5px 5px 0 0;
	text-align:center; 
	padding-top:0px; 
	background:#CBCADF
	}
        .ativa{
	width:150px; 
	height:20px; 
	border:solid 1 px; 
	border-radius:5px 5px 0 0;
	text-align:center; 
	padding-top:0px; 
	background:#27408B;
	}
        .ativa span, .selected span{
	color:#fff
	}
        .TabControl #conteudoAbas{
	background:#27408B
	}
        .TabControl .conteudo{
	width:100%;  
	background:#F4F4FF; 
	display:none; 
	height:100%;
	color:#fff
	}
        .selected{
	width:150px; 
	height:20px; 
	border:solid 1 px; 
	border-radius:5px 5px 0 0;
	text-align:center; 
	padding-top:0px; 
	background:#27408B
	}
        #welcome {
	background-color: #F5F5F5;
        width: 710px;
        height: 1370px; 
	padding: 100px;
	border: #000000 solid 4px;
        padding-left: 0px;
        padding-top: 0px;
        padding-bottom: 0px;
        padding-right: 0px;
        position:static;
        }
        .container {
            width: 725px;
            height:300px;
            overflow-y: auto;
            white-space: nowrap;
            background-color: #f5f5f5;
            padding-top:0px;
            padding-left:0px;
            padding-right:0px;
        }
        .containerRankingTabela {
            width: 710px;
            height:250px;
            overflow-x: hidden;
            white-space: nowrap;
            background-color: #f5f5f5;
            padding-top:0px;
            padding-left:0px;
            padding-right:0px;
        }
        .containerTableQuant {
            width: 710px;
            height:300px;
            overflow-y: auto;
            white-space: nowrap;
            background-color: #f5f5f5;
            padding-top:0px;
            padding-left:0px;
            padding-right:0px;
        }
        .containerRanking {
            width: 200px;
            height:100px;
            white-space: nowrap;
            background-color: #ADFF2F;
            border: #A61818 solid 3px;
            border-radius: 10px;
        }
        
        .buttonChat {
            background: #9C9CFF;
            background-image: -webkit-linear-gradient(top, #FF7C7C, #FFA8A8);
            background-image: -moz-linear-gradient(top, #FF7C7C, #FFA8A8);
            background-image: -ms-linear-gradient(top, #FF7C7C, #FFA8A8);
            background-image: -o-linear-gradient(top, #FF7C7C, #FFA8A8);
            border-radius: 5px;
            font-family: Arial;
            color: #ffffff;
            font-size: 18px;
            text-decoration: none;
            width:200px;
            height: 25px;
            display: inline-block;
        }

    </style>
    
    <%if ((session.getAttribute("login") == null) || (session.getAttribute("login") == "")) {%>
    You are not logged in<br/>
    <a href="/ProjetoColabUFV/index.jsp">Please Login</a>
    <%} else {%> 
    
    <!--HEADER-->
    <div id="header">
        <div id="img"></div>
        <a href= "/ProjetoColabUFV/ServletCarregaPaginaInicialUsuario">
            <div id="logo"> <img src="/ProjetoColabUFV/imagens/brasaoUFV.jpg" width="40" height="40" alt="brasaoImgUFV"/><br>ColabUFV<br />
            <span id="slogan"> Ambiente Colaborativo</span></div>
        </a>
    </div>
    <div class="clear"></div>
    <!-- HEADER END -->
    
    
    <!-- MENU -->
    <ul id="menu">
        <li id="loggedAs">
            <a href="#">Logged as: ${nomeUsuario}<br> 
                Projeto: ${projetoUsuario}<br>
                Papel: ${papelUsuario}
            </a>
        </li>
        <li class="menu_link"><a href="/ProjetoColabUFV/ServletCarregaAlunos">Relat�rios</a></li>
        <li class="menu_link"><a href="/ProjetoColabUFV/paginaInicial/cadastros/tipoDeCadastro.jsp">Cadastros</a></li>
        <li class="menu_link"><a href="/ProjetoColabUFV/ServletCarregaAtividades">Atividades Tarefas</a></li>
        <li class="menu_link"><a href="/ProjetoColabUFV/ServletCarregaForum">F�rum</a></li>
        <li class="menu_link"><a href="/ProjetoColabUFV/ServletCarregaAlertas">Alertas</a></li>
        <li class="menu_link"><a href="/ProjetoColabUFV/paginaInicial/vizualizacao/vizualizarBibliotecaVirtual.jsp">Biblioteca Virtual</a></li>
    </ul>
    <div class="clear"></div>
    <!-- MENU END -->
    
    
    <!-- CONTENT -->
    <div id="content">
        <div id="left">
            <div>
                <strong><a href="/ProjetoColabUFV/ServletLogout">LOGOUT</a></strong><br><br>
                <a href="/ProjetoColabUFV/ServletCarregaInformacoesProjeto"><h1>Informa��es do projeto</h1></a>
                <a href="/ProjetoColabUFV/ServletVizualizaCronograma"><h1>Vizualizar Cronograma</h1></a>
                <a href="/ProjetoColabUFV/ServletCarregaAlunos"><h1>Gerar um Relat�rio</h1></a>
                <a href="/ProjetoColabUFV/ServletCarregaGruposProjeto"><h1>Grupos</h1></a>
                <a href="/ProjetoColabUFV/ServletCarregaForum"><h1>F�rum</h1></a>
                <a href="/ProjetoColabUFV/ServletCarregaEnviaAlerta"><h1>Enviar um alerta</h1></a>
                <a href="/ProjetoColabUFV/paginaInicial/envios/enviarEmail.jsp"><h1>Enviar um email</h1></a>
                <a href="/ProjetoColabUFV/paginaInicial/cadastros/tipoDeCadastro.jsp"><h1>Cadastros</h1></a>         
                    <a href="/ProjetoColabUFV/paginaInicial/cadastros/cadastroAluno.jsp" class="link">Aluno</a> 
                    <a href="/ProjetoColabUFV/ServletCarregaCadastroAtividade" class="link">Atividade</a>
                    <a href="/ProjetoColabUFV/paginaInicial/cadastros/cadastroGrupo.jsp" class="link">Grupo</a>
                    <a href="/ProjetoColabUFV/paginaInicial/cadastros/cadastroPerguntaFrequente.jsp" class="link">Pergunta Frequente</a>
                    <a href="/ProjetoColabUFV/ServletCarregaCadastroTarefa" class="link">Tarefa</a>
                 <a href="/ProjetoColabUFV/ServletCarregaPerguntasFrequentes"><h1>Perguntas Frequentes</h1></a>
            </div><br>
            <div class="containerRanking"><center style="padding-top:10px;">
                    <strong>Aluno Destaque</strong></center><br> 
                        Nome: ${nomeAlunoRanking}<br>
                        Atv Conclu�das: ${quantAtividadesConcluidas}
                    </a>
                    </div>
            <div class="buttonChat" bgcolor=\"FF0000\"><center><a href="/ProjetoColabUFV/start.jsp">Chat Online!</a></center></div>
        </div>
      
      
        <div id="right">
            <div id="welcome">
                
                <table  height="20" style="width: 710px;" class="display" cellspacing="0" width="100%">
                    <thead>
                        <tr>
                            <th><center style="font-size:20px;">Relat�rio</center></th>
                        </tr>
                    </thead>
                    <tbody></tbody>
                </table>
                <br>
                ${graficoGeral}
                
                <br><br>
                <div class="TabControl">
                    <div id="headerAbas">
                        <ul class="abas">
                            <li>
                                    <div class="aba">
                                            <span>Ranking (Grupos)</span>
                                    </div>
                            </li>
                        </ul>
                    </div>
                    <div id="conteudoAbas">
                        <div class="conteudo">            
                            <table style="width:710px;">
                                <thead>
                                    <tr>
                                        <th style="background:#818181;color:#ffffff;">Ranking de ${nomeRanking}</th>
                                    </tr>
                                </thead>
                                <tbody></tbody>
                            </table>
                            <br>
                            <form method="post" action="/ProjetoColabUFV/ServletCarregaRanking">
                                <select name = "ranking" style="width: 150px">
                                    <option>Atividades feitas</option>
                                    <option>Tarefas feitas</option>
                                    <option>T�picos criados</option>
                                    <option>Coment�rios enviados</option>
                                    <option>Mensagens trocadas</option>
                                    <option>Alertas enviados</option>
                                </select>
                                <button type="submit" name="Submit" value="Vizualizar ranking">Vizualizar ranking</button>    
                            </form>    
                            <br>
                                <div class="containerRankingTabela">
                                    ${tabelaRanking}</div>
                        </div>
                    </div>
                </div>
                        
                ${graficoMenor} 
                
                <div class="containerTableQuant"><br><br><br>
                ${tabelaQuantitativa}
                </div>    
                <form method="post" action="/ProjetoColabUFV/ServletCarregaAlunos">
                    <button style="width: 180px" type="submit" name="Submit" value="Adicionar topico">Voltar</button>    
                </form>
                <div class="clear"></div>
            </div>
        
            
        </div>
    <div class="clear"></div>
  <!-- CONTENT END -->
  
  
  <!-- FOOTER -->
    <div id="footer"> portal.ufv.br/florestal &copy; 2016 <a href="#" > Privaty Policy</a> | <a href="#"> Terms of use</a>
        <br><a href="#" >Contato: teixeira.araujo@gmail.com</a>
    </div>
  <!-- FOOTER END -->
</div>
<% } %>

</body>
</html>
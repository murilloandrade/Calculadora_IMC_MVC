<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.text.DecimalFormat;" %>
<html>
    <head>
    <title>Calculadora de IMC</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>

    <style>
    .jumbotron{
     background-image: url("doggo.jpg");
     background-size: cover;
     background-repeat: no-repeat;
     color: white;
     font-weight:bold;
     text-shadow: 3px 0 0 #000, -3px 0 0 #000, 0 3px 0 #000, 0 -3px 0 #000, 2px 2px #000, -2px -2px 0 #000, 2px -2px 0 #000, -2px 2px 0 #000;
     font-family: "Comic Sans MS", cursive, sans-serif
    }
    h1 {
      color: white;
      margin-left: 40px;
    }
    </style>
    </head>
    <body class="jumbotron">
      <div class="container-fluid">
      	<div class="row">
      		<div class="col-md-4">
      		</div>
      		<div class="col-md-4">
      		<h1 style= "margin-top:7%" class="text-center"> CALCULADORA IMC </h1>

      		<form>
                <fieldset>
                    <div class="form-group">
                        <div class="sexo" style= "margin-top:2%">
                            <label style="display:flex;justify-content:center;align-items:center;">Sexo</label>
                            <div class="input">
                                    <input type="radio" id="radio-masculino" name="sexo" value="Masculino" checked/>
                                    <label for="radio-masculino">Masculino</label>
                                    <input type="radio" id="radio-feminino" name="sexo" value="Feminino" />
                                    <label for="radio-feminino">Feminino</label>
                            </div>
                        </div>

                        <div class="idade" style= "margin-top:2%">
                            <label style="display:flex;justify-content:center;align-items:center;">Idade</label>
                            <div class="input">
                                <input class="form-control" placeholder="Ex.: 18" name="idade" type="text">
                            </div>
                        </div>

                        <div class="altura" style= "margin-top:2%">
                            <label style="display:flex;justify-content:center;align-items:center;">Altura</label>
                            <div class="input">
                                <input class="form-control" placeholder="Ex.: 1.75" name="altura" type="text">
                            </div>
                        </div>

                        <div class="peso" style= "margin-top:2%">
                            <label style="display:flex;justify-content:center;align-items:center;">Peso</label>
                            <div class="input">
                                <input class="form-control" placeholder="Ex.: 60" name="peso" type="text">
                            </div>
                        </div>

                        <div class="atividade-fisica" style= "margin-top:2%">
                            <label style="display:flex;justify-content:center;align-items:center;">Atividade Física</label>
                            <div class="input">
                                    <input type="radio" id="radio-sedentaria" name="atividade" value="sedentaria" checked/>
                                    <label for="radio-sedentaria">Sedentária</label>
                                    <input type="radio" id="radio-moderada" name="atividade" value="moderada" />
                                    <label for="radio-moderada">Moderada</label>
                                    <input type="radio" id="radio-intensa" name="atividade" value="intensa" />
                                    <label for="radio-intensa">Intensa</label>
                            </div>
                        </div>
                    </div>
                    <button class="btn btn-sm btn-primary">Calcular</a>
                </fieldset>
        </form>
          <br>
          <p>
            ${resultado}
          </p>
      	  <div class="col-md-4">
      	</div>
      </div>
    </div>
  </body>
</html>
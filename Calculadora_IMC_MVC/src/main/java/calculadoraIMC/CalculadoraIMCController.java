package calculadoraIMC;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(value = "/home")
public class CalculadoraIMCController extends HttpServlet {

    @Override
    protected void service(
            HttpServletRequest request,
            HttpServletResponse response) throws ServletException, IOException {

        String resultado = "";

        String idadeStr = request.getParameter("idade");
        String pesoStr = request.getParameter("peso");
        String alturaStr = request.getParameter("altura");
        String sexo = request.getParameter("sexo");
        String atividadeFisica = request.getParameter("atividade");
        if (idadeStr != null && pesoStr != null && alturaStr != null && sexo != null && atividadeFisica != null) {
            int idade = Integer.parseInt(idadeStr);
            int peso = Integer.parseInt(pesoStr);
            float altura = Float.parseFloat(alturaStr);
            float imc = peso / (altura * altura);
            resultado = CalculadoraIMCModel.calculaIMC(imc, atividadeFisica);
        }

        // Adiciona a variável na requisição para o JSP trabalhar.
        request.setAttribute("resultado", resultado);

        // Redireciona requisição para o JSP.
        request.getRequestDispatcher("/calculadora-imc-view.jsp").forward(request, response);
    }
}

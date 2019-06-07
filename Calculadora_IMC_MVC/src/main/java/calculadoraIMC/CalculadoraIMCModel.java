package calculadoraIMC;
import java.text.DecimalFormat;

public class CalculadoraIMCModel {


    public static String calculaIMC(float imc, String atividadeFisica) {
        DecimalFormat df = new DecimalFormat("0.0");
        if (imc < 18.5) {
            return ":( Seu IMC é =" + df.format(imc) + ". Isso indica que você está abaixo do peso ideal. É recomendado iniciar uma dieta focada em ganho de peso.";
        } else
        if (imc < 24.9) {
            return ":) Seu IMC é =" + df.format(imc) + ". Isso indica que você está no peso ideal para a sua altura! Mas é sempre bom manter-se cuidadoso com a sua saúde, então não deixe de ter uma dieta equilibrada e nutritiva!";
        } else
        if (imc < 29.9) {
            return ":o Seu IMC é =" + df.format(imc) + ". Isso indica que você pode estar com sobrepeso. É recomendado que você seja mais atencioso com o valor calórico da sua dieta e inicie algum tipo de exercício físico.";
        } else
        if (imc >= 29.9 && atividadeFisica != "intensa") {
            return ":( Seu IMC é =" + df.format(imc) + ". Isso indica que você pode estar com obesidade. É recomendado que você inicie uma dieta de perda de peso e inicie uma rotina mais ativa com bastante exercícios físicos.";
        } else {
            return ":o Seu IMC é =" + df.format(imc) + ". Isso indica que você pode estar com obesidade, mas como você pratica muita atividade física, o seu peso pode ser devido aos músculos, o que é uma coisa boa. Para confirmar isso, o ideal é que você procure o nutricionista ou o médico para avaliar sua composição corporal.";
        }
    }
}

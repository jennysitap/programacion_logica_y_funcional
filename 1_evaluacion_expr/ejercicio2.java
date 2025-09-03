/*Ejercicio #2 Evaluación de expresiones en Java*/
/*Instrucciones: Analice las siguientes expresiones, anote las reducciones y compruebe el resultado en el lenguaje. 
Si una expresión esta mal redactada, favor de repararla. Es permitido crear variables extra. Puede utilizar esta 
herramienta Java Online Compiler*/

public class Example(){
    public static void main(String[]args){
        int x=10;
        int b=10;

        //Expresión #1
        System.out.println(x++);
        /*Justificacion:
        x=10
        x++ imprime 10 y después x=11
        El resultado es: 10*/
        int x=10;
        int b=10;

        //Expresión #2
        System.out.println(++x);
        /*Justificacion:
        x=10
        ++x = 11, imprime 11
        El resultado es: 11*/
        int x=10;
        int b=10;

        //Expresión #3
        b++ * -3 == -3 % x++
        /*Justificacion:
        b=10 → b++=10 y luego b=11
        10 * -3 = -30
        x=10 → x++=10, luego x=11
        -3 % 10 = -3
        -30 == -3 → false
        El resultado es: false*/
        int x=10;
        int b=10;

        //Expresión #4
        30 - 10 /= % ++b + 30 % 7 * 2
        /*Justificacion:
        Hay un error de sintaxis porque no se puede mezclar /= % 
        Despues de la correccion el ejercicio me quedo asi:
        30 - 10 / ( ++b + 30 % 7 * 2 )
        y el resultado es asi:
        b=10 → ++b=11
        30 % 7 = 2
        2 * 2 = 4
        ++b + 4 = 11 + 4 = 15
        10 / 15 = 0
        30 - 0 = 30
        El resultado es:30*/
        int x=10;
        int b=10;

        //Expresión #5
        x =  -50 * x++ * 80 % b / 4 *=8
        /*Justificacion:
        No se puede mezclar =...*=8
        Despues de la correccion el ejercicio me quedo asi:
        x = (-50 * x++ * 80 % b / 4) * 8;
        y el resultado es asi:
        x=10 → x++=10 → x=11
        -50 * 10 * 80 = -40000
        -40000 % 10 = 0
        0 / 4 = 0
        0 * 8 = 0
        El resultado es:0*/
        int x=10;
        int b=10;

        //Expresión #6
        b*= x++ - 8 + 3 - 5 / 4 % - 3 + 8
        /*Justificacion:
        x=10 → x++=10 → x=11
        10 - 8 + 3 = 5
        5 / 4 = 1
        1 % -3 = 1
        5 - 1 + 8 = 12
        b=10 → b*=12 → b=120
        El resultado es: b=120*/
        int x=10;
        int b=10;

        //Expresión #7
        x = b * = 50 / 30 * ++x + 80
        /*Justificacion:
        Hay un error de sintaxis (b *= ... dentro de x=)
        Despues de la correccion el ejercicio me quedo asi:
        b *= 50 / 30 * ++x + 80;
        x = b;
        y el resultado asi:
        x=10 → ++x=11
        50/30 = 1 (división entera)
        1 * 11 + 80 = 91
        b=10 → b*=91 → b=910
        x=b → x=910
        El resultado es:910*/
        int x=10;
        int b=10;

        //Expresión #8
        ++x % 20.2 == -x /= b % = --x
        /*Justificacion:
        % 20.2 no funciona porque % solo admite enteros
        b %= --x si podria ser pero esta escrito como b % =
        También se está mezclando == con -x /= ....
        Despues de coregirlo me queda asi:
        (++x % 20 == (-x /= (b %= --x)))
        x=10, b=10
        ++x = 11
        --x = 10
        b %= 10 → b=0
        -x /= b → división entre 0 → error en tiempo de ejecución
        es inválida y ya no supe que hacer ):
        El resultado es:*/
        int x=10;
        int b=10;

        //Expresión #9
        1 *= b++ * b-- / 3 % ++b *= 10 + 1;
        /*Justificacion:
        Está mal porque 1 *= ... no tiene sentido y mezcla ++b *= ... y es inválido
        Despues de las correciones queda asi:
        (b++ * b-- / 3) % (++b * (10 + 1))
        y el resultado asi:
        x=10, b=10
        b++ = 10 → b=11
        b-- = 11 → b=10
        (10 * 11) / 3 = 110 / 3 = 36 (división entera)
        ++b = 11
        11 * (10+1) = 11 * 11 = 121
        36 % 121 = 36
        El resultado es:36*/
        int x=10;
        int b=10;

        //Expresión #10
        -10 * -0 *= -10 *=x++ + x+=x*x ;
        /*Justificacion:
        La expresión es inválida: -10 * -0 *= -10 *=x++ + x+=x*x
        y corrigiendo, queda asi:
        int temp10 = -10 * 0 * -10 * (x++ + (x += x * x));
        System.out.println("Resultado: " + temp10);
        x++ = 10 (x ahora 11), x += 11*11 = 121 → x = 132
        total: 10 + 132 = 142
        -10 * 0 * -10 * 142 = 0
        El resultado es:0*/
        int x=10;
        int b=10;

        //Expresión #11
        a * b == b++ + b-- + --b + x++ + x--;
        /*Justificacion:
        Da error porque: la variable a no está declarada
        Voy a suponer que int a=5
        (a * b == b++ + b-- + --b + x++ + x--)
        despues de evaluar, queda asi:
        a=5, b=10, x=10
        a * b = 5 * 10 = 50
        b++ = 10 → b=11
        b-- = 11 → b=10
        --b = 9
        x++ = 10 → x=11
        x-- = 11 → x=10
        Suma: 10 + 11 + 9 + 10 + 11 = 51
        Comparación: 50 == 51 → false
        El resultado es:false*/
        int x=10;
        int b=10;

    }
}









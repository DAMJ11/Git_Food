package org.example;
import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
        Scanner sc=new Scanner(System.in);
        int opcion;
        System.out.println("******GIT-FOOD******");
        System.out.println("Bienvenido a Git-FOOD, tu recetario de confianza");
        System.out.println("MENÚ");
        System.out.println("********");
        System.out.println("1.Inicio");
        System.out.println("2.Recetas");
        System.out.println("3.Usuario");
        opcion=sc.nextInt();
        do {
            switch (opcion){
                case 1:
                    System.out.println("*****Sobre nosotros*****");
                    System.out.println("1.Owner: Duber Monsalve");
                    System.out.println("2.GIT-FOOD");
                    System.out.println("3.Owner:Jacobo Arrollave");
                    int opcion1=sc.nextInt();
                    do {
                        switch (opcion1){
                            case 1:
                                System.out.println("******INFORMACION PERSONAL******");
                                System.out.println("Nombre: Duber Andres Monsalve Jaramillo");
                                System.out.println("Edad: 21 años");

                                break;
                            case 2:
                                break;
                            case 3:
                                break;                        }
                    }while (opcion1>3);
                    break;
                case 2:
                    System.out.println("1.Entradas");
                    System.out.println("2.Plato fuerte");
                    System.out.println("3.Guarnicion");
                    System.out.println("4. Postre");
                    int opcion2= sc.nextInt();
                    break;
                case 3:
                    System.out.println("1.Iniciar Seccion");
                    System.out.println("2.Registrarse");
                    int opcion3=sc.nextInt();
                    break;
            }
        }while (opcion>3);
    }
}
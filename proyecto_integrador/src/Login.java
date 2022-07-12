import javax.swing.*;

public class Login {
    public static void main(String[] args) {

        String nuevoUsuario = JOptionPane.showInputDialog("Ingresa tu Nombre de Usuario");
        String password = JOptionPane.showInputDialog("Ingresá tu contraseña");
        String confirmacionPass = JOptionPane.showInputDialog("Vuelva a ingresar la contraseña");
        int contador = 1;
        boolean respuesta = false;

        if (password.equalsIgnoreCase(confirmacionPass)){
            JOptionPane.showMessageDialog(null,nuevoUsuario + " Bienvenido/a al sistema");
        }else {
            while (respuesta == false) {
                if (password.equalsIgnoreCase(confirmacionPass)){
                    JOptionPane.showMessageDialog(null,nuevoUsuario + " Bienvenido/a al sistema");
                    respuesta = true;
                }else {
                    if (contador <3){
                        confirmacionPass = JOptionPane.showInputDialog("Vuelva a ingresar la contraseña");
                        respuesta = false;
                        contador++;
                    }else {
                        JOptionPane.showMessageDialog(null,"La contraseña fue ingresada incorrectamente 3 veces, por favor intente nuevamente más tarde.");
                        respuesta = true;
                    }
                }
            }
        }
    }
}

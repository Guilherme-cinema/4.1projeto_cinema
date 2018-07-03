package teste ;

 import  dominio.Usuario_Cadastrado ;
 import  persistencia.Usuario_CadastradoBD ;


public class  CadastrarUsuario { 
 
     public  static  void  main ( String [] args ) {
 
         Usuario_Cadastrado funcionario =  new  Usuario_Cadastrado ();
 funcionario.setLogin ("leandro");
 funcionario.setSenha ("leandro");
 funcionario.setCodigo( 1 );
         Usuario_CadastradoBD.inserir (funcionario);
}

}
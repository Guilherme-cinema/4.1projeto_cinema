package persistencia;

import com.thoughtworks.xstream.XStream;
import dominio.Usuario;
import java.io.File;
import java.io.FileWriter;
import java.util.ArrayList;

public class UsuarioBD {
    
    private static String caminho = "C:\\Users\\guilherme martins pe\\Desktop\\3° Trab\\26.6_ProvaLP_DaniloSantos2GTI//";
    
    private static ArrayList<Usuario> lista = new ArrayList<Usuario>();
    //adiciona um objeto da classe Usuario 
    //na lista que simula o banco de dados
    public static void inserir(Usuario usuario){
        lerXml(); //lê o XML e preenche a lista de Usuario
        
        //pega o último usuário cadastrado
        int ultimaPosicao = lista.size()-1;
        if (ultimaPosicao >= 0){ //se a lista não estiver vazia
            Usuario ultimoUsuario = lista.get(ultimaPosicao);
            usuario.setCodigo(ultimoUsuario.getCodigo()+1);
        }else{
            //se não tem ninguém na lista, o código é 1
            usuario.setCodigo(1);
        }
        
        
        lista.add(usuario); //adiciona um Usuario no final da lista
        salvarXml(); //atualiza o XML com o que tem na lista
    }
    
    
    public static void alterar(Usuario usuario){
        lerXml();
        excluir(usuario.getCodigo());
        inserir(usuario);
        salvarXml();
    }
    
    //recebe o atributo que identifica cada objeto
    //da classe Usuario
    public static void excluir(int codigo){
        lerXml();
        for(int i=0; i < lista.size(); i++){
            Usuario cadaUsuario = lista.get(i);
            
            //procura o usuario que tem o CPF igual 
            //Ã  variÃ¡vel "cpf", que tÃ¡ chegando entre
            //os parÃªnteses
            if (cadaUsuario.getCodigo() == codigo){
                lista.remove(i);
            }
        }
        salvarXml();
    }
    public static ArrayList<Usuario> listar(){     
        lerXml();
        //retorna todos os objetos do banco de dados
        return lista;
    }
    
    public static Usuario getByCodigo(int codigo){
        lerXml();
        Usuario usuarioEncontrado = null;
        for(int i=0; i < lista.size(); i++){
            Usuario cadaUsuario = lista.get(i);
            
            //procura o usuario que tem o CPF igual 
            //Ã  variÃ¡vel "cpf", que tÃ¡ chegando entre
            //os parÃªnteses
            if (cadaUsuario.getCodigo() == codigo){
                usuarioEncontrado = cadaUsuario;
                break;
            }
        }
        return usuarioEncontrado;
    }
    
    
    private static void lerXml(){
        File arquivo=new File(caminho + "usuarioes.xml");
        if (arquivo.exists()){
            //armazenar XML no vetor
            XStream xstream=new XStream();
            xstream.alias("usuario",Usuario.class);
            lista = (ArrayList<Usuario>) xstream.fromXML(arquivo);
        }else{
            lista = new ArrayList<Usuario>();
        }
    }
    
    private static void salvarXml(){
        XStream xstream = new XStream();
        xstream.alias("usuario",Usuario.class);
        try{
            FileWriter escritor=new FileWriter(caminho + "usuarioes.xml");
            escritor.write( xstream.toXML(lista) );
            escritor.close();
        }catch(Exception ex){
            System.out.println(ex.getMessage());
        }
    }
}

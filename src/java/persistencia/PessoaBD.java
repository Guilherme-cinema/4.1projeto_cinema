package persistencia;

import com.thoughtworks.xstream.XStream;
import dominio.Pessoa;
import java.io.File;
import java.io.FileWriter;
import java.util.ArrayList;

public class PessoaBD {
    
    private static String pessoacaminho = "C:\\Users\\guilherme martins pe\\Desktop\\3° Trab\\3°Av_proj_Cine//";
    
    private static ArrayList<Pessoa> lista = new ArrayList<Pessoa>(); 
    //adiciona um objeto da classe Usuario 
    //na lista que simula o banco de dados
    public static void inserir(Pessoa usuario){
        lerXml(); //lê o XML e preenche a lista de Usuario
        
        //pega o último usuário cadastrado
        int ultimaPosicao = lista.size()-1;
        if (ultimaPosicao >= 0){ //se a lista não estiver vazia
            Pessoa ultimoUsuario = lista.get(ultimaPosicao);
            usuario.setCodigo(ultimoUsuario.getCodigo()+1);
        }else{
            //se não tem ninguém na lista, o código é 1
            usuario.setCodigo(1);
        }
        
        
        lista.add(usuario); //adiciona um Usuario no final da lista
        salvarXml(); //atualiza o XML com o que tem na lista
    }
    
    
    public static void alterar(Pessoa usuario){
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
            Pessoa cadaUsuario = lista.get(i);
            
            //procura o usuario que tem o CPF igual 
            //Ã  variÃ¡vel "cpf", que tÃ¡ chegando entre
            //os parÃªnteses
            if (cadaUsuario.getCodigo() == codigo){
                lista.remove(i);
            }
        }
        salvarXml();
    }
    public static ArrayList<Pessoa> listar(){     
        lerXml();
        //retorna todos os objetos do banco de dados
        return lista;
    }
    
    public static Pessoa getByCodigo(int codigo){
        lerXml();
        Pessoa usuarioEncontrado = null;
        for(int i=0; i < lista.size(); i++){
            Pessoa cadaUsuario = lista.get(i);
            
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
        File arquivo=new File(pessoacaminho + "pessoaes.xml");
        if (arquivo.exists()){
            //armazenar XML no vetor
            XStream xstream=new XStream();
            xstream.alias("usuario",Pessoa.class);
            lista = (ArrayList<Pessoa>) xstream.fromXML(arquivo);
        }else{
            lista = new ArrayList<Pessoa>();
        }
    }
    
    private static void salvarXml(){
        XStream xstream = new XStream();
        xstream.alias("usuario",Pessoa.class);
        try{
            FileWriter escritor=new FileWriter(pessoacaminho + "pessoaes.xml");
            escritor.write( xstream.toXML(lista) );
            escritor.close();
        }catch(Exception ex){
            System.out.println(ex.getMessage());
        }
    }
}

package persistencia;

import com.thoughtworks.xstream.XStream;
import dominio.Usuario_Cadastrado;
import java.io.File;
import java.io.FileWriter;
import java.util.ArrayList;

public class Usuario_CadastradoBD {
    private static ArrayList<Usuario_Cadastrado> lista = new ArrayList<Usuario_Cadastrado>();
    private static String caminho = "C:\\Users\\guilherme martins pe\\Desktop\\3° Trab\\3°Av_proj_Cine//";
    
    public static void inserir(Usuario_Cadastrado novoCadastrado){
        lerXml();
        lista.add(novoCadastrado);
       salvarXml();
    }
        
    public static void alterar(Usuario_Cadastrado cadastradoAlterado){
        excluir(cadastradoAlterado.getCodigo());
        inserir(cadastradoAlterado);
    }
    
    public static void excluir(int codigo){
        lerXml();
        for(int i=0; i < lista.size(); i++){
            Usuario_Cadastrado cadaCadastrado = lista.get(i);
            if (cadaCadastrado.getCodigo() == codigo){
                lista.remove(i);
                break;
            }
        }
        salvarXml();
    }
    
    public static ArrayList<Usuario_Cadastrado> listar(){
        lerXml();
        return lista;
    }
        
    //pega o que está no XML e coloca na lista 
    public static void lerXml(){
        File arquivo=new File(caminho + "cadastrado.xml");
        if (arquivo.exists()){
            //armazenar XML no vetor
            XStream xstream=new XStream();
            xstream.alias("cadastrado",Usuario_Cadastrado.class);
            lista = (ArrayList<Usuario_Cadastrado>) xstream.fromXML(arquivo);
        }else{
            lista = new ArrayList<Usuario_Cadastrado>();
        }
    }
    
    //pega o que está na lista e salva no XML
    public static void salvarXml(){
        XStream xstream = new XStream();
        xstream.alias("cadastrado",Usuario_Cadastrado.class);
        try{
            FileWriter escritor=new FileWriter(caminho + "cadastrado.xml");
            escritor.write( xstream.toXML(lista) );
            escritor.close();
        }catch(Exception ex){
            System.out.println(ex.getMessage());
        }   
    }
    
    public static Usuario_Cadastrado procurarPorLoginSenha(String login, String senha){
        lerXml();
        Usuario_Cadastrado cadastradoEncontrado = null;
        for(int i=0; i < lista.size(); i++){
            Usuario_Cadastrado cadastrado = lista.get(i);
            if (cadastrado.getLogin().equals(login) && cadastrado.getSenha().equals(senha)){
                cadastradoEncontrado = cadastrado;
                break;
            }
        }
        return cadastradoEncontrado;
    }
}
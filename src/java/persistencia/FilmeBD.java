/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package persistencia;

import com.thoughtworks.xstream.XStream;
import dominio.Filme;
import java.io.File;
import java.io.FileWriter;
import java.util.ArrayList;

/**
 *
 * @author guilherme martins pe
 */
public class FilmeBD {
    
    private static String caminhoFilme = "C:\\Users\\guilherme martins pe\\Desktop\\3° Trab\\3°Av_proj_Cine//";
    
    private static ArrayList<Filme> listaFilme = new ArrayList<Filme>();
    //adiciona um objeto da classe Usuario 
    //na lista que simula o banco de dados
    public static void inserir(Filme filme){
        lerXml(); //lê o XML e preenche a lista de Usuario
        
        //pega o último usuário cadastrado
        int ultimaPosicao = listaFilme.size()-1;
        if (ultimaPosicao >= 0){ //se a lista não estiver vazia
            Filme ultimoFilme = listaFilme.get(ultimaPosicao);
            filme.setCodigo(ultimoFilme.getCodigo()+1);
        }else{
            //se não tem ninguém na lista, o código é 1
            filme.setCodigo(1);
        }
        
        
        listaFilme.add(filme); //adiciona um Usuario no final da lista
        salvarXml(); //atualiza o XML com o que tem na lista
    }
    
    
    public static void alterar(Filme filme){
        lerXml();
        excluir(filme.getCodigo());
        inserir(filme);
        salvarXml();
    }
    
    //recebe o atributo que identifica cada objeto
    //da classe Usuario
    public static void excluir(int codigo){
        lerXml();
        for(int i=0; i < listaFilme.size(); i++){
            Filme cadaFilme = listaFilme.get(i);
            
            //procura o usuario que tem o CPF igual 
            //Ã  variÃ¡vel "cpf", que tÃ¡ chegando entre
            //os parÃªnteses
            if (cadaFilme.getCodigo() == codigo){
                listaFilme.remove(i);
            }
        }
        salvarXml();
    }
    public static ArrayList<Filme> listaF(){     
        lerXml();
        //retorna todos os objetos do banco de dados
        return listaFilme;
    }
    
    public static Filme getByCodigo(int codigo){
        lerXml();
        Filme FilmeEncontrado = null;
        for(int i=0; i < listaFilme.size(); i++){
            Filme cadaFilme = listaFilme.get(i);
            
            //procura o usuario que tem o CPF igual 
            //Ã  variÃ¡vel "cpf", que tÃ¡ chegando entre
            //os parÃªnteses
            if (cadaFilme.getCodigo() == codigo){
                FilmeEncontrado = cadaFilme;
                break;
            }
        }
        return FilmeEncontrado;
    }
    
    
    private static void lerXml(){
        File arquivo=new File(caminhoFilme + "Filmes.xml");
        if (arquivo.exists()){
            //armazenar XML no vetor
            XStream xstream=new XStream();
            xstream.alias("filme",Filme.class);
            listaFilme = (ArrayList<Filme>) xstream.fromXML(arquivo);
        }else{
            listaFilme = new ArrayList<Filme>();
        }
    }
    
    private static void salvarXml(){
        XStream xstream = new XStream();
        xstream.alias("filme",Filme.class);
        try{
            FileWriter escritor = new FileWriter(caminhoFilme + "filmes.xml");
            escritor.write( xstream.toXML(listaFilme) );
            escritor.close();
        }catch(Exception ex){
            System.out.println(ex.getMessage());
        }
    }
    
}

package DAO;

import java.util.List;


public interface GenericDAO {
    
    public int inserir(Object object);
    
    public List<Object> listar();
    public Boolean alterar(Object object);
    public Boolean excluir(Object object);
    public Object carregar(Integer id);
}

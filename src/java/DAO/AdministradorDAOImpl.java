package DAO;

import Model.Administrador;
import Util.ConnectionFactory;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

public class AdministradorDAOImpl implements GenericDAO {

    private Connection conexao;
    private ResultSet rs;
    private PreparedStatement stmt;

    public AdministradorDAOImpl() throws Exception {
        conexao = ConnectionFactory.conectar();
    }

    @Override
    public int inserir(Object object) {

        try {

            Administrador oAdministrador = (Administrador) object;

            String sql = "INSERT INTO administrador(nome_administrador, emailinstitucional_administrador, senha_administrador, permissaoaprovacao_administrador) VALUES (?, ?, ?, ?) RETURNING id_administrador;";

            stmt = conexao.prepareStatement(sql);

            stmt.setString(1, oAdministrador.getNome_administrador());
            stmt.setString(2, oAdministrador.getEmailinstitucional_administrador());
            stmt.setString(3, oAdministrador.getSenha_administrador());
            stmt.setBoolean(4, oAdministrador.getPermissaoaprovacao_administrador());

            rs = stmt.executeQuery();

            return rs.getInt("id_administrador");

        } catch (SQLException e) {
            System.out.println("Erro ao cadastrar a reserva" + e.getMessage());
            return 0;
        } finally {
            try {
                ConnectionFactory.fecharConexao(conexao, rs, stmt);
            } catch (Exception ex) {
                Logger.getLogger(AdministradorDAOImpl.class.getName()).log(Level.SEVERE, null, ex);
            }
        }

    }

    @Override
    public List<Object> listar() {

        List<Object> lista = new ArrayList<>();
        try {
            String sql = "select * from administrador";
            stmt = this.conexao.prepareStatement(sql);
            rs = stmt.executeQuery();
            while (rs.next()) {
                Administrador administrador = new Administrador();
                administrador.setNome_administrador(rs.getString("nome"));
                administrador.setEmailinstitucional_administrador(rs.getString("emailinstitucional"));
                administrador.setSenha_administrador(rs.getString("senha"));
                administrador.setPermissaoaprovacao_administrador(rs.getBoolean("permissaoaprovacao"));
                lista.add(administrador);
            }
        } catch (SQLException e) {
            System.out.println("Erro ao listar administradorDAO" + e.getMessage());
        }
        return lista;
    }

    @Override
    public Boolean alterar(Object object) {

        try {
            Administrador oAdministrador = (Administrador) object;

            String sql = "update administrador set nome_administrador = ?, " + "emailinstitucional_administrador = ?, senha_administrador = ?, " + " permissaoaprovacao_administrador = ? where id_administrador = ? ";

            stmt = this.conexao.prepareStatement(sql);

            stmt.setString(1, oAdministrador.getNome_administrador());
            stmt.setString(2, oAdministrador.getEmailinstitucional_administrador());
            stmt.setString(3, oAdministrador.getSenha_administrador());
            stmt.setBoolean(4, oAdministrador.getPermissaoaprovacao_administrador());

            stmt.execute();

            return true;

        } catch (SQLException e) {

            System.out.println("Erro ao alterar administrador" + e.getMessage());
            return false;
        } finally {

            try {
                ConnectionFactory.fecharConexao(conexao, rs, stmt);
            } catch (Exception ex) {
                Logger.getLogger(AdministradorDAOImpl.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
    }

    @Override
    public Boolean excluir(Object object) {

        try {
            Administrador administrador = (Administrador) object;

            String sql = "delete from administrador where id = ?";

            stmt = this.conexao.prepareStatement(sql);
            stmt.setInt(1, administrador.getId_administrador());
            stmt.execute();
            return true;

        } catch (SQLException e) {
            System.out.println("Erro ao excluir administradorDAO" + e.getMessage());
            return false;
        }
    }

    @Override
    public Object carregar(Integer id) {

        Administrador administrador = new Administrador();

        try {

            String sql = "select * from administrador where id = ?";

            stmt = this.conexao.prepareStatement(sql);
            stmt.setInt(1, id);
            rs = stmt.executeQuery();
            rs.next();
            administrador.setNome_administrador(rs.getString("nome"));
            administrador.setEmailinstitucional_administrador(rs.getString("emailinstitucional"));
            administrador.setSenha_administrador(rs.getString("senha"));
            administrador.setPermissaoaprovacao_administrador(rs.getBoolean("permissaoaprovacao"));

        } catch (SQLException e) {
            System.out.println("Erro ao alterar administradorDAO " + e.getMessage());
        }
        return administrador;
    }

    public Boolean logarAdministrador(String emailinstitucional_administrador, String senha_administrador) throws Exception {

        try {
            String sql = "select * from administrador " + "where emailinstitucional_administrador = ? and senha_administrador = ?";
            stmt = this.conexao.prepareStatement(sql);
            stmt.setString(1, emailinstitucional_administrador);
            stmt.setString(2, senha_administrador);

            rs = stmt.executeQuery();

            return rs.next();

        } catch (Exception e) {
            System.out.println("Erro ao logarDAO " + e.getMessage());
            return false;
        }
    }

}

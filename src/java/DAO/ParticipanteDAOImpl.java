package DAO;

import Model.Participante;
import Model.Solicitacao;
import Util.ConnectionFactory;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

public class ParticipanteDAOImpl implements GenericDAO {

    private Connection conexao;
    private ResultSet rs;
    private PreparedStatement stmt;

    public ParticipanteDAOImpl() throws Exception {
        conexao = ConnectionFactory.conectar();
    }

    @Override
    public int inserir(Object object) {
        int retorno = 0;

        try {

            Participante oParticipante = (Participante) object;

            String sql = "INSERT INTO participante(nomecompleto_participante, cpf_participante, vinculo_participante, solicitante_participante, curso_participante, id_solicitacao) VALUES (?, ?, ?, ?, ?, ?) RETURNING id_participante;";

            stmt = this.conexao.prepareStatement(sql);

            stmt.setString(1, oParticipante.getNomecompleto_participante());
            stmt.setString(2, oParticipante.getCpf_participante());
            stmt.setString(3, oParticipante.getVinculo_participante());
            stmt.setBoolean(4, oParticipante.getSolicitante_participante());
            stmt.setString(5, oParticipante.getCurso_participante());
            stmt.setInt(6, oParticipante.getSolicitacao_participante().getId_solicitacao());

            stmt.execute();

            retorno = 1;

        } catch (SQLException e) {
            System.out.println("Erro ao inserir o participante" + e.getMessage());
        } finally {
            try {
                ConnectionFactory.fecharConexao(conexao, rs, stmt);
            } catch (Exception ex) {
                Logger.getLogger(ParticipanteDAOImpl.class.getName()).log(Level.SEVERE, null, ex);
            }
        }

        return retorno;

    }

    @Override
    public List<Object> listar() {

        List<Object> lista = new ArrayList<>();
        try {
            String sql = "select * from participante";
            stmt = this.conexao.prepareStatement(sql);
            rs = stmt.executeQuery();
            while (rs.next()) {
                Participante participante = new Participante();
                participante.setNomecompleto_participante(rs.getString("nome"));
                participante.setCpf_participante(rs.getString("cpf"));
                participante.setVinculo_participante(rs.getString("vinculo"));
                participante.setSolicitante_participante(rs.getBoolean("solicitanteparticipante"));
                participante.setCurso_participante(rs.getString("curso"));
                SolicitacaoDAOImpl solicitacaodaoimpl = new SolicitacaoDAOImpl();
                participante.setSolicitacao_participante((Solicitacao) solicitacaodaoimpl.carregar(rs.getInt("id_solicitacao")));
                lista.add(participante);
            }
        } catch (SQLException e) {
            System.out.println("Erro ao listar participanteDAO" + e.getMessage());
        } catch (Exception ex) {
            Logger.getLogger(ParticipanteDAOImpl.class.getName()).log(Level.SEVERE, null, ex);
        }
        return lista;
    }

    @Override
    public Boolean alterar(Object object) {

        try {
            Participante oParticipante = (Participante) object;

            String sql = "update participante set nomecompleto_participante = ?, " + "cpf_participante = ?, vinculo_participante = ?, " + " solicitante_participante = ?  " + " curso_participante = ?, id_solicitacao = ? where id_participante = ? ";

            stmt = this.conexao.prepareStatement(sql);

            stmt.setString(1, oParticipante.getNomecompleto_participante());
            stmt.setString(2, oParticipante.getCpf_participante());
            stmt.setString(3, oParticipante.getVinculo_participante());
            stmt.setBoolean(4, oParticipante.getSolicitante_participante());
            stmt.setString(5, oParticipante.getCurso_participante());
            stmt.setInt(6, oParticipante.getSolicitacao_participante().getId_solicitacao());

            stmt.execute();

            return true;

        } catch (SQLException e) {

            System.out.println("Erro ao alterar participante" + e.getMessage());
            return false;
        } finally {

            try {
                ConnectionFactory.fecharConexao(conexao, rs, stmt);
            } catch (Exception ex) {
                Logger.getLogger(ParticipanteDAOImpl.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
    }

    @Override
    public Boolean excluir(Object object) {

        try {
            Participante participante = (Participante) object;

            String sql = "delete from participante where id = ?";

            stmt = this.conexao.prepareStatement(sql);
            stmt.setInt(1, participante.getId_participante());
            stmt.execute();
            return true;

        } catch (SQLException e) {
            System.out.println("Erro ao excluir participanteDAO" + e.getMessage());
            return false;
        }
    }

    @Override
    public Object carregar(Integer id) {

        Participante participante = new Participante();

        try {

            String sql = "select * from participante where id = ?";

            stmt = this.conexao.prepareStatement(sql);
            stmt.setInt(1, id);
            rs = stmt.executeQuery();
            rs.next();
            participante.setNomecompleto_participante(rs.getString("nome"));
            participante.setCpf_participante(rs.getString("cpf"));
            participante.setVinculo_participante(rs.getString("vinculo"));
            participante.setSolicitante_participante(rs.getBoolean("solicitanteparticipante"));
            participante.setCurso_participante(rs.getString("curso"));
            SolicitacaoDAOImpl solicitacaodaoimpl = new SolicitacaoDAOImpl();
            participante.setSolicitacao_participante((Solicitacao) solicitacaodaoimpl.carregar(rs.getInt("id_solicitacao")));

        } catch (SQLException e) {
            System.out.println("Erro ao alterar participanteDAO " + e.getMessage());
        } catch (Exception ex) {
            Logger.getLogger(ParticipanteDAOImpl.class.getName()).log(Level.SEVERE, null, ex);
        }
        return participante;
    }

    public List<Participante> listarPorSolicitacao(int id_solicitacao) {
        List<Participante> lista = new ArrayList<>();
        try {
            String sql = "SELECT id_participante, nomecompleto_participante, curso_participante, cpf_participante, vinculo_participante, solicitante_participante, id_solicitacao FROM participante where id_solicitacao = " + id_solicitacao + ";";

            stmt = this.conexao.prepareStatement(sql);
            rs = stmt.executeQuery();
            while (rs.next()) {
                Participante participante = new Participante();
                participante.setId_participante(rs.getInt("id_participante"));
                participante.setNomecompleto_participante(rs.getString("nomecompleto_participante"));
                participante.setCurso_participante(rs.getString("curso_participante"));
                participante.setCpf_participante(rs.getString("cpf_participante"));
                participante.setVinculo_participante(rs.getString("vinculo_participante"));
                participante.setSolicitante_participante(rs.getBoolean("solicitante_participante"));

                lista.add(participante);
            }
        } catch (SQLException e) {
            System.out.println("Erro ao listar solicitacaoDAO" + e.getMessage());
        } catch (Exception ex) {
            Logger.getLogger(SolicitacaoDAOImpl.class.getName()).log(Level.SEVERE, null, ex);
        }
        return lista;
    }

}

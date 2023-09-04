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

public class SolicitacaoDAOImpl implements GenericDAO {

    private Connection conexao;
    private ResultSet rs;
    private PreparedStatement stmt;

    public SolicitacaoDAOImpl() throws Exception {
        conexao = ConnectionFactory.conectar();
    }

    @Override
    public int inserir(Object object) {
        int retorno = 0;

        try {

            Solicitacao oSolicitacao = (Solicitacao) object;

            String sql = "INSERT INTO solicitacao(datahora_solicitacao, datahorainicioutilizacao_solicitacao, qtdhorasutilizacao_solicitacao, status_solicitacao) VALUES (?, ?, ?, 'Pendente') RETURNING id_solicitacao;";

            stmt = conexao.prepareStatement(sql);

            stmt.setLong(1, oSolicitacao.getDatahora_solicitacao());
            stmt.setLong(2, oSolicitacao.getDatahorainicioutilizacao_solicitacao());
            stmt.setInt(3, oSolicitacao.getQtdhorasutilizacao_solicitacao());

            rs = stmt.executeQuery();

            rs.next();
            retorno = rs.getInt("id_solicitacao");

        } catch (SQLException e) {
            System.out.println("Erro ao solicitar a reserva" + e.getMessage());
            return 0;
        } finally {
            try {
                ConnectionFactory.fecharConexao(conexao, rs, stmt);
            } catch (Exception ex) {
                Logger.getLogger(SolicitacaoDAOImpl.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        return retorno;
    }

    @Override
    public List<Object> listar() {

        List<Object> lista = new ArrayList<>();
        try {
            String sql = "select s.id_solicitacao, p.id_participante, p.nomecompleto_participante, p.cpf_participante, "
                    + "p.curso_participante, p.vinculo_participante, s.datahora_solicitacao "
                    + "from participante p inner join solicitacao s on p.id_solicitacao = s.id_solicitacao "
                    + "where s.status_solicitacao like 'Pendente'";
            stmt = this.conexao.prepareStatement(sql);
            rs = stmt.executeQuery();
            while (rs.next()) {
                Solicitacao solicitacao = new Solicitacao();
                solicitacao.setId_solicitacao(rs.getInt("id_solicitacao"));

                Participante participante = new Participante();
                participante.setId_participante(rs.getInt("id_solicitacao"));
                participante.setNomecompleto_participante(rs.getString("nomecompleto_participante"));
                participante.setCpf_participante(rs.getString("cpf_participante"));
                participante.setCurso_participante(rs.getString("curso_participante"));
                participante.setVinculo_participante(rs.getString("vinculo_participante"));

                lista.add(solicitacao);
            }
        } catch (SQLException e) {
            System.out.println("Erro ao listar solicitacaoDAO" + e.getMessage());
        }
        return lista;
    }

    public List<Object> listarPorStatus(String status) {

        List<Object> lista = new ArrayList<>();
        try {
            String sql = "SELECT id_solicitacao, datahora_solicitacao, datahorainicioutilizacao_solicitacao,"
                    + " qtdhorasutilizacao_solicitacao, status_solicitacao"
                    + " FROM solicitacao where status_solicitacao like '" + status + "' order by id_solicitacao asc";

            stmt = this.conexao.prepareStatement(sql);
            rs = stmt.executeQuery();
            while (rs.next()) {
                Solicitacao solicitacao = new Solicitacao();
                solicitacao.setId_solicitacao(rs.getInt("id_solicitacao"));
                solicitacao.setDatahora_solicitacao(rs.getLong("datahora_solicitacao"));
                solicitacao.setDatahorainicioutilizacao_solicitacao(rs.getLong("datahorainicioutilizacao_solicitacao"));
                solicitacao.setQtdhorasutilizacao_solicitacao(rs.getInt("qtdhorasutilizacao_solicitacao"));
                solicitacao.setStatus_solicitacao(rs.getString("status_solicitacao"));

                ParticipanteDAOImpl oParticipanteDAOImpl = new ParticipanteDAOImpl();
                solicitacao.setParticipantes(oParticipanteDAOImpl.listarPorSolicitacao(rs.getInt("id_solicitacao")));

                lista.add(solicitacao);
            }
        } catch (SQLException e) {
            System.out.println("Erro ao listar solicitacaoDAO" + e.getMessage());
        } catch (Exception ex) {
            Logger.getLogger(SolicitacaoDAOImpl.class.getName()).log(Level.SEVERE, null, ex);
        }
        return lista;
    }

    @Override
    public Boolean alterar(Object object) {

        try {
            Solicitacao oSolicitacao = (Solicitacao) object;

            String sql = "update solicitacao set datahora_solicitacao = ?, " + "datahorainicioutilizacao_solicitacao = ?, qtdhorasutilizacao_solicitacao = ?, " + " status_solicitacao = ? where id_solicitacao = ? ";

            stmt = this.conexao.prepareStatement(sql);

            stmt.setInt(1, oSolicitacao.getId_solicitacao());
            stmt.setLong(2, oSolicitacao.getDatahora_solicitacao());
            stmt.setLong(3, oSolicitacao.getDatahorainicioutilizacao_solicitacao());
            stmt.setInt(4, oSolicitacao.getQtdhorasutilizacao_solicitacao());
            stmt.setString(5, oSolicitacao.getStatus_solicitacao());

            stmt.execute();

            return true;

        } catch (SQLException e) {

            System.out.println("Erro ao alterar solicitacao" + e.getMessage());
            return false;
        } finally {

            try {
                ConnectionFactory.fecharConexao(conexao, rs, stmt);
            } catch (Exception ex) {
                Logger.getLogger(SolicitacaoDAOImpl.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
    }

    @Override
    public Boolean excluir(Object object) {

        try {
            Solicitacao solicitacao = (Solicitacao) object;

            String sql = "delete from solicitacao where id = ?";

            stmt = this.conexao.prepareStatement(sql);
            stmt.setInt(1, solicitacao.getId_solicitacao());
            stmt.execute();
            return true;

        } catch (SQLException e) {
            System.out.println("Erro ao excluir solicitacaoDAO " + e.getMessage());
            return false;
        }
    }

    @Override
    public Object carregar(Integer id) {

        Solicitacao solicitacao = new Solicitacao();

        try {

            String sql = "select * from solicitacao where id = ?";

            stmt = this.conexao.prepareStatement(sql);
            stmt.setInt(1, id);
            rs = stmt.executeQuery();
            rs.next();
            solicitacao.setId_solicitacao(rs.getInt("id_solicitacao"));
            solicitacao.setDatahora_solicitacao(rs.getInt("datahorasolicitacao"));
            solicitacao.setDatahorainicioutilizacao_solicitacao(rs.getInt("datahorainicioutilizacao"));
            solicitacao.setQtdhorasutilizacao_solicitacao(rs.getInt("qtdhorasutilizacao"));
            solicitacao.setStatus_solicitacao(rs.getString("status"));

        } catch (SQLException e) {
            System.out.println("Erro ao alterar solicitacaoDAO " + e.getMessage());
        }
        return solicitacao;
    }

    public boolean alterarStatusPorID(String novostatus, int id_solicitacao) {
        try {

            String sql = "UPDATE solicitacao SET status_solicitacao='" + novostatus + "' WHERE id_solicitacao=" + id_solicitacao;

            stmt = this.conexao.prepareStatement(sql);

            stmt.execute();

            return true;

        } catch (SQLException e) {

            System.out.println("Erro ao alterar solicitacao" + e.getMessage());
            return false;
        } finally {

            try {
                ConnectionFactory.fecharConexao(conexao, rs, stmt);
            } catch (Exception ex) {
                Logger.getLogger(SolicitacaoDAOImpl.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
    }

    public String consultarStatusPorID(int id_solicitacao) {

        String retorno = "";

        try {

            String sql = "SELECT status_solicitacao FROM solicitacao WHERE id_solicitacao = " + id_solicitacao;

            stmt = this.conexao.prepareStatement(sql);
            rs = stmt.executeQuery();
            rs.next();
            retorno = rs.getString("status_solicitacao");

        } catch (SQLException e) {
            System.out.println("Erro ao alterar solicitacaoDAO " + e.getMessage());
        }
        return retorno;

    }

}

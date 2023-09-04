package Model;

import java.util.List;

public class Solicitacao {
    
    private int id_solicitacao;
    private long datahora_solicitacao;
    private long datahorainicioutilizacao_solicitacao;
    private int qtdhorasutilizacao_solicitacao;
    private String status_solicitacao;
    private List<Participante> participantes;

    public Solicitacao() {
    }

    public Solicitacao(int id_solicitacao) {
        this.id_solicitacao = id_solicitacao;
    }

    public int getId_solicitacao() {
        return id_solicitacao;
    }

    public void setId_solicitacao(int id_solicitacao) {
        this.id_solicitacao = id_solicitacao;
    }

    public long getDatahora_solicitacao() {
        return datahora_solicitacao;
    }

    public void setDatahora_solicitacao(long datahora_solicitacao) {
        this.datahora_solicitacao = datahora_solicitacao;
    }

    public long getDatahorainicioutilizacao_solicitacao() {
        return datahorainicioutilizacao_solicitacao;
    }

    public void setDatahorainicioutilizacao_solicitacao(long datahorainicioutilizacao_solicitacao) {
        this.datahorainicioutilizacao_solicitacao = datahorainicioutilizacao_solicitacao;
    }

    public int getQtdhorasutilizacao_solicitacao() {
        return qtdhorasutilizacao_solicitacao;
    }

    public void setQtdhorasutilizacao_solicitacao(int qtdhorasutilizacao_solicitacao) {
        this.qtdhorasutilizacao_solicitacao = qtdhorasutilizacao_solicitacao;
    }

    public String getStatus_solicitacao() {
        return status_solicitacao;
    }

    public void setStatus_solicitacao(String status_solicitacao) {
        this.status_solicitacao = status_solicitacao;
    }

    public List<Participante> getParticipantes() {
        return participantes;
    }

    public void setParticipantes(List<Participante> participantes) {
        this.participantes = participantes;
    }

    
}
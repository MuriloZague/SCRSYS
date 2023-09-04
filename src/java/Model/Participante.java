package Model;
public class Participante {
    
    private Integer id_participante;
    private String nomecompleto_participante;
    private String cpf_participante;
    private String vinculo_participante;
    private Boolean solicitante_participante;
    private String curso_participante;
    private Solicitacao solicitacao_participante;

    public int getId_participante() {
        return id_participante;
    }

    public void setId_participante(int id_participante) {
        this.id_participante = id_participante;
    }

    public String getNomecompleto_participante() {
        return nomecompleto_participante;
    }

    public void setNomecompleto_participante(String nomecompleto_participante) {
        this.nomecompleto_participante = nomecompleto_participante;
    }

    public String getCpf_participante() {
        return cpf_participante;
    }

    public void setCpf_participante(String cpf_participante) {
        this.cpf_participante = cpf_participante;
    }

    public String getVinculo_participante() {
        return vinculo_participante;
    }

    public void setVinculo_participante(String vinculo_participante) {
        this.vinculo_participante = vinculo_participante;
    }

    public Boolean getSolicitante_participante() {
        return solicitante_participante;
    }

    public void setSolicitante_participante(Boolean solicitante_participante) {
        this.solicitante_participante = solicitante_participante;
    }

    public String getCurso_participante() {
        return curso_participante;
    }

    public void setCurso_participante(String curso_participante) {
        this.curso_participante = curso_participante;
    }

    public Solicitacao getSolicitacao_participante() {
        return solicitacao_participante;
    }

    public void setSolicitacao_participante(Solicitacao solicitacao_participante) {
        this.solicitacao_participante = solicitacao_participante;
    }
    
}

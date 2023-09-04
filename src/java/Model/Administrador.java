package Model;
public class Administrador {
 
    private int id_administrador;
    private String nome_administrador;
    private String emailinstitucional_administrador;
    private String senha_administrador;
    private Boolean permissaoaprovacao_administrador;

    public int getId_administrador() {
        return id_administrador;
    }

    public void setId_administrador(int id_administrador) {
        this.id_administrador = id_administrador;
    }

    public String getNome_administrador() {
        return nome_administrador;
    }

    public void setNome_administrador(String nome_administrador) {
        this.nome_administrador = nome_administrador;
    }

    public String getEmailinstitucional_administrador() {
        return emailinstitucional_administrador;
    }

    public void setEmailinstitucional_administrador(String emailinstitucional_administrador) {
        this.emailinstitucional_administrador = emailinstitucional_administrador;
    }

    public String getSenha_administrador() {
        return senha_administrador;
    }

    public void setSenha_administrador(String senha_administrador) {
        this.senha_administrador = senha_administrador;
    }

    public Boolean getPermissaoaprovacao_administrador() {
        return permissaoaprovacao_administrador;
    }

    public void setPermissaoaprovacao_administrador(Boolean permissaoaprovacao_administrador) {
        this.permissaoaprovacao_administrador = permissaoaprovacao_administrador;
    }
    
    
    
}

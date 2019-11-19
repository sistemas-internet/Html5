package beans;

import java.util.HashMap;
import java.util.Map;

public class Usuarios {
 
    private int id;             // int
    private String nome;        // string(60)
    private String email;       // string(60)
    private String cpf;         // string(11)
    private String telefone;    // string(12)
    private String dt_nascimento; // string(20)
    private String senha;       // string(50)

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getCpf() {
        return cpf;
    }

    public void setCpf(String cpf) {
        this.cpf = cpf;
    }

    public String getTelefone() {
        return telefone;
    }

    public void setTelefone(String telefone) {
        this.telefone = telefone;
    }

    public String getDt_nascimento() {
        return dt_nascimento;
    }

    public void setDt_nascimento(String dt_nascimento) {
        this.dt_nascimento = dt_nascimento;
    }

    public String getSenha() {
        return senha;
    }

    public void setSenha(String senha) {
        this.senha = senha;
    }
    
    /**
     * Realiza a verificação de todos os campos da classe
     *
     * @return Campos
     */
    public Map<String, String> verificaDados() {

        Map<String, String> campos = new HashMap<>();

        if (nome.isEmpty()) {
            campos.put("nome", "");
        } else {
            campos.put("nome", nome);
        }

        if (email.isEmpty()) {
            campos.put("email", "");
        } else {
            campos.put("email", email);
        }

        if (cpf.isEmpty()) {
            campos.put("cpf", "");
        } else {
            campos.put("cpf", cpf);
        }

        if (telefone.isEmpty()) {
            campos.put("telefone", "");
        } else {
            campos.put("telefone", telefone);
        }
        
        if (dt_nascimento.isEmpty()) {
            campos.put("dt_nascimento", "");
        } else {
            campos.put("dt_nascimento", dt_nascimento);
        }
        
        if (senha.isEmpty()) {
            campos.put("senha", "");
        } else {
            campos.put("senha", senha);
        }
        return campos;
    }

    public void setDt_nascimento(java.util.Date formatedDate) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    
    
}


class Pessoa {

    private var nome: String
    private var email: String

    init(nome: String, email: String){
        self.nome = nome
        self.email = email
    }


    /*
    Getters e Setters
    */

    public func getDescricao() -> String {
        return String(format: "Nome: %@\nEmail: %@", self.nome, self.email)
    }

    public func getNome() -> String {
        return self.nome
    }

    private func setNome(nome: String) {
        self.nome = nome
    }

    public func getEmail() -> String {
        return self.email
    }

    private func setEmail(email: String) {
        self.email = email
    }


    /*
    Funcoes publicas de suporte
    */

    public func alterarNome(nome: String, senha: Int) {
        if (senha == 1234) {
            self.setNome(nome: nome)
            return
        }
        print("Acesso negado: Senha Invalida")
        
    }

    public func alterarEmail(email: String, senha: Int) {
        if (senha == 1234) {
            self.setEmail(email: email)
            return
        }
        print("Acesso negado: Senha Invalida")

    }
    
}
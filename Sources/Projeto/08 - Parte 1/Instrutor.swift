class Instrutor: Pessoa {
    var especialidade: String

    init(nome: String, email: String, especialidade: String) {
        self.especialidade = especialidade

        super.init(nome: nome, email: email)
    }

    override func getDescricao() -> String {
        return """
        Nome: \(self.nome)
        Email: \(self.email)
        Especialidade:  \(self.especialidade)
        """
    }
}
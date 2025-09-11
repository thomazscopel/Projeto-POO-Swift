class AulaPersonal: Aula {
    var aluno: Aluno

    init(nome: String, instrutor: Instrutor, aluno: Aluno) {
        self.aluno = aluno

        super.init(nome: nome, instrutor: instrutor)
    }
    
    override func getDescricao() -> String {
        return """
        Aula Personal: \(self.nome)
        Nome do instrutor: \(self.instrutor.nome)
        Nome do aluno: \(self.aluno.nome)
        """
    }
}
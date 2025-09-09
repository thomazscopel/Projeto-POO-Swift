class Aula {
    var nome: String
    var instrutor: Instrutor

    init(nome: String, instrutor: Instrutor) {
        self.nome = nome
        self.instrutor = instrutor
    }

    func getDescricao() -> String {
        return """
        Nome da aula: \(self.nome)
        Nome do instrutor: \(self.instrutor.nome)
        """
    }
}
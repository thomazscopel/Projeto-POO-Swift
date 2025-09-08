class Aluno: Pessoa {
    var matricula: String
    var nivel: NivelAluno = .iniciante
    private(set) var plano: Plano

    init(nome: String, email: String, matricula: String, nivel: NivelAluno, plano: Plano) {
        self.matricula = matricula
        self.nivel = nivel
        self.plano = plano

        super.init(nome: nome, email: email)
    }

    override func getDescricao() -> String {
        return ("""
        \(super.getDescricao())
        Matricula: \(self.matricula)
        Plano: \(self.plano.nome)
        """)
    }
}
class Academia {
    private let nome: String
    private var alunosMatriculados: [String: Aluno]
    private var instrutoresContratados: [String: Instrutor]
    private var aparelhos: [Aparelho]
    private var aulasDisponiveis: [Aula]

    init(nome: String,
    alunosMatriculados: [String: Aluno] = [:],
    instrutoresContratados: [String: Instrutor] = [:],
    aparelhos: [Aparelho] = [],
    aulasDisponiveis: [Aula] = []) {
        self.nome = nome
        self.alunosMatriculados = alunosMatriculados
        self.instrutoresContratados = instrutoresContratados
        self.aparelhos = aparelhos
        self.aulasDisponiveis = aulasDisponiveis
    }

    func matricularAluno(_ aluno: Aluno) {
        if alunosMatriculados[aluno.nome] != nil {
            print("Aluno \(aluno.nome) já está matriculado.")
            return
        }
        alunosMatriculados[aluno.nome] = aluno
        print("Aluno \(aluno.nome) matriculado com sucesso.")
    }

    func matricularAluno(nome: String, email: String, matricula: String, nivel: NivelAluno, plano: Plano) -> Aluno {
        let novoAluno = Aluno(nome: nome, email: email, matricula: matricula, nivel: nivel, plano: plano)
        matricularAluno(novoAluno)
        return novoAluno
    }
    


}
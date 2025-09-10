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


}
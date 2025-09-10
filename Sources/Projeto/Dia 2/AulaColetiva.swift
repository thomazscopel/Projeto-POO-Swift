class AulaColetiva: Aula {
    private(set) var alunosInscritos: [String : Aluno]
    var capacidadeMaxima: Int

    init(nome: String, instrutor: Instrutor, alunosInscritos: [String:Aluno]) {
        self.alunosInscritos = alunosInscritos
        self.capacidadeMaxima = 25

        super.init(nome: nome, instrutor: instrutor)
    }

    func inscreverAluno(aluno: Aluno) -> Bool {
        if alunosInscritos.count < capacidadeMaxima {
            if !alunosInscritos.keys.contains(aluno.nome) {
                alunosInscritos[aluno.nome] = aluno
                print("Aluno cadastrado com sucesso.")
                return true
            } else {
                print("Aluno ja cadastrado!!")
                return false
            }
        }
        print("Capacidade máxima atingida. Não é possível adicionar mais alunos!!")
        return false
    }
    
    override func getDescricao() -> String {
        return """
        Aula Coletiva: \(nome)
        Instrutor: \(instrutor.nome)
        Alunos Inscritos: \(alunosInscritos.count)/\(capacidadeMaxima)
        """
    }

}
class AulaColetiva: Aula {
    private(set) var alunosInscritos: [String : Aluno] = [:]
    var capacidadeMaxima: Int

    // CAPACIDADE MAXIMA ALTERADA PARA RECEBIDA COMO PARAMETRO PARA FACILITAR TESTES - Dia 4 Documentacao
    init(nome: String, instrutor: Instrutor, capacidadeMaxima: Int ) { 
        self.capacidadeMaxima = capacidadeMaxima

        super.init(nome: nome, instrutor: instrutor)
    }

    func inscreverAluno(aluno: Aluno) { // RETIRAMOS O BOOL DA DOCUMENTACAO POIS JA HÁ PRINT NA FUNCAO
        if alunosInscritos.count < capacidadeMaxima {
            if !alunosInscritos.keys.contains(aluno.nome) {
                alunosInscritos[aluno.nome] = aluno
                print("Aluno cadastrado com sucesso.")
            } else {
                print("Aluno ja cadastrado!!")
            }
        } else {
            print("Capacidade máxima atingida. Não é possível adicionar mais alunos!!")
        }
    }
    
    override func getDescricao() -> String {
        return """
        Aula Coletiva: \(nome)
        Instrutor: \(instrutor.nome)
        Alunos Inscritos: \(alunosInscritos.count)/\(capacidadeMaxima)
        """
    }

}
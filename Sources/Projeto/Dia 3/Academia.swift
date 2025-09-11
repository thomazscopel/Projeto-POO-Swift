class Academia {
    private let nome: String
    private var alunosMatriculados: [String: Aluno] = [:] // Chave: matricula do aluno
    private var instrutoresContratados: [String: Instrutor] = [:] // Chave: email do instrutor
    private var aparelhos: [Aparelho] = []
    private var aulasDisponiveis: [Aula] = []

    init(nome: String) {
        self.nome = nome
    }

    func adicionarAparelho(_ aparelho: Aparelho) {
        self.aparelhos.append(aparelho)
    }

    func adicionarAula(_ aula: Aula) {
        self.aulasDisponiveis.append(aula)
    }

    func contratarInstrutor(_ instrutor: Instrutor) {
        self.instrutoresContratados[instrutor.email] = instrutor
    }

    func matricularAluno(_ aluno: Aluno) {
        if alunosMatriculados[aluno.matricula] != nil {
            print("Aluno \(aluno.nome) já está matriculado.")
            return
        }
        alunosMatriculados[aluno.matricula] = aluno
        print("Aluno \(aluno.nome) matriculado com sucesso.")
    }

    func matricularAluno(nome: String, email: String, matricula: String, nivel: NivelAluno, plano: Plano) -> Aluno {
        let novoAluno: Aluno = Aluno(nome: nome, email: email, matricula: matricula, nivel: nivel, plano: plano)
        matricularAluno(novoAluno)
        return novoAluno
    }
    
    func buscarAluno(porMatricula matricula: String) -> Aluno? {
        
        return alunosMatriculados[matricula]
    
    }

    func listarAlunos() {
        print("--- Lista de Alunos Matriculados ---")
        
        if (alunosMatriculados.count == 0) {

            print("Nenhum Aluno matriculado\n")
            

        }
        else {
            let ordenado = alunosMatriculados.sorted(by: { $0.value.nome < $1.value.nome } )
            var countAluno = 1

            for i in ordenado{
                print("Aluno \(countAluno)")
                print(i.value.getDescricao())
                print()
                countAluno += 1
            }

        }
        print("\n-----------------")
        
    }

    func listarAulas() {
        print("--- Lista de Aulas ---")
        if (aulasDisponiveis.count == 0) {
            print("Sem Aulas")
            
        } 
        else {
            for i in aulasDisponiveis{
                print(i.getDescricao())
                print()
            }

        }
        print("\n-----------------")
        
    }
}

extension Academia {
    func gerarRelatorio() -> (totalAlunos: Int, totalInstrutores: Int, totalAulas: Int) {
        return (alunosMatriculados.count, instrutoresContratados.count, aulasDisponiveis.count)
    }
}
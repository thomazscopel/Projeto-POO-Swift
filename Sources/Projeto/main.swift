let mAula = Aula(nome: "Joao", instrutor: Instrutor(nome: "Joao Instrutor", email: "instrutor@email.com", especialidade: "especial"))

print(mAula.getDescricao())

var planoAluno = PlanoAnual()

var instrutorTeste = Instrutor(nome: "Joao", email: "abc@def.com", especialidade: "Cardio")
var alunoTeste = Aluno(nome: "Nome", email: "teste@teste.com", matricula: "ASDFGHJKLÑ", nivel: .iniciante, plano: planoAluno)
var aparelhoTeste = Aparelho(nomeItem: "sla")
// var alunosMatriculados = [alunoTeste.matricula : alunoTeste]

var academia = Academia(nome: "Nome", alunosMatriculados: [alunoTeste.matricula : alunoTeste],
    instrutoresContratados: [instrutorTeste.email: instrutorTeste],
    aparelhos: [aparelhoTeste],
    aulasDisponiveis: [mAula])



academia.listarAlunos()

//academia.matricularAluno(alunoTeste)

//print(academia.buscarAluno(porMatricula: alunoTeste.matricula)?.nome ?? "Aluno não encontrado")

//academia.listarAlunos()
//academia.listarAulas()





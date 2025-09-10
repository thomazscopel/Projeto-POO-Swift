let mAula = Aula(nome: "Joao", instrutor: Instrutor(nome: "Joao Instrutor", email: "instrutor@email.com", especialidade: "especial"))

print(mAula.getDescricao())

var planoAluno = PlanoAnual()

var alunoTeste = Aluno(nome: "Nome", email: "teste@teste.com", matricula: "ASDFGHJKLÑ", nivel: .iniciante, plano: planoAluno)

// var alunosMatriculados = [alunoTeste.matricula : alunoTeste]

var academia = Academia(nome: "Nome")

academia.buscarAluno(porMatricula: alunoTeste.matricula)

academia.listarAlunos()

academia.matricularAluno(Aluno)

academia.buscarAluno(porMatricula: alunoTeste.matricula)

academia.listarAlunos()





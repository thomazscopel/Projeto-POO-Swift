
let academia: Academia = Academia(nome: "Academia POO 360")

let planoMensal: PlanoMensal = PlanoMensal()
let planoAnual: PlanoAnual = PlanoAnual()

let instrutor1 = Instrutor(nome: "Instrutor1", email: "Instrutor1@gmail", especialidade: "Esteira")
let instrutor2 = Instrutor(nome: "Instrutor2", email: "Instrutor2@gmail", especialidade: "Agachamento")


academia.contratarInstrutor(instrutor1)
academia.contratarInstrutor(instrutor2)



let aluno1: Aluno = academia.matricularAluno(nome: "Zezinho", email:"Zezinho@gamil", matricula: "123", nivel: .iniciante, plano: planoAnual)
let aluno2: Aluno = academia.matricularAluno(nome: "Jorge", email:"jorginho@gamil", matricula: "321", nivel: .iniciante, plano: planoMensal)

let aulaPersonal = AulaPersonal(nome: "Pilates", instrutor: instrutor1, aluno: aluno1)
let aulaColetiva = AulaColetiva(nome: "Musculacao", instrutor: instrutor2, capacidadeMaxima: 3)

academia.adicionarAula(aulaPersonal)
academia.adicionarAula(aulaColetiva)

aulaColetiva.inscreverAluno(aluno: aluno1 )
aulaColetiva.inscreverAluno(aluno: aluno2 )

let aluno3: Aluno = academia.matricularAluno(nome: "Jorge2", email:"jorginho2@gamil", matricula: "3215", nivel: .iniciante, plano: planoMensal)
let aluno4: Aluno = academia.matricularAluno(nome: "Jorge3", email:"jorginho3@gamil", matricula: "3216", nivel: .iniciante, plano: planoMensal)

aulaColetiva.inscreverAluno(aluno: aluno3)
aulaColetiva.inscreverAluno(aluno: aluno4)

academia.listarAulas()
academia.listarAlunos()

var aulas: [Aula] = []

aulas.append(aulaColetiva)
aulas.append(aulaPersonal)

print("---------AULAS---------")
for aula in aulas {
    print(aula.getDescricao())
    print()
}

var pessoas: [Pessoa] = []

pessoas.append(aluno1)
pessoas.append(instrutor1)

print("\n---------PESSOAS---------")
for pessoa in pessoas {
    print(pessoa.getDescricao())
    print()
}

print("\n---------RELATORIO---------")
let relatorio = academia.gerarRelatorio()
print("""
Total Alunos: \(relatorio.totalAlunos)
Total Instrutores: \(relatorio.totalInstrutores)
Total Aulas: \(relatorio.totalAulas)
""")

 







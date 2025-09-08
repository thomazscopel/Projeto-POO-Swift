import Foundation

var teste = Pessoa(nome: "Julio", email: "teste@teste.com")

print(teste.getNome())
print(teste.getEmail())

// Nao funciona por ser private
// teste.setEmail(email: "falhou")
// teste.setNome(nome: "falhou")

print(teste.getNome())
print(teste.getEmail())


teste.alterarEmail(email: "teste@sucesso.com", senha: 1234)
teste.alterarNome(nome: "Julio Cesar", senha: 1234)

print(teste.getNome())
print(teste.getEmail())
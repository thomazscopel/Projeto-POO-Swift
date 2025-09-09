class Aparelho: Manutencao {
    var nomeItem: String

    private(set) var  dataUltimaManutencao: String = "Nenhuma"

    init(nomeItem: String) {
        self.nomeItem = nomeItem
    }

    func realizarManutencao() -> Bool {
        print("MANUTENCAO REALIZADA")
        self.dataUltimaManutencao = "30/08/2025"
        return true
    }
}
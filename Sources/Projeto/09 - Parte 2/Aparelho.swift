class Aparelho {
    var nomeItem: String
    private(set) var dataUltimaManutencao: String = "Nenhuma"

    init(nomeItem: String) {
        self.nomeItem = nomeItem
    }

    func realizarManutencao() {
        print("REALIZANDO MANUTENCAO")
        self.dataUltimaManutencao = "30/08/2025"
    }
}
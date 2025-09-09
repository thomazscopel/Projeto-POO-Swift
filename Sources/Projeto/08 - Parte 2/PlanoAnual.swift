class PlanoAnual: Plano {
    init(){
        super.init(nome: "Plano Anual (Promocional)")
    }

    override func calcularMensalidade() -> Double {
        return (((120*12)*0.8)/12)
    }
}
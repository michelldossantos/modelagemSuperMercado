import UIKit

class Produto{ // Classe pai, generalista
    //Declaração de variáveis
    var nome: String
    var valor: Double
    var estoque: Int
    var fabricante: String
    var validade: String
    var peso: Double
    var frete: Double
    
    // Inicializador
    init(nome:String, valor:Double, quantidade:Int,fabricante:String,validade:String,peso:Double, frete:Double) {
        self.nome = nome
        self.valor = valor
        self.estoque = quantidade
        self.fabricante = fabricante
        self.validade = validade
        self.peso = peso
        self.frete = frete
        
    }
    // Método para repor o estoque
    func reporEstoque(quantidade_repor: Int){
        estoque = estoque + quantidade_repor
        print("Agora o estoque de \(nome) possui \(estoque) itens")
    }
    
    //Método para Alter valor do Produto
    func alteraValor(novoValor: Double){
        valor = novoValor
        print("Agora o \(nome) custa \(valor)")
    }
    
    //Método altera o nome do Produto
    func alteraNomeProduto(novoNome: String)  {
        
        print("Agora o nome do produto \(nome) é \(novoNome)")
        nome = novoNome
    }
    
    
}

class Pizza: Produto{ // Class Pizza herda tudo o que a class Produto possui +
    
    var sabor: String
    var tamanho: String
//    var adicional: Bool
    var borda: Bool
    var valorBorda: Double
    
    init(nome: String, valor: Double, quantidade: Int, fabricante: String, validade: String, peso: Double, frete: Double,sabor: String, tamanho: String, borda: Bool,valorBorda:Double) {
        self.sabor = sabor
        self.tamanho = tamanho
        self.borda = borda
        self.valorBorda = valorBorda
        super.init(nome: nome, valor: valor, quantidade: quantidade, fabricante: fabricante, validade: validade, peso: peso, frete: frete)
        
    }
    
    func valorTotal(unidade: Int = 1) -> Double{ // assume que seja pelo menos 1 pizza e retorna o valor total a ser pago pelas pizza
        
        // valor herdado seria da pizza "P"
        // Atribui valor a pizza conforme o tamanho para no final somar
        if(tamanho == "M"){
            valor = 40.0
        }else if(tamanho == "G"){
            valor = 50.0
        }
        
        if(borda) {valor = valor + valorBorda}// verifica se tem borda ou não, caso true , adiciona valor da borda
        
        
        valor = valor * Double(unidade) // o valor  das pizza * unidades
        print("Valor Total é de \(valor)")
        
        return valor // return caso queira usar esse valor por exempo ir somando os valor dos produtos de um carrinho de compras
    }
    
}








var celular = Produto(nome: "Zenfone", valor: 1800.00, quantidade: 10, fabricante: "ASUS", validade:"0",peso: 0.5, frete: 9.99 )

celular.reporEstoque(quantidade_repor: 6)
celular.alteraValor(novoValor: 2000)
celular.alteraNomeProduto(novoNome: "Moto G8")

var pizzaCalabresa = Pizza(nome: "Pizza de Calabresa", valor: 30.0, quantidade: 10, fabricante: "Casa da Pizza", validade: "10", peso: 0.3, frete: 4.99, sabor: "Calabresa", tamanho: "G", borda: true, valorBorda: 4.5)


//pizzaCalabresa.valorTotal(unidade: 5) // se não enviar o parametro , assume que seja 1 unica pizza




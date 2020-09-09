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
    
    func setSabor(sabor: String)   {
        self.sabor = sabor
    }
    
    func setTamanho(tamanho: String)   {
        self.tamanho = tamanho
    }
    
    func setValorBorda(novoValor: Double)   {
        self.valorBorda = novoValor
    }
//    func valorTotal(unidade: Int = 1) -> Double{ // assume que seja pelo menos 1 pizza e retorna o valor total a ser pago pelas pizza
//
//        // valor herdado seria da pizza "P"
//        // Atribui valor a pizza conforme o tamanho para no final somar
//        if(tamanho == "M"){
//            valor = 40.0
//        }else if(tamanho == "G"){
//            valor = 50.0
//        }
//
//        if(borda) {valor = valor + valorBorda}// verifica se tem borda ou não, caso true , adiciona valor da borda
//
//
//        valor = valor * Double(unidade) // o valor  das pizza * unidades
//        print("Valor Total é de \(valor)")
//
//        return valor // return caso queira usar esse valor por exempo ir somando os valor dos produtos de um carrinho de compras
//    }
//
}



class Refrigerante: Produto{ // Class Pizza herda tudo o que a class Produto possui +
    
    var sabor: String
    var quantidadeMl: Int
//    var adicional: Bool
    var gelado: Bool
    
    
    init(nome: String, valor: Double, quantidadeMl: Int, fabricante: String, validade: String, peso: Double, frete: Double,sabor: String, tamanho: String, gelado: Bool) {
        self.sabor = sabor
        self.quantidadeMl = quantidadeMl
        self.gelado = gelado
        
        super.init(nome: nome, valor: valor, quantidade: quantidadeMl, fabricante: fabricante, validade: validade, peso: peso, frete: frete)
        
    }
    
    
    func  setGelado(galado: Bool) {
        self.gelado = false
    }
    
    func setSabor(sabor: String)   {
        self.sabor = sabor
    }
    
}







// ############# Celular
var celular = Produto(nome: "Zenfone", valor: 1800.00, quantidade: 10, fabricante: "ASUS", validade:"0",peso: 0.5, frete: 9.99 )
print("#########Celular##############\n")
print(celular.nome)
print(celular.valor)
celular.reporEstoque(quantidade_repor: 5) // adiciona itens ao estoque
celular.alteraValor(novoValor: 2000) // altera valor do produto
celular.alteraNomeProduto(novoNome: "Moto G8") // altera o nome
print(celular.nome) // imprime o nome alterado
print(celular.valor) // imprime o valor alterado
print("\n")


print("#########Pizza##############")
//###########PizzaCalabresa
var pizzaCalabresa = Pizza(nome: "Pizza de Calabresa", valor: 30.0, quantidade: 10, fabricante: "Casa da Pizza", validade: "10", peso: 0.3, frete: 4.99, sabor: "Calabresa", tamanho: "G", borda: true, valorBorda: 4.5)

// Imprime o que que foi instanciado , depois altera o sabor, tamanho e valor borda e imprime as novas atribuições
print(pizzaCalabresa.sabor)
print(pizzaCalabresa.tamanho)
print(pizzaCalabresa.valorBorda)
pizzaCalabresa.setSabor(sabor: "Calabresa Apimentada")
pizzaCalabresa.setTamanho(tamanho: "M")
pizzaCalabresa.setValorBorda(novoValor: 7.5)
print(pizzaCalabresa.sabor)
print(pizzaCalabresa.tamanho)
print(pizzaCalabresa.valorBorda)
print("\n")



print("#########Refrigerante##############")
//###############guaraná##################
var guarana = Refrigerante(nome: "Guaraná", valor: 5.75, quantidadeMl: 20, fabricante: "Coca", validade: "22/11/2020", peso: 2, frete: 2.99, sabor: "Guaraná", tamanho: "2l", gelado: true)


guarana.alteraValor(novoValor: 7.99) // altera volor do guaraná
print(guarana.sabor) // sabor é o que fou colocado ao criar
guarana.setSabor(sabor: "Fruk") // aqui troca o valor para fruk
print(guarana.sabor) // imprime o novo sabor setado





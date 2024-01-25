import UIKit

//print(PoligonosArea(valor1: 10, valor2: 2, poligono: "triangulo"))
//
//func PoligonosArea(valor1: Int, valor2: Int, poligono: String) {
//    switch poligono {
//    case "cuadrado":
//        print("Area: \(valor1 * valor2) ")
//    case "triangulo":
//        print("Area: \((valor1 * valor2) / 2 )")
//    case "retangulo":
//        print("Area: \( (valor1 * valor2) )")
//    default:
//        print("Te equivocaste")
//    }
//}

let rectangulo = Rectangulo(valor1: 10, valor2: 2)
//print(rectangulo.impresionArea())

print(Rectangulo(valor1:10, valor2:3).impresionArea())
print(Triangulo(valor1:10, valor2:3).impresionArea())
print(Cuadrado(valor1:10, valor2:10).impresionArea())



protocol Policgono {
    var valor1: Int {set get}
    var valor2: Int {set get}
    
    init(valor1: Int, valor2: Int)
    
    func area() -> Int
    func impresionArea()
}

class Rectangulo: Policgono {
    var valor1: Int
    var valor2: Int
    
    required init(valor1: Int, valor2: Int) {
        self.valor1 = valor1
        self.valor2 = valor2
    }
    
    func area() -> Int {
        return (valor1 * valor2)
    }
    func impresionArea() {
        print("El area del Rectangulo es: \(area())")
    }
}

class Cuadrado: Policgono {
    var valor1: Int
    var valor2: Int
    
    required init(valor1: Int, valor2: Int) {
        self.valor1 = valor1
        self.valor2 = valor2
    }
    
    func area() -> Int {
        return (valor1 * valor2)
    }
    func impresionArea() {
        print("El area del Cuadrado es: \(area())")
    }
}

class Triangulo: Policgono {
    var valor1: Int
    var valor2: Int
    
    required init(valor1: Int, valor2: Int) {
        self.valor1 = valor1
        self.valor2 = valor2
    }
    
    func area() -> Int {
        return ((valor1 * valor2) / 2)
    }
    func impresionArea() {
        print("El area del Triangulo es: \(area())")
    }
}

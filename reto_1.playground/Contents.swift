//
//  File.swift
//
//
//  Created by Asael Ponce SIlva on 19/01/24.
//

/*
 * Reto #0
 * EL FAMOSO "FIZZ BUZZ"
 * Fecha publicación enunciado: 27/12/21
 * Fecha publicación resolución: 03/01/22
 * Dificultad: FÁCIL
 * Enunciado: Escribe un programa que muestre por consola (con un print) los números de 1 a 100
 * (ambos incluidos y con un salto de línea entre cada impresión), sustituyendo los siguientes:
 * - Múltiplos de 3 por la palabra "fizz".
 * - Múltiplos de 5 por la palabra "buzz".
 * - Múltiplos de 3 y de 5 a la vez por la palabra "fizzbuzz".
*/

import UIKit

for numero in 1...100 {
//    let multiploDeTres: bool = numero % 3 == 0
//    let multiploDeCinco: bool = numero % 5 == 0
    
    if numero % 3 == 0 && numero % 5 == 0{
        print ("Multiplo de 3 y 5:  \(numero)")
    } else if numero % 3 == 0 || numero % 5 == 0 {
        if numero % 3 == 0{
            print ("Multiplo de 3:  \(numero)")
        }
        if numero % 5 == 0{
            print ("Multiplo de 5:  \(numero)")
        }
    } else {
        print(numero)
    }
}

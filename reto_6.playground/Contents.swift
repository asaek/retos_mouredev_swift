/*
 * Reto #5
 * ASPECT RATIO DE UNA IMAGEN
 * Fecha publicación enunciado: 01/02/22
 * Fecha publicación resolución: 07/02/22
 * Dificultad: DIFÍCIL
 *
 * Enunciado: Crea un programa que se encargue de calcular el aspect ratio de una imagen a partir de una url.
 * - Nota: Esta prueba no se puede resolver con el playground online de Kotlin. Se necesita Android Studio.
 * - Url de ejemplo: https://raw.githubusercontent.com/mouredev/mouredev/master/mouredev_github_profile.png
 * - Por ratio hacemos referencia por ejemplo a los "16:9" de una imagen de 1920*1080px.
 *
 * Información adicional:
 * - Usa el canal de nuestro discord (https://mouredev.com/discord) "🔁reto-semanal" para preguntas, dudas o prestar ayuda a la acomunidad.
 * - Puedes hacer un Fork del repo y una Pull Request al repo original para que veamos tu solución aportada.
 * - Revisaré el ejercicio en directo desde Twitch el lunes siguiente al de su publicación.
 * - Subiré una posible solución al ejercicio el lunes siguiente al de su publicación.
 *
 */

import UIKit

func mcd(width: Int , height: Int) -> Int{
    if width == 0 {
        return height
    } else {
        return mcd(width: height % width, height: width)
    }
}

func aspectRatio(width: Int , height: Int) -> String{
    let divisor: Int = mcd(width: width, height: height)
    
    return "\(width / divisor) / \(height / divisor)"
}

// Ejemplo de uso
if let urlImagen = URL(string: "https://w.wallhaven.cc/full/eo/wallhaven-eo8r7o.jpg") {
    obtenerTamanoDeImagen(url: urlImagen) { size in
        if let size = size {
            let aspectRatio: String = aspectRatio(width: Int(round(size.width)), height: Int(round(size.height)))
            print("Ancho: \(size.width), Alto: \(size.height), Aspect Ratio: \(aspectRatio) ")
        } else {
            print("No se pudo obtener el tamaño de la imagen.")
        }
    }
}


func obtenerTamanoDeImagen(url: URL, completion: @escaping (CGSize?) -> Void) {
    URLSession.shared.dataTask(with: url) { data, response, error in
        guard let data = data, error == nil else {
            completion(nil)
            return
        }

        let image = UIImage(data: data)
        DispatchQueue.main.async {
            completion(image?.size)
        }
    }.resume()
}


import Foundation
import Glibc

class CheckListElement{
    var poleTekstowe:String
    var czyWykonany:Bool
    
    init(){
        poleTekstowe = ""
        czyWykonany = false
    }
    init( _ poleTekstowe:String, _ czyWykonany:Bool){
        self.poleTekstowe = poleTekstowe
        self.czyWykonany = czyWykonany
    }
}
extension CheckListElement: CustomStringConvertible{
    var description: String {
        var tekstCzyWykonany = ""
        if czyWykonany == false {
            tekstCzyWykonany = "Do Wykonania"
        }
        else{
            tekstCzyWykonany = "Gotowe"
        }
        return "\(poleTekstowe) -> \(tekstCzyWykonany)"   
    }   
}

let a = CheckListElement("Poniedziałek zrobić pranie", true)
let b = CheckListElement("Wtorek Zdjąć pranie", false)
print(a)
print(b)

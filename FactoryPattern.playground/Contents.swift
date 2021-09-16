/*
 
 Factory Pattern is a creational pattern that hides the object creation from the
 caller. It provides the single object to the caller. It reduces coupling and
 provides alot of flexibility.
 
 As mentioned in the example below, firstly, Person isnt concerned as to how a
 Mobile is created, it just lets the Mobile Factory handle the creation.
 
 Secondly, when we need to add more types of Mobile we dont need to change previously
 defined Persons, or the logic outside of the Mobile Factory, thus creating alot
 of flexibility when scaling.
 
 */


class Person {
    
    var name: String
    var mobile: Mobile
    
    init(name: String, mobile: Mobile) {
        self.name = name
        self.mobile = mobile
    }
}

protocol Mobile {
    var os: String { get }
    var color: String { get }
    var cost: Double { get }
}

class Apple: Mobile {
    var os: String
    var color: String
    var cost: Double
    
    init(os: String, color: String, cost: Double) {
        self.os = os
        self.color = color
        self.cost = cost
    }
}

class Samsung: Mobile {
    var os: String
    var color: String
    var cost: Double
    
    init(os: String, color: String, cost: Double) {
        self.os = os
        self.color = color
        self.cost = cost
    }
}

enum Brand {
    case Apple, Samsung
}

class MobileFactory {
    
    static func makeMobile(brand: Brand) -> Mobile? {
        var mobile: Mobile?
        switch brand {
        case .Apple:
            mobile = Apple(os: "iOS", color: "White", cost: 999)
        case .Samsung:
            mobile = Samsung(os: "Android", color: "Black", cost: 699)
        }
        return mobile
    }
}

let person = Person(name: "Jack", mobile: MobileFactory.makeMobile(brand: .Apple)!)
print(person.mobile.os)

let person2 = Person(name: "Jack", mobile: MobileFactory.makeMobile(brand: .Samsung)!)
print(person2.mobile.os)

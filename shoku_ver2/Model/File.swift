import Foundation

struct Food {
    var id = Int()
    var title: String
    var description: String
    var price: String
    var image: String
}

var foods = [
    Food (title: "Choclate Cake", description: "チョコレートケーキ（英語: Chocolate cake）は、チョコレートまたはココアパウダーを主要材料に含むケーキである。ケーキの生地にココアパウダーを混ぜて焼くのが基本で、さらにチョコレートクリームを塗ったもの", price: "200", image:"yamii"),
    Food (title: "Cookies", description: "A biscuit is a flour-based baked food product. Outside North America the biscuit is typically hard, flat, and unleavened", price: "300", image:"cookies"),
    Food(title: "Sandwich", description: "Trim the bread from all sides and apply butter on one bread, then apply the green chutney all over.", price: "400",image: "sandwich1"),
    Food (title: "French Fries", description: "French fries, or simply fries, chips, finger chips, or French-fried potatoes, are batonnet or allumette-cut deep-fried potatoes.",price: "500", image: "fries"),
    Food (title: "寿司", description: "French fries, or simply fries, chips, finger chips, or French-fried potatoes, are batonnet or allumette-cut deep-fried potatoes.",price: "500", image: "nikuzushi"),
]

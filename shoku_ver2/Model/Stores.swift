import SwiftUI

//store datas
struct Store: Identifiable {
    var id = UUID()
    var name: String
    var position: String
    var goods : [String]
    var description: String
//    var days: Int
//    var url: URL
}

//struct Good {
//    var name: String
//    var price: String
//    var image: String
//}


struct Stores: View {
    var store: Store
    
    var stores = [
        Store(name: "店舗", position: "BKC", goods: ["たい焼き","180","たい焼き"], description: "たい焼きは、鯛を形とった金属製焼き型で焼いて作られた食べ物")
    ]
    
//    var goods = [
//        Good(name: "たい焼き", price: "180", image: "たい焼き")
//    ]
    
    var body: some View {
            Text("\(store.goods[1])")
//            Text("\(type(of: store.goods[0]))")
    }
}

struct Stores_Previews: PreviewProvider {
    static var previews: some View {
        Stores(store: Store(name: "店舗名", position: "BKC",goods: ["たい焼き","180","たい焼き"], description: "たい焼きは、鯛を形とった金属製焼き型で焼いて作られた食べ物"))
    }
}





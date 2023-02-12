import SwiftUI

struct ListView: View {
    let animals = ["🐱", "🐶", "🐥"]
    
    @State private var path = [String]()

    var body: some View {
        NavigationStack(path: $path) {
            List {
                ForEach(animals, id: \.self) { animal in
                    Button {
                        DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
                            // 実際にはサーバから取得
                            let name = ["🐱": "ねこ", "🐶": "いぬ"]
                            guard let name = name[animal] else {
                                return
                            }
                            path.append(name)
                        }
                    } label: {
                        Text(animal)
                    }
                }
            }
            .navigationDestination(for: String.self) { name in
                Text(name)
            }
        }
    }
}



struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView()
    }
}

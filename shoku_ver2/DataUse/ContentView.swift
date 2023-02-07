import SwiftUI

struct ContentView: View {
    @StateObject var okashiDataList = OkashiData()
    @State var inputText = ""
    
    var body: some View {
        VStack {
            TextField("キーワード", text: $inputText,prompt: Text("キーワードを入力してください"))
                .onSubmit {
                    //onSumitはTextFieldのモディファイア
                    
                    //Taskは非同期に実行できる
                    Task {
                        await okashiDataList.searchOsakashi(keyword: inputText)
                        //Taskは非同期に実行できるがawaitは同期処理する
                    }
                }
                .submitLabel(.search)
                .padding()
            
            Text("\(inputText)")
//            Text("\(req_url)")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

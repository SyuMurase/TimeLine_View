//
//  TimeLine.swift
//  shoku_ver2
//
//  Created by 村瀬嵩 on 2023/02/05.
//

import SwiftUI

struct TimeLine: View {
//    var food: Food
    
    var body: some View {
        NavigationView {
            VStack{
                NavigationLink(destination: SecondView()) {
                        HStack{
                            VStack(alignment: .leading, spacing: 10, content: {
                                Text("テスト")
                                    .font(.title2)
                                    .fontWeight(.bold)
                                
                                Text("テスと")
                                    .font(.caption)
                                    .lineLimit(3)
                            })
                            .background(Color.white)
                            .opacity(10)
                            
                            Spacer(minLength: 10)
                            
                            Image("yatai")
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: 130, height: 130)
                                .cornerRadius(10)
                        }
                        .padding(.horizontal)
                        .background(Color.red)
                }
                NavigationLink(destination: ThirdView()) {
                    VStack{
                        HStack{
                            VStack(alignment: .leading, spacing: 10, content: {
                                Text("テスト")
                                    .font(.title2)
                                    .fontWeight(.bold)
                                
                                Text("テスと")
                                    .font(.caption)
                                    .lineLimit(3)
                            })
                            .background(Color.white)
                            .opacity(10)
                            
                            Spacer(minLength: 10)
                            
                            Image("yatai")
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: 130, height: 130)
                                .cornerRadius(10)
                        }
                        .padding(.horizontal)
                        .background(Color.orange)
                    }
                    
                    
                    
                }
            }
        }
    }
}

struct SecondView: View {
    var body: some View {
        Text("Second View")
    }
}

struct ThirdView: View {
    var body: some View {
        Text("Third View")
    }
}

struct TimeLine_Previews: PreviewProvider {
    static var previews: some View {
        TimeLine()
    }
}

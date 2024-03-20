//
//  ContentView.swift
//  alert
//
//  Created by Kota Aso on 2024/03/20.
//

import SwiftUI

struct ContentView: View {
    @State var isShowAlert = false
    var body: some View {
        Button(action: {
            isShowAlert = true
        }) {
            Text("アラートを表示")
        }
        .alert("タイトル", isPresented: $isShowAlert) {
            Button("キャンセル") {
            }
            Button("OK"){
            }
        }message: {
            Text("ここに詳細メッセージを書きます")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

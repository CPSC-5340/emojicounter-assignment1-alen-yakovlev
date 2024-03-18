//
// ContentView.swift : Assignment1
//
// Copyright © 2023 Auburn University.
// All Rights Reserved.


import SwiftUI

struct ContentView: View {
    let array: [String] = ["🤣","😜","😀","🤩","😂"]
    var body: some View {
        
        VStack{
            Text("Emoji Counter")
                .bold()
            List {
                ForEach(array, id: \.self) {
                    emoji in ListItem(emoji:emoji)
                }
            }
            .buttonStyle(BorderlessButtonStyle())
        }
    }
}












struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}



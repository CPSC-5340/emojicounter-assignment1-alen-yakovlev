//
//  ListItem.swift
//  Assignment1
//
//  Created by Alen Yakovlev on 3/16/24.
//

import SwiftUI

struct ListItem: View {
    var emoji: String
    @State var count = 0
    
    var body: some View {
        HStack {
            Text(emoji)
            Text("Counter: \(count) ")
                .foregroundStyle(.red)
            Spacer()
            Spacer()
            Button {
                count = count + 1
            } label: {
                Image(systemName: "plus")
                    .font(.system(size: 20, weight: .light))
                    .foregroundStyle(.red)
                    .padding(5)
                    .background(
                    RoundedRectangle(cornerRadius: 10.0)
                        .stroke(.red, lineWidth: 2))
                
            }
            Button {
                count = count - 1
            } label: {
                Image(systemName: "minus")
                    .font(.system(size: 20, weight: .light))
                    .foregroundStyle(.red)
                    .padding(12)
                    .background(
                    RoundedRectangle(cornerRadius: 10.0)
                        .stroke(.red, lineWidth: 2))
            }
            .padding(.trailing, 8)
        }
        .foregroundColor(.accentColor)
        .padding()
        
    }
}

#Preview {
    ListItem(emoji: "T")
}

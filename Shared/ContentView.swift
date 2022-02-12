//
//  ContentView.swift
//  Shared
//
//  Created by Song WalKer on 12/02/2022.
//

import SwiftUI



struct ContentView: View {
    @State var isWatered = false
    
    
    var body: some View {
        VStack {
            ZStack {
                Image("background")
                    .resizable()
                    .scaledToFit()
                    .clipShape(Circle())
                Image(systemName:isWatered ? "crown.fill" :
                "eyes.inverse")
                    .font(.system(size: 150))
                    .foregroundColor(isWatered ? .yellow : .white)
            }
            .frame(minHeight:600)
            .shadow(radius: 10)
            
            Divider()
            
            Toggle(isOn: $isWatered) {
                Label("你喝水了吗", systemImage: "drop.fill")
            }
            .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

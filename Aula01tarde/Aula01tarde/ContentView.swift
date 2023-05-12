//
//  ContentView.swift
//  Aula01tarde
//
//  Created by Student10 on 05/04/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image("optimus")
            Spacer()
            ZStack{
                Image("optimus")
                    .frame(width: nil)
                    .clipShape(Circle())
                Text("HackaTruck")
                    .font(.title)
                    .fontWeight(.heavy)
                    .foregroundColor(Color.blue)
                
                    .frame( width: 200, height: 200, alignment: .top)
                
            }
            Spacer()
            
                
            HStack{
                Text("Maker ")
                    .font(.title2)
                    .foregroundColor(Color.yellow)
                    .bold()
                
                Text("Space")
                    .font(.title2)
                    .foregroundColor(Color.red)
                .bold()
                
            }.frame(width: 250, height: 160) .background (.black)
                
            
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

//
//  ContentView.swift
//  TabView
//
//  Created by Student10 on 11/04/23.
//

import SwiftUI

struct ContentView: View {
    @State var shouldPresentSheet = false
    var aluno = Aluno(
        nome : "Gustavo",
        sobrenome : "Pessoa",
      linkedin: "GustavoPessoa2719",
        insta: "@gustta_fd"
   )
    var body: some View {
        
        VStack{
            NavigationStack{
                NavigationLink("Modo 1", destination: SearchView(b:aluno))
                NavigationLink("Modo 2", destination: HomeView())
                Button("Modo 3") {
                    shouldPresentSheet.toggle()
                }
                    .sheet(isPresented: $shouldPresentSheet) {
                    } content: {
                        ProfileView()
                    }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


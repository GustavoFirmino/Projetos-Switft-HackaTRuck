//
//  ContentView.swift
//  Desafio3
//
//  Created by Student10 on 05/04/23.
//

import SwiftUI

struct ContentView: View {
    @State private var nome: String  = "Fulano"
    @State private var showingAlert = false
    var body: some View {
        
        ZStack{
            Image("truck")
                .resizable()
                .opacity(0.4)
                .frame(width: 1500, height: 900)
            ZStack{
                VStack{
                    Text("Bem vindo, \(nome)")
                        .font(.largeTitle)
                        .fontWeight(.semibold)
                        .padding(.top, 60.0)
                    TextField("Digite seu nome", text: $nome)
                        .multilineTextAlignment(.center)
                    Spacer()
                    
                    Image("logo")
                        .resizable()
                        .frame(width: 300, height: 120)
                        .scaledToFit()
                    Image("truck")
                        .resizable()
                        .frame(width:300, height: 140)
                        .shadow(radius: 15)
                    Spacer()
                    Button("Entrar"){
                        showingAlert = true
                    }
                    .alert(isPresented: $showingAlert){
                        Alert(title: Text("ALERTA!"),
                              message: Text("Você irá iniciar o desafio da aula agora, gugu conseguiu"),
                              dismissButton:
                                .default(Text("Tentar né pae")))
                    }
                    .padding(.bottom, 40.0)
                    .font(.title2)
                }.padding()
            }
        }
    }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
}

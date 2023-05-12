//
//  ContentView.swift
//  CalculadoraIMC
//
//  Created by Student10 on 10/04/23.
//

import SwiftUI

struct ContentView: View {
    @State private var peso = 0.0
    @State private var altura = 0.0
    @State private var calculo = false
    @State private var cor = "inicial"
    @State private var titulo : String = ""
    
    var body: some View {
        let imc = peso / (altura*altura)
        ZStack{
            
            Color("\(cor)").ignoresSafeArea()
            VStack {
                Text("Calculadora de IMC")
                    .font(.title)
                    .fontWeight(.medium)
                TextField("Digite seu peso", value: $peso, format: .number)
                    .background(.white)
                    .cornerRadius(8)
                    .multilineTextAlignment(.center)
                    
                TextField("Digite sua altura", value: $altura, format: .number )
                    .background(.white)
                    .cornerRadius(8)
                    .multilineTextAlignment(.center)
                Button("Calcular"){
                    calculo.toggle()
                    if imc < 18.5{
                        cor = "BaixoPeso"
                        titulo = "Baixo Peso"
                    } else if imc > 18.5 && imc < 24.99{
                        cor = "Normal"
                        titulo = "Normal"
                    } else if imc > 25 && imc < 29.99{
                        cor = "Sobrepeso"
                        titulo = "Sobrepeso"
                    }
                    else if imc > 30{
                        cor = "Obesidade"
                        titulo = "Obesidade"
                    }
                }
                .padding()
                .background(Color(red:0, green:0, blue: 0.5))
                    .foregroundColor(.white)
                    .clipShape(Capsule())
                Spacer()
                Text("\(titulo)").font(.largeTitle)
                    .multilineTextAlignment(.center)
              
                    .padding()
                    
                    
        
                
                
                Spacer()
                Image("tabela-IMC")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 380,alignment: .center)
            }
            .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

//
//  ContentView.swift
//  Desafio 6
//
//  Created by Student10 on 12/04/23.
//

import SwiftUI

struct ContentView: View {
    var Musicas = [
        musicas(id: 1, nome: "Fogueira",artista: "jorge e matheus", imagem:"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR0a5bby9Ybpd-gQRQfdHYHByTxB2aRxHVHpA&usqp=CAU"),
        musicas(id: 2, nome: "Michel Teló",artista: "Ai se eu te pego", imagem:"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ_8XJyrcl8ujCt9-Lqpu5-2asmjAZvq-BEag&usqp=CAU"),
        musicas(id: 3, nome: "Lovezin",artista: "Treyce", imagem:"https://i1.sndcdn.com/artworks-E07B4wQ0GtyEXHsI-w618sA-t500x500.jpg"),
        musicas(id: 4, nome: "Tchuco Nela",artista: "Wesley Safadão", imagem:"https://akamai.sscdn.co/uploadfile/letras/albuns/1/d/b/7/01664794894-tb_180.jpg"),
        musicas(id: 5, nome: "Te amo demais",artista: "Marília Mendonca", imagem:"https://s2.glbimg.com/G-6ciyQo9IgkcpJVn_kLH4gmWAE=/e.glbimg.com/og/ed/f/original/2022/07/21/mari.jpg"),
        musicas(id: 6, nome: "Decide Aí",artista: "Matheus e Kauã", imagem:"https://www.vagalume.com.br/matheus-e-kauan/discografia/na-praia.jpg")
    ]
    var body: some View {
        ZStack{
            LinearGradient(colors: [.cyan, .black],
                           startPoint: .top, endPoint: .center).ignoresSafeArea()
            VStack{
                ScrollView{
                    VStack{
                        Image("0")
                            .resizable()
                            .frame(width: 250, height: 250, alignment: .center)
                        
                        Text("HackaFM")
                            .frame(minWidth:0, maxWidth: 350,
                                   alignment: .leading)
                            .font(.largeTitle)
                            .fontWeight(.medium)
                            .foregroundColor(.white)
                        HStack{
                            Image("0")
                                .resizable()
                                .frame(width: 30,height: 30)
                                
                            Text("A maior saudade")
                                .font(.caption)
                                .foregroundColor(.white)
                                .padding(.trailing,200)
                            
                        }
                            VStack{
                            ForEach(Musicas){ musica in
                                    HStack{
                                        AsyncImage(url: URL(string: musica.imagem)) { image in
                                                    image
                                                        .resizable()
                                                        .aspectRatio(contentMode: .fit)
                                                        
                                                        
                                                } placeholder: {
                                                    Color.gray
                                                }
                                                .frame(width: 70, height: 70)
                                                .padding(.trailing, 100)
                                        VStack{
                                            Text(musica.nome).foregroundColor(.white).bold()
                                                .padding(.trailing)
                                            Text(musica.artista).foregroundColor(.white)
                                        }
                                    }
                                }
                            }
                        
                        ScrollView(.horizontal){
                            HStack{
                                Image("0")
                                    .resizable()
                                    .frame(width: 150, height: 150)
                                Spacer()
                                Image("images")
                                    .resizable()
                                    .frame(width: 150, height: 150)
                                Spacer()
                                Image("images-3")
                                    .resizable()
                                    .frame(width: 150, height: 150)
                                Spacer()
                                Image("images-4")
                                    .resizable()
                                    .frame(width: 150, height: 150)
                                Spacer()
                                Image("images-5")
                                    .resizable()
                                    .frame(width: 150, height: 150)
                            }
                            .padding()
                        }
                    }
                    .padding(.top, 50)
                }
                
            }
            
        }
    }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            
            ContentView()
        }
    }
}

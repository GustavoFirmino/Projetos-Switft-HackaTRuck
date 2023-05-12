//
//  SearchView.swift
//  TabView
//
//  Created by Student10 on 11/04/23.
//

import SwiftUI

struct SearchView: View {
    var b : Aluno
    var body: some View {
        Text("Meu nome é, \(b.nome) \(b.sobrenome)")
        Text("Você pode me contatar no linkedin: \(b.linkedin)")
        Text("Ou pelo meu instagram: \(b.insta)")
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        var teste = Aluno(nome: "coco", sobrenome: "coco", linkedin: "coco", insta: "coco")
        SearchView(b:teste)
        
    }
}

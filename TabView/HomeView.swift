//
//  HomeView.swift
//  TabView
//
//  Created by Student10 on 11/04/23.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationView{
            NavigationLink("Link pra outra pagina", destination: MessageView())
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}

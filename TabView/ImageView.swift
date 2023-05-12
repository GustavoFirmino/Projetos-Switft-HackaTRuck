//
//  ImageView.swift
//  TabView
//
//  Created by Student10 on 11/04/23.
//

import SwiftUI

struct ImageView: View {
    @State var shouldPresentSheet = false
    var body: some View {
        VStack {
            Button("Present Sheet") {
                shouldPresentSheet.toggle()
            }
                /// Present a sheet once `shouldPresentSheet` becomes `true`.
                .sheet(isPresented: $shouldPresentSheet) {
                    print("Sheet dismissed!")
                } content: {
                    ProfileView()
                }

        }
            .padding()
            .frame(width: 400, height: 300)
    }
    }



struct ImageView_Previews: PreviewProvider {
    static var previews: some View {
        ImageView()
    }
}

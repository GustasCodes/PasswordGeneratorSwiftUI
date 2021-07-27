//
//  LoginView.swift
//  PasswordGeneratorSwiftUI
//
//  Created by Gustas on 2021-07-27.
//

import SwiftUI

struct LoginView: View {
    var body: some View {
        VStack {
            LottieView(filename: "password")
                .frame(width: UIScreen.main.bounds.width, height: 400)
                .padding(.vertical)
            
            Spacer()
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}

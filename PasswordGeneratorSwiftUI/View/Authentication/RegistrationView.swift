//
//  RegistrationView.swift
//  PasswordGeneratorSwiftUI
//
//  Created by Gustas on 2021-07-27.
//

import SwiftUI

struct RegistrationView: View {
    @State private var email = ""
    @State private var password = ""
    @Environment(\.presentationMode) var mode
    
    var body: some View {
        VStack {
            VStack(spacing: 20) {
                CustomTextField(text: $email, placeholder: Text("Email"), imageName: "envelope")
                    .padding()
                    .background(Color(.init(white: 1, alpha: 0.15)))
                    .clipShape(RoundedRectangle(cornerRadius: 15, style: .continuous))
                    .foregroundColor(.white)
                    .padding(.horizontal, 32)
                
                CustomSecureField(text: $password, placeholder: Text("Password"))
                    .padding()
                    .background(Color(.init(white: 1, alpha: 0.15)))
                    .clipShape(RoundedRectangle(cornerRadius: 15, style: .continuous))
                    .foregroundColor(.white)
                    .padding(.horizontal, 32)
                
                Spacer()
                
            }
            Button(action: {
                mode.wrappedValue.dismiss()
            }, label: {
                Text("Sign Up").font(.system(size: 24, weight: .semibold))
                    .foregroundColor(.white)
                    .frame(width: UIScreen.main.bounds.width - 80, height: 60)
                    .background(Color(#colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)))
                    .clipShape(Capsule())
            })
        }.padding()
        .navigationBarTitle("Sign Up")
    }
}

struct RegistrationView_Previews: PreviewProvider {
    static var previews: some View {
        RegistrationView()
    }
}

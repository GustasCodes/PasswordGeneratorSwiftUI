//
//  LoginView.swift
//  PasswordGeneratorSwiftUI
//
//  Created by Gustas on 2021-07-27.
//

import SwiftUI

struct LoginView: View {
    @State private var email = ""
    @State private var password = ""
    
    var body: some View {
        NavigationView {
            VStack {
                LottieView(filename: "password")
                    .frame(width: UIScreen.main.bounds.width)
                    .padding(.top)
                
                Text("password generator")
                    .foregroundColor(.white)
                    .font(Font.custom("RacingSansOne-Regular", size: 24))
                
                Spacer()
                
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
                    
                    NavigationLink(
                        destination: ResetPasswordView(email: $email),
                        label: {
                            Text("Forgot your password?").font(.system(size: 15, weight: .semibold))
                                .foregroundColor(.white)
                        })
                }
                
                HStack {
                    NavigationLink(
                        destination: RegistrationView(),
                        label: {
                            Text("Sign up").font(.system(size: 24, weight: .semibold))
                                .foregroundColor(.white)
                        })
                    
                    Spacer()
                    
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                        Text("Login").font(.system(size: 24, weight: .semibold))
                            .foregroundColor(.white)
                            .frame(width: 140, height: 60)
                            .background(Color(#colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)))
                            .clipShape(Capsule())
                    })
                }.padding(24)
            }
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}

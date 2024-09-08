//
//  LoginView.swift
//  template
//
//  Created by Diego Antonio García Padilla on 08/09/24.
//

import SwiftUI

struct LoginView: View {
    
    // States
    @State var emailOrUsername: String = ""
    @State var password: String = ""
    @State var isPasswordVisible: Bool = false
    
    
    var body: some View {
        
        ZStack {
            VStack(alignment: .leading) {
                
                // Botón para regresar
                Button(action: {
                    //
                }, label: {
                    Image(systemName: "arrow.left")
                        .foregroundColor(.gray)
                })
                
                Spacer().frame(height: 50)
                
                // Título
                HStack(alignment: .center, spacing: 15) {
                    Text("Inicia Sesión")
                        .font(.title2)
                        .fontWeight(.bold)
                    Image(systemName: "bicycle")
                    
                }
                
                Spacer().frame(height: 50)
                
                // Formulario
                VStack(alignment: .leading,spacing: 20) {
                    
                    // Correo electrónico
                    VStack(alignment: .leading) {
                        Text("Correo electrónico o usuario")
                            .font(.caption)
                        TextField("Correo electrónico o usuario", text: $emailOrUsername)
                            .keyboardType(.emailAddress)
                            .textInputAutocapitalization(.never)
                            .padding()
                            .cornerRadius(10)
                            .shadow(radius: 1)
                            .overlay(
                                RoundedRectangle(cornerRadius: 10)
                                    .stroke(Color.gray.opacity(0.4), lineWidth: 1)
                            )
                    }
                    
                    // Contraseña
                    VStack(alignment: .leading) {
                        Text("Contraseña")
                            .font(.caption)
                        ZStack {
                            if isPasswordVisible {
                                TextField("Contraseña", text: $password)
                                    .textInputAutocapitalization(.never)
                            } else {
                                SecureField("Contraseña", text: $password)
                                    .textInputAutocapitalization(.never)
                            }
                        }
                        .padding()
                        .background(Color.white)
                        .cornerRadius(10)
                        .shadow(radius: 1)
                        .overlay(
                            HStack {
                                Spacer()
                                Button(action: {
                                    isPasswordVisible.toggle() // Muestra u oculta la contraseña
                                }) {
                                    Image(systemName: isPasswordVisible ? "eye.slash" : "eye")
                                        .foregroundColor(.gray)
                                        .padding()
                                }
                            }
                        )
                    }
                    
                    // ¿Olvidaste tu contraseña?
                    Button(action: {
                        
                    }, label: {
                        Text("¿Olvidaste tu contraseña?")
                            .font(.caption)
                            .underline()
                    })
                    
                    // Iniciar sesión
                    Button {
                        // Code
                    } label: {
                        Text("Iniciar sesión")
                            .font(.subheadline)
                            .bold()
                            .frame(maxWidth: .infinity)
                            .padding()
                            .foregroundColor(.black)
                            .background(Color(red: 0.961, green: 0.802, blue: 0.048))
                            .cornerRadius(10)
                    }
                    
                    Spacer().frame(height: 0)
                    
                    // O continúa con
                    Text("o continúa con")
                        .font(.footnote)
                        .foregroundColor(Color.gray)
                        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                    
                    VStack {
                        Button(action: {
                            // Acción de autenticación con Google
                        }) {
                            HStack(alignment: .center, spacing: 15.0) {
                                Image("GoogleLogo")
                                    .resizable()
                                    .frame(width: 20.0, height: 20.0)
                                Text("Continuar con Google")
                                    .font(.subheadline)
                                    .foregroundColor(.black)
                            }
                            .frame(maxWidth: .infinity)
                            .padding()
                            .background(Color.gray.opacity(0.2))
                            .cornerRadius(10)
                        }
                        
                        Button(action: {
                            // Acción de autenticación con Facebook
                        }) {
                            HStack(alignment: .center, spacing: 15.0) {
                                Image("FacebookLogo")
                                    .resizable()
                                    .frame(width: 20.0, height: 20.0)
                                Text("Continuar con Facebook")
                                    .font(.subheadline)
                                    .foregroundColor(.black)
                            }
                            .frame(maxWidth: .infinity)
                            .padding()
                            .background(Color.gray.opacity(0.2))
                            .cornerRadius(10)
                            
                        }
                        
                        Button(action: {
                            // Acción de autenticación con Apple
                        }) {
                            HStack(alignment: .center, spacing: 15.0) {
                                Image(systemName: "apple.logo")
                                    .resizable()
                                    .frame(width: 20.0, height: 25.0)
                                    .foregroundColor(.black)
                                Text("Continuar con Apple ID")
                                    .font(.subheadline)
                                    .foregroundColor(.black)
                            }
                            .frame(maxWidth: .infinity)
                            .padding()
                            .background(Color.gray.opacity(0.2))
                            .cornerRadius(10)
                            
                        }
                    }
                    
                }
                
                Spacer()
            }
            .padding(30)
            .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
            .zIndex(2)
        }
        
    }
}

#Preview {
    LoginView()
}

//
//  SignInStep2View.swift
//  template
//
//  Created by Diego Antonio García Padilla on 08/09/24.
//

import SwiftUI

struct SignInStep2View: View {
    
    @State var password: String = ""
    @State var confirmPassword: String = ""
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
                    Text("Crear cuenta")
                        .font(.title2)
                        .fontWeight(.bold)
                    Image(systemName: "bicycle")
                    
                }
                
                Spacer().frame(height: 50)
                
                // Formulario
                VStack(alignment: .leading,spacing: 20) {
                    
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
                    
                    
                    VStack(alignment: .leading) {
                        Text("Confirmar contraseña")
                            .font(.caption)
                        SecureField("Confirmar contraseña", text: $confirmPassword)
                            .textInputAutocapitalization(.never)
                            .padding()
                            .background(Color.white)
                            .cornerRadius(10)
                            .shadow(radius: 1)
                            .overlay(
                                Text("")
                            )
                    }
                    
                    Spacer().frame(height: 30)
                    
                    Button {
                        // Code
                    } label: {
                        Text("Continuar")
                            .font(.subheadline)
                            .bold()
                            .frame(maxWidth: .infinity)
                            .padding()
                            .foregroundColor(.black)
                            .background(Color(red: 0.961, green: 0.802, blue: 0.048))
                            .cornerRadius(10)
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
    SignInStep2View()
}

//
//  PasswordRecoveryStep2View.swift
//  template
//
//  Created by Diego Antonio García Padilla on 08/09/24.
//

import SwiftUI

struct PasswordRecoveryStep2View: View {
    
    @State var newPassword: String = ""
    @State var confirmNewPassword: String = ""
    @State var isPasswordVisible: Bool = false
    
    var body: some View {
        ZStack {
            VStack(alignment: .leading) {
                
                // Botón para regresar
                Button(action: {
                    //
                }, label: {
                    Image(systemName: "xmark")
                        .foregroundColor(.gray)
                })
                
                Spacer().frame(height: 50)
                
                // Título
                HStack(alignment: .center, spacing: 15) {
                    Text("Recupera tu contraseña")
                        .font(.title2)
                        .fontWeight(.bold)
                    Image(systemName: "bicycle")
                }
                
                Spacer().frame(height: 10)
                
                // Mensaje
                Text("Entendemos que estas cosas pasan. Enviaremos un enlace de recuperación a tu correo. Tú no te preocupes.")
                    .font(.caption)
                
                Spacer().frame(height: 30)
                
                VStack(alignment: .leading,spacing: 20) {
                    
                    // Contraseña
                    VStack(alignment: .leading) {
                        Text("Nueva contraseña")
                            .font(.caption)
                        ZStack {
                            if isPasswordVisible {
                                TextField("Nueva contraseña", text: $newPassword)
                                    .textInputAutocapitalization(.never)
                            } else {
                                SecureField("Nueva contraseña", text: $newPassword)
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
                        Text("Confirmar nueva contraseña")
                            .font(.caption)
                        SecureField("Confirmar nueva contraseña", text: $confirmNewPassword)
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
                        Text("Finalizar")
                            .font(.subheadline)
                            .bold()
                            .frame(maxWidth: .infinity)
                            .padding()
                            .foregroundColor(.black)
                            .background(Color(red: 0.961, green: 0.802, blue: 0.048))
                            .cornerRadius(10)
                    }
                    
                    // Mensaje
                    HStack {
                        Text("¿Ya tienes una cuenta?")
                            .font(.caption)
                        
                        Button(action: {
                            
                        }, label: {
                            Text("Inicia sesión aquí")
                                .font(.caption)
                                .underline()
                        })
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
    PasswordRecoveryStep2View()
}

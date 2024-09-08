//
//  PasswordRecoveryStep1View.swift
//  template
//
//  Created by Diego Antonio García Padilla on 08/09/24.
//

import SwiftUI

struct PasswordRecoveryStep1View: View {
    
    @State var emailOrUsername: String = ""
    @State var buttonLabel: String = "Enviar enlace"
    
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
                    
                    Button {
                        buttonLabel = "¡Enlace enviado!"
                    } label: {
                        Text(buttonLabel)
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
    PasswordRecoveryStep1View()
}

//
//  MainLoginView.swift
//  template
//
//  Created by Diego Antonio García Padilla on 07/09/24.
//

import SwiftUI

struct MainLoginView: View {
    var body: some View {
        
        ZStack {
            
            Group {
                
                VStack(alignment: .center){
                    
                    // Logo Saca la Bici
                    Image("Logo_SacaLaBici")
                        .resizable()
                        .frame(width: 188.0, height: 147.0)
                    
                    Spacer().frame(height: 30)
                    
                    // Form
                    VStack(alignment: .center, spacing: 20) {
                        
                        VStack(alignment: .center, spacing: 10) {
                            Text("¡Explora y disfruta Querétaro!")
                                .font(.headline)
                                .bold()
                            
                            Text("Es genial tenerte aquí.")
                                .font(.subheadline)
                                .fontWeight(.light)
                            
                        }
                        
                        VStack {
                            // Sign in
                            Button {
                                // Code
                            } label: {
                                Text("Crea una cuenta")
                                    .font(.headline)
                                    .bold()
                                    .frame(maxWidth: .infinity)
                                    .padding()
                                    .foregroundColor(.white)
                                    .background(Color(red: 0.961, green: 0.802, blue: 0.048))
                                    .cornerRadius(10)
                            }
                            
                            // Log in
                            Button {
                                // Code
                            } label: {
                                Text("Iniciar sesión")
                                    .font(.subheadline)
                                    .frame(maxWidth: .infinity)
                                    .padding()
                                    .foregroundColor(.black)
                                    .overlay (
                                        RoundedRectangle(cornerRadius: 10)
                                            .stroke(Color(red: 0.851, green: 0.851, blue: 0.851), lineWidth: 2)
                                    )
                            }
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
                        
                        Spacer().frame(height: 10)
                        
                        
                    }.padding(.horizontal, 30.0)
                        .padding(.vertical, 20.0)
                        .background(.white)
                        .cornerRadius(25)
                    
                    Spacer()
                    
                }.padding(.horizontal, 20)
                
            }.zIndex(2)
            
            VStack {
                Spacer()
                
                RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
                    .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, maxHeight: 500)
                    .foregroundColor(Color(red: 0.961, green: 0.802, blue: 0.048))
            }.zIndex(/*@START_MENU_TOKEN@*/1.0/*@END_MENU_TOKEN@*/)
            
        }.frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, maxHeight: .infinity)
            .background(Color(red: 0.925, green: 0.925, blue: 0.925))
    }
}

#Preview {
    MainLoginView()
}

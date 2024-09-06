//
//  ForoView.swift
//  template
//
//  Created by Jesus Cedillo on 06/09/24.
//

import SwiftUI

struct ForoViewTab: View {
    @State private var selectedTab = 0
    
    var body: some View {
        NavigationView {
            VStack(spacing: 0) {
                
                VStack {
                    if selectedTab == 0 {
                        ForoView()
                    } else if selectedTab == 1 {
                        
                    } else if selectedTab == 2 {
                        
                    } else {
                        
                    }
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                
                CustomFooterView(selectedTab: $selectedTab)
            }
            .navigationBarHidden(true)
        }
    }
}

struct ForoView: View {
    var body: some View {
        VStack(spacing: 0) {
            ZStack {
                HStack {
                    Button(action: {
                        
                    }) {
                        HStack {
                            Image(systemName: "chevron.backward")
                                .foregroundColor(Color(red: 193.0 / 255.0, green: 182.0 / 255.0, blue: 3.0 / 255.0))
                        }
                        .scaleEffect(1.5)
                        .padding(.leading, 10)
                    }
                    .buttonStyle(PlainButtonStyle())
                    
                    Spacer()
                }
                .padding()
                
                Text("Comentario")
                    .font(.title3)
                    .bold()
            }
            
            ScrollView {
                Spacer()
                Spacer()
                Section {
                    HStack() {
                        Image("Avatar")
                            .padding(.leading, 25)
                        Spacer()
                        
                        VStack() {
                            Text("Ricardo Sánchez")
                                .bold()
                                .frame(maxWidth: .infinity, alignment: .leading)
                            Text("23/08/2024 - 11:21")
                                .font(.footnote)
                                .frame(maxWidth: .infinity, alignment: .leading)
                        }
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding()
                    }
                    
                    HStack {
                        Text("Parece que va a llover hoy, aún así va a haber rodada?")
                            .padding(.leading, 25)
                        Spacer()
                    }
                    .padding()
                    
                    HStack(spacing: 15) {
                        Button(action: {
                            
                        }) {
                            Image(systemName: "heart")
                            Text("33")
                        }
                        .buttonStyle(PlainButtonStyle())
                        
                        Button(action: {
                            
                        }) {
                            Image(systemName: "text.bubble")
                            Text("10")
                        }
                        .buttonStyle(PlainButtonStyle())
                    }
                    .padding(.leading, 30)
                    .frame(maxWidth: .infinity, alignment: .leading)
                }
                
                Divider()
                    .padding()
                
                Text("Respuestas")
                    .bold()
                    .padding(.bottom, 15)
                
                Section {
                    HStack() {
                        Image("Avatar2")
                            .padding(.leading, 25)
                        Spacer()
                        
                        VStack() {
                            Text("Angélica Leal")
                                .bold()
                                .frame(maxWidth: .infinity, alignment: .leading)
                            Text("24/08/2024 - 16:34")
                                .font(.footnote)
                                .frame(maxWidth: .infinity, alignment: .leading)
                        }
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding()
                    }
                    
                    HStack {
                        Text("Siempre hay rodada")
                            .padding(.leading, 25)
                        Spacer()
                    }
                    .padding()
                }
                
                Divider()
                    .padding()
                
                Section {
                    HStack() {
                        Image("Avatar")
                            .padding(.leading, 25)
                        Spacer()
                        
                        VStack() {
                            Text("Ricardo Sánchez")
                                .bold()
                                .frame(maxWidth: .infinity, alignment: .leading)
                            Text("24/08/2024 - 20:18")
                                .font(.footnote)
                                .frame(maxWidth: .infinity, alignment: .leading)
                        }
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding()
                    }
                    
                    HStack {
                        Text("Gracias por la respuesta!")
                            .padding(.leading, 25)
                        Spacer()
                    }
                    .padding()
                }
                
            }
        }
    }
}

#Preview {
    ForoViewTab()
}

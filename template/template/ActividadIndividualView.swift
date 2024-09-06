//
//  ActividadIndividualView.swift
//  template
//
//  Created by Jesus Cedillo on 05/09/24.
//

import SwiftUI

struct ActividadIndividualTab: View {
    @State private var selectedTab = 1
    @State private var comentario = ""
    
    var body: some View {
        NavigationView {
            VStack(spacing: 0) {
                
                VStack {
                    if selectedTab == 0 {
                        ActividadesView()
                    } else if selectedTab == 1 {
                        ActividadIndividualView()
                    } else if selectedTab == 2 {
                        consultarAnuncio()
                    } else {
                        ConfigurationView()
                    }
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                
                if selectedTab == 1 {
                    HStack {
                        TextField("Escribe un comentario...", text: $comentario)
                            .padding()
                            .cornerRadius(10)
                            .padding(.horizontal)
                        
                        Button(action: {
                            // Acción para enviar el comentario
                        }) {
                            Image(systemName: "paperplane")
                                .padding()
                                .foregroundColor(.black)
                        }
                        .buttonStyle(PlainButtonStyle())
                        .padding(.trailing)
                    }
                }
                
                CustomFooterView(selectedTab: $selectedTab)
            }
            .navigationBarHidden(true)
        }
    }
}

struct ActividadIndividualView: View {
    var body: some View {
        VStack(spacing: 0) {
            HStack {
                Button(action: {
                    
                }) {
                    Image(systemName: "chevron.backward")
                        .foregroundColor(Color(red: 193.0 / 255.0, green: 182.0 / 255.0, blue: 3.0 / 255.0))
                }
                .scaleEffect(1.5)
                .padding(.leading, 25)
                .buttonStyle(PlainButtonStyle())
                
                Spacer()
                Text("Rodada Nocturna")
                    .font(.title3)
                    .bold()
                Spacer()
                
                ActividadIndividualHeader(level: "Nivel 2", attendees: 64)
                    .padding(.trailing, 20)
            }
            .padding(.vertical)
            
            ScrollView {
                Spacer()
                Spacer()
                Rectangle()
                    .fill(Color.gray)
                    .frame(height: 150)
                    .cornerRadius(8)
                    .padding(.horizontal)
                HStack {
                    Button(action: {
                        
                    }) {
                        Text("Materiales")
                            .padding(.leading, 15)
                            .foregroundColor(.black)
                            .bold()
                            .font(.title2)
                        Spacer()
                        Image(systemName: "chevron.forward")
                            .foregroundColor(Color(red: 193.0 / 255.0, green: 182.0 / 255.0, blue: 3.0 / 255.0))
                            .scaleEffect(1.5)
                            .padding(.trailing, 25)
                    }
                    .buttonStyle(PlainButtonStyle())
                }
                .padding()
                
                VStack(alignment: .leading, spacing: 4) {
                    HStack {
                        Text("Fecha")
                            .bold()
                            .foregroundColor(.gray)
                        Text("Miércoles 28 agosto 2024")
                    }
                    HStack {
                        Text("Hora")
                            .bold()
                            .foregroundColor(.gray)
                        Text("21:00")
                    }
                    HStack {
                        Text("Duración")
                            .bold()
                            .foregroundColor(.gray)
                        Text("1 hora")
                    }
                    HStack {
                        Text("Ubicación")
                            .bold()
                            .foregroundColor(.gray)
                        Text("Cerro de las Campanas")
                    }
                    HStack {
                        Text("Distancia")
                            .bold()
                            .foregroundColor(.gray)
                        Text("20 km")
                    }
                    HStack {
                        Text("Renta Bicicletas")
                            .bold()
                            .foregroundColor(.gray)
                        Text("Click aquí")
                    }
                }
                .padding(.trailing, 55)
                
                HStack(spacing: 20) {
                    Button(action: {
                        
                    }){
                        HStack {
                            Image(systemName: "mappin")
                            Text("Ver Ruta")
                                .font(.headline)
                        }
                        .foregroundColor(.white)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color(hex: "#88B598"))
                        .cornerRadius(15)
                    }
                    .buttonStyle(PlainButtonStyle())
                    
                    Button(action: {
                        
                    }){
                        HStack {
                            Image(systemName: "plus.circle")
                            Text("Unirse")
                                .font(.headline)
                        }
                        .foregroundColor(.white)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.yellow)
                        .cornerRadius(15)
                    }
                    .buttonStyle(PlainButtonStyle())
                }
                .padding(.horizontal, 30)
                .padding(.vertical, 5)
                
                HStack {
                    Text("20 Comentarios")
                        .padding(.leading, 20)
                    Spacer()
                }
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
                            Text("23/08/2024 - 11:21")
                                .font(.footnote)
                                .frame(maxWidth: .infinity, alignment: .leading)
                        }
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding()
                    }
                    
                    HStack {
                        Text("Puedo llevar a mi perro a la rodada?")
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
                
                Section {
                    HStack() {
                        Image("Avatar2")
                            .padding(.leading, 25)
                        Spacer()
                        
                        VStack() {
                            Text("Juana Pérez")
                                .bold()
                                .frame(maxWidth: .infinity, alignment: .leading)
                            Text("25/08/2024 - 14:52")
                                .font(.footnote)
                                .frame(maxWidth: .infinity, alignment: .leading)
                        }
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding()
                    }
                    
                    HStack {
                        Text("¡Si claro! Todos son bienvenidos.")
                            .padding(.leading, 25)
                        Spacer()
                    }
                    .padding()
                    
                    HStack(spacing: 15) {
                        Button(action: {
                            
                        }) {
                            Image(systemName: "heart")
                            Text("5")
                        }
                        .buttonStyle(PlainButtonStyle())
                        
                        Button(action: {
                            
                        }) {
                            Image(systemName: "text.bubble")
                            Text("2")
                        }
                        .buttonStyle(PlainButtonStyle())
                    }
                    .padding(.leading, 30)
                    .frame(maxWidth: .infinity, alignment: .leading)
                }
            }
        }
        .padding(.top, 4)
    }
}

struct ActividadIndividualHeader: View {
    var level: String
    var attendees: Int
    var body: some View {
        Text(level)
            .font(.caption)
            .foregroundColor(.white)
            .padding(6)
            .background(level == "Nivel 1" ? Color.green : (level == "Nivel 2" ? Color.orange : Color.gray))
            .cornerRadius(8)
    
        HStack(spacing: 4) {
            Image(systemName: "person.2")
            Text("\(attendees)")
        }
    }
}

#Preview {
    ActividadIndividualTab()
}

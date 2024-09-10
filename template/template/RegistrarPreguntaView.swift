//
//  RegistrarPreguntaView.swift
//  template
//
//  Created by Arturo Sanchez on 09/09/24.
//

import SwiftUI

struct RegistrarPreguntaView: View {
    @State private var preguntaTitulo: String = ""
    @State private var preguntaDescripcion: String = ""
    @State private var showAlert = false 
    @State private var selectedTab = 0

    var body: some View {
        VStack {
            HStack {
                Button(action: {
                    print("Cancelar pregunta")
                }) {
                    Image(systemName: "xmark")
                        .foregroundColor(.black)
                }
                .padding(.leading)
                
                Spacer()
                
                Text("Añadir pregunta")
                    .font(.headline)
                    .fontWeight(.bold)
                
                Spacer()
                
                Button(action: {
                    if !preguntaTitulo.isEmpty && !preguntaDescripcion.isEmpty {
                        showAlert = true
                    }
                }) {
                    Image(systemName: "checkmark")
                        .foregroundColor(.yellow)
                }
                .padding(.trailing)
            }
            .padding(.vertical)
            .background(Color.white)
            
            Divider()
            
            VStack(alignment: .leading, spacing: 16) {
                Text("Título")
                    .font(.headline)
                    .padding(.horizontal)
                
                TextField("¿Qué pregunta vas a responder?", text: $preguntaTitulo)
                    .padding()
                    .background(Color(UIColor.systemGray6))
                    .cornerRadius(10)
                    .padding(.horizontal)
                
                Text("Descripción")
                    .font(.headline)
                    .padding(.horizontal)
                
                TextEditor(text: $preguntaDescripcion)
                    .padding()
                    .background(Color(UIColor.systemGray6))
                    .cornerRadius(10)
                    .frame(height: 150)
                    .padding(.horizontal)
            }
            
            Spacer()
            
            TabView(selection: $selectedTab) {
                Text("Actividades")
                    .tabItem {
                        Image(systemName: "bicycle")
                        Text("Actividades")
                    }
                    .tag(0)
                
                Text("Mapa")
                    .tabItem {
                        Image(systemName: "map")
                        Text("Mapa")
                    }
                    .tag(1)
                
                Text("Anuncios")
                    .tabItem {
                        Image(systemName: "megaphone")
                        Text("Anuncios")
                    }
                    .tag(2)
                
                Text("Perfil")
                    .tabItem {
                        Image(systemName: "person.circle")
                        Text("Perfil")
                    }
                    .tag(3)
            }
            .padding(.top)
        }
        .background(Color(UIColor.systemBackground))
        .edgesIgnoringSafeArea(.bottom)
        .alert(isPresented: $showAlert) {
            Alert(
                title: Text("Pregunta Guardada"),
                message: Text("Tu pregunta se ha guardado correctamente."),
                dismissButton: .default(Text("OK"))
            )
        }
    }
}

struct RegistrarPreguntaView_Previews: PreviewProvider {
    static var previews: some View {
        RegistrarPreguntaView()
    }
}

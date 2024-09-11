//
//  ConsultarUsuariosView.swift
//  template
//
//  Created by Diego Lira on 08/09/24.
//

import SwiftUI

struct ConsultarUsuariosView: View {
    @State private var selectedTab = 0
    @State private var searchText = ""

    var body: some View {
        VStack {
            // Encabezado con botón de regresar y título
            HStack {
                Button(action: {
                    // Acción para regresar
                }) {
                    Image(systemName: "arrow.left")
                        .font(.title2)
                        .foregroundColor(.black)
                }
                Spacer()
                Text("Añadir Amigos")
                    .font(.headline)
                    .foregroundColor(.black)
                Spacer()
            }
            .padding(.horizontal)
            .padding(.top, 10)

            // Segmentos de navegación
            Picker("", selection: $selectedTab) {
                Text("Amigos").tag(0)
                Text("Solicitudes").tag(1)
                Text("Búsqueda").tag(2)
            }
            .pickerStyle(SegmentedPickerStyle())
            .padding(.horizontal)
            .padding(.top, 20)
            .padding(.bottom, 20)

            // Campo de búsqueda redondeado
            HStack {
                Image(systemName: "magnifyingglass")
                    .foregroundColor(.gray)
                TextField("Buscar", text: $searchText)
                    .padding(.vertical, 10)
            }
            .padding(.horizontal)
            .background(Color(UIColor.systemGray6))
            .cornerRadius(25)
            .padding(.horizontal)

            // Contenido según la pestaña seleccionada
            if selectedTab == 0 {
                AmigosListView()
            } else if selectedTab == 1 {
                SolicitudesListView()
            } else {
                BusquedaView()
            }

            Spacer()
        }
        .background(Color.white) // Asegura que el fondo de toda la vista sea blanco
        .navigationBarHidden(true)
        .padding(.bottom, 10)
    }
}

// Vista de amigos
struct AmigosListView: View {
    var amigos = ["Juan Pérez", "Guadalupe Rojas", "Joaquín Ríos", "Alex López", "Martín Martínez", "Paulina Reyes"]

    var body: some View {
        List(amigos, id: \.self) { amigo in
            HStack {
                Image("Avatar")  // Imagen de avatar personalizada
                    .resizable()
                    .scaledToFit()
                    .frame(width: 40, height: 40)
                    .clipShape(Circle())
                
                Text(amigo)
                    .font(.system(size: 12))

                Spacer()

                Button(action: {
                    // Acción para eliminar
                }) {
                    Text("Eliminar")
                        .foregroundColor(.gray)
                        .padding(.horizontal)
                        .padding(.vertical, 6)
                        .background(Color(UIColor.systemGray6))
                        .cornerRadius(10)
                        .font(.system(size: 12))
                }
            }
            .padding(.vertical, 4)
        }
        .listStyle(PlainListStyle()) // Para evitar fondo predeterminado de SwiftUI
        .listRowBackground(Color.white) // Establece fondo blanco en cada fila
        .background(Color.white) // Establece fondo blanco para todo el listado
    }
}

// Vista de solicitudes
struct SolicitudesListView: View {
    var solicitudes = ["Paola García", "Valeria Gómez", "Angélica Leal", "Mónica Martínez", "Ricardo Sánchez", "Aurora Donato"]

    var body: some View {
        List(solicitudes, id: \.self) { solicitud in
            HStack {
                Image("Avatar")  // Imagen de avatar personalizada
                    .resizable()
                    .scaledToFit()
                    .frame(width: 40, height: 40)
                    .clipShape(Circle())
                
                Text(solicitud)
                    .font(.system(size: 12))

                Spacer()

                Button(action: {
                    // Acción para confirmar
                }) {
                    Text("Confirmar")
                        .foregroundColor(.white)
                        .padding(.horizontal)
                        .padding(.vertical, 6)
                        .background(Color.yellow)
                        .cornerRadius(10)
                        .font(.system(size: 12))
                }

                Button(action: {
                    // Acción para eliminar
                }) {
                    Text("Eliminar")
                        .foregroundColor(.gray)
                        .padding(.horizontal)
                        .padding(.vertical, 6)
                        .background(Color(UIColor.systemGray6))
                        .cornerRadius(10)
                        .font(.system(size: 12))
                }
            }
            .padding(.vertical, 4)
        }
        .listStyle(PlainListStyle()) // Para evitar fondo predeterminado de SwiftUI
        .listRowBackground(Color.white) // Establece fondo blanco en cada fila
        .background(Color.white) // Establece fondo blanco para todo el listado
    }
}

// Vista de búsqueda
struct BusquedaView: View {
    var body: some View {
        Text("Resultados de la búsqueda...")
            .font(.system(size: 16))
            .foregroundColor(.gray)
            .padding()
    }
}
#Preview {
    ConsultarUsuariosView()
}

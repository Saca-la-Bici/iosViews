//
//  ContentView.swift
//  iOSViews
//
//  Created by Arturo Sanchez on 06/09/24.
//

import SwiftUI

struct ModificarRolView: View {
    @State private var selectedTab = 0

    var body: some View {
        TabView(selection: $selectedTab) {
            RoleAssignmentView()
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
            
            RoleAssignmentView()
                .tabItem {
                    Image(systemName: "person.circle")
                    Text("Perfil")
                }
                .tag(3)
        }
    }
}

struct RoleAssignmentView: View {
    var body: some View {
        VStack {
            HStack {
                Text("Asignación de roles y permisos")
                    .font(.headline)
                    .padding()
                Spacer()
            }
            
            HStack {
                Text("Administradores")
                    .font(.subheadline)
                    .foregroundColor(.yellow)
                    .padding(.leading)
                
                Spacer()
                
                Text("Staff")
                    .font(.subheadline)
                    .padding(.trailing)
            }
            .padding(.bottom)
            
            SearchBarView()
            
            ScrollView {
                VStack(spacing: 15) {
                    ForEach(userData, id: \.id) { user in
                        UserRow(user: user)
                    }
                }
            }
        }
        .padding()
    }
}

struct SearchBarView: View {
    @State private var searchText = ""
    
    var body: some View {
        HStack {
            TextField("Buscar", text: $searchText)
                .padding(.leading, 8)
                .frame(height: 40)
                .background(Color(.systemGray5))
                .cornerRadius(8)
            
            Spacer()
        }
        .padding(.horizontal)
    }
}

struct UserRow: View {
    let user: User
    
    var body: some View {
        HStack {
            Image(systemName: "person.circle")
                .resizable()
                .frame(width: 40, height: 40)
                .padding(.leading)
            
            Text(user.name)
            
            Spacer()
            
            Button(action: {}) {
                Text(user.isAdmin ? "Eliminar" : "Agregar")
                    .padding()
                    .background(user.isAdmin ? Color.gray : Color.yellow)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
            .padding(.trailing)
        }
        .padding(.vertical, 5)
        .background(Color(.systemGray6))
        .cornerRadius(10)
    }
}

struct User: Identifiable {
    let id = UUID()
    let name: String
    let isAdmin: Bool
}

let userData = [
    User(name: "Arturo Sánchez Rodrúguez", isAdmin: true),
    User(name: "María Jose Gaytán Gil", isAdmin: true),
    User(name: "Jesús Alejandro Cedillo Zertuche", isAdmin: false),
    User(name: "Diego Liria García", isAdmin: false),
    User(name: "Diego Antonio García Padilla", isAdmin: false),
]

struct ModificarRolView_Previews: PreviewProvider {
    static var previews: some View {
        ModificarRolView()
    }
}



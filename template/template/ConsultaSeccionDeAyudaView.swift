//
//  ConsultaSeccionDeAyudaView.swift
//  template
//
//  Created by Arturo Sanchez on 08/09/24.
//

import SwiftUI

struct AyudaView: View {
    @State private var searchText = ""

    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Image(systemName: "magnifyingglass")
                    .foregroundColor(.gray)
                    .padding(.leading, 8)
                TextField("¿Cuál es tu duda?", text: $searchText)
                    .padding(.vertical, 10)
                    .padding(.horizontal, 4)
            }
            .background(Color(.systemGray6))
            .cornerRadius(10)
            .padding(.horizontal)
            .padding(.top, 10)
            
            Text("Tu seguridad")
                .font(.headline)
                .padding(.leading, 16)
                .padding(.top, 10)
            
            List {
                Section {
                    NavigationLink(destination: DetailView(question: "¿Qué llevo a la rodada?")) {
                        HStack {
                            Text("¿Qué llevo a la rodada?")
                            Spacer()
                            Image(systemName: "chevron.right")
                                .foregroundColor(.gray)
                        }
                    }
                    
                    NavigationLink(destination: DetailView(question: "El decálogo del ciclista")) {
                        HStack {
                            Text("El decálogo del ciclista")
                            Spacer()
                            Image(systemName: "chevron.right")
                                .foregroundColor(.gray)
                        }
                    }
                }

                Section(header: Text("Acerca de Rentabici")) {
                    NavigationLink(destination: DetailView(question: "¿Qué hago si no tengo una bicicleta?")) {
                        HStack {
                            Text("¿Qué hago si no tengo una bicicleta?")
                            Spacer()
                            Image(systemName: "chevron.right")
                                .foregroundColor(.gray)
                        }
                    }
                    
                    NavigationLink(destination: DetailView(question: "¿Qué pasa si pierdo el token que me dieron?")) {
                        HStack {
                            Text("¿Qué pasa si pierdo el token que me dieron?")
                            Spacer()
                            Image(systemName: "chevron.right")
                                .foregroundColor(.gray)
                        }
                    }
                }

                Section(header: Text("Uso de la aplicación")) {
                    NavigationLink(destination: DetailView(question: "¿Cómo me inscribo a una rodada?")) {
                        HStack {
                            Text("¿Cómo me inscribo a una rodada?")
                            Spacer()
                            Image(systemName: "chevron.right")
                                .foregroundColor(.gray)
                        }
                    }
                    
                    NavigationLink(destination: DetailView(question: "¿Cómo restablezco mi contraseña?")) {
                        HStack {
                            Text("¿Cómo restablezco mi contraseña?")
                            Spacer()
                            Image(systemName: "chevron.right")
                                .foregroundColor(.gray)
                        }
                    }
                }
            }
            .listStyle(InsetGroupedListStyle())
        }
        .navigationTitle("Ayuda")
    }
}

struct PerfilView: View {
    var body: some View {
        NavigationView {
            List {
                NavigationLink(destination: AyudaView()) {
                    HStack {
                        Text("Ayuda")
                        Spacer()
                        Image(systemName: "chevron.right")
                            .foregroundColor(.gray)
                    }
                }
                NavigationLink(destination: InfoView()) {
                    HStack {
                        Text("Información")
                        Spacer()
                        Image(systemName: "chevron.right")
                            .foregroundColor(.gray)
                    }
                }
                NavigationLink(destination: ComoUsarAppView()) {
                    HStack {
                        Text("Cómo usar la app")
                        Spacer()
                        Image(systemName: "chevron.right")
                            .foregroundColor(.gray)
                    }
                }
                NavigationLink(destination: SeguridadCuentaView()) {
                    HStack {
                        Text("Seguridad y acceso a la cuenta")
                        Spacer()
                        Image(systemName: "chevron.right")
                            .foregroundColor(.gray)
                    }
                }
            }
            .listStyle(InsetGroupedListStyle())
            .navigationTitle("Perfil")
        }
    }
}

struct DetailView: View {
    var question: String

    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            Text(question)
                .font(.title)
                .bold()

            Text("Aquí va la respuesta detallada de la pregunta seleccionada. Puedes personalizar este contenido dependiendo de la información que desees mostrar para cada tema.")
                .font(.body)
                .padding()

            Spacer()
        }
        .padding()
        .navigationTitle("Ayuda")
    }
}

struct InfoView: View {
    var body: some View {
        List {
            Text("Política de privacidad")
            Text("Condiciones de uso")
        }
        .navigationTitle("Información")
    }
}

struct ComoUsarAppView: View {
    var body: some View {
        List {
            Text("Actividades")
            Text("Mapa")
            Text("Anuncios")
            Text("Perfil")
            Text("Notificaciones")
        }
        .navigationTitle("Cómo usar la app")
    }
}

struct SeguridadCuentaView: View {
    @State private var currentPassword = ""
    @State private var newPassword = ""
    @State private var confirmPassword = ""

    var body: some View {
        VStack {
            Text("Seguridad y acceso a la cuenta")
                .font(.title2)
                .bold()
                .padding()

            TextField("Contraseña actual", text: $currentPassword)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding(.horizontal)

            TextField("Nueva contraseña", text: $newPassword)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding(.horizontal)

            TextField("Confirmar nueva contraseña", text: $confirmPassword)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding(.horizontal)

            Spacer()
        }
        .navigationTitle("Seguridad")
        .padding(.top)
    }
}

struct MainView: View {
    @State private var selectedTab = 3

    var body: some View {
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

            PerfilView()
                .tabItem {
                    Image(systemName: "person.circle")
                    Text("Perfil")
                }
                .tag(3)
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}

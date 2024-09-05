//
//  ConfigurationView.swift
//  template
//
//  Created by Jesus Cedillo on 05/09/24.
//

import SwiftUI

struct ConfigurationView: View {
    var body: some View {
        VStack(spacing: 0) {
            HStack {
                Button {
                } label: {
                    Image(systemName: "chevron.backward")
                        .foregroundColor(Color(red: 193.0 / 255.0, green: 182.0 / 255.0, blue: 3.0 / 255.0))
                }
                .scaleEffect(1.5)
                .padding(.leading, 25)
                Spacer()
                Text("Configuración y Privacidad")
                    .font(.title3)
                    .bold()
                Spacer()
            }
            .padding(.vertical)


            ScrollView {
                Spacer()
                Spacer()
                VStack(alignment: .leading, spacing: 20) {
                    VStack(alignment: .leading, spacing: 10) {
                        Text("Más información y asistencia")
                            .foregroundColor(.gray)
                            .font(.callout)
                            .bold()
                            .padding(.leading, 20)
                        
                        Group {
                            BotonSeccion(icono: "questionmark.circle", titulo: "Ayuda",
                                button: true)
                            BotonSeccion(icono: "info.circle", titulo: "Información",
                                         button: true)
                            BotonSeccion(icono: "figure.outdoor.cycle", titulo: "Cómo usar la app",
                                         button: true)
                        }
                    }
                    .padding(.horizontal, 25)
                    
                    Divider()
                    
                    VStack(alignment: .leading, spacing: 10) {
                        Text("Administra tu cuenta")
                            .foregroundColor(.gray)
                            .font(.callout)
                            .bold()
                            .padding(.leading, 20)
                        
                        BotonSeccion(icono: "person.circle", titulo: "Tu Cuenta",
                                     button: false)
                    }
                    .padding(.horizontal, 25)
                    
                    Divider()
                    
                    VStack(alignment: .leading, spacing: 10) {
                        Text("Otras plataformas")
                            .foregroundColor(.gray)
                            .font(.callout)
                            .bold()
                            .padding(.leading, 20)
                        
                        BotonSeccion(icono: "globe", titulo: "Saca la Bici",
                                     button: false)
                        BotonSeccion(icono: "globe", titulo: "Rentabici",
                                     button: false)
                    }
                    .padding(.horizontal, 25)
                    
                    Divider()
                    
                    HStack {
                        Button {
                        } label: {
                            Text("Cerrar Sesión")
                                .foregroundColor(.red)
                        }
                        Spacer()
                    }
                    .padding(.horizontal, 25)
                }
            }
        }
        .padding(.top, 4)
    }
}

// Subvista para los botones con íconos y títulos
struct BotonSeccion: View {
    var icono: String
    var titulo: String
    var button: Bool
    
    var body: some View {
        HStack {
            Button {
            } label: {
                Image(systemName: icono)
                    .foregroundColor(.black)
                Text(titulo)
                    .foregroundColor(.black)
                Spacer()
                if (button == true) {
                    Image(systemName: "chevron.forward")
                        .foregroundColor(Color(red: 193.0 / 255.0, green: 182.0 / 255.0, blue: 3.0 / 255.0))
                        .scaleEffect(1.5)
                }
            }
        }
        .padding(.vertical, 4)
    }
}


#Preview {
    ConfigurationView()
}

//
//  ConsultarPerfilPropioView.swift
//  template
//
//  Created by Diego Lira on 08/09/24.
//

import SwiftUI

struct ConsultarPerfilPropioView: View {
    var username: String
    var fullName: String
    var bloodType: String
    var rides: Int
    var kilometers: Double
    var friends: Int
    var profileImage: String

    var body: some View {
        VStack(spacing: 10) {
            // Parte superior: Nombre de usuario, iconos
            HStack {
                Text(username)
                    .font(.subheadline)
                    .fontWeight(.bold)
                Spacer()
                HStack(spacing: 20) {
                    Image(systemName: "bell")
                    Image(systemName: "gear")
                }
                .font(.title3)
            }
            .padding(.horizontal)
            .padding(.bottom, 30)
            
            // Imagen de perfil con borde de color
            VStack {
                Image(profileImage)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 80, height: 80)
                    .clipShape(Circle())
                    .overlay(Circle().stroke(Color.purple, lineWidth: 4))  // Borde morado
                HStack {
                    Text(fullName)
                        .font(.headline)
                    Text(bloodType)
                        .font(.subheadline)
                        .foregroundColor(.red)
                        .padding(.leading, 4)
                }
            }.padding(.bottom, 20)

            // Estadísticas de usuario: Rodadas, Kilómetros, Amigos
            HStack {
                VStack {
                    Text("\(rides)")
                        .font(.headline)
                    Text("Rodadas")
                        .font(.caption)
                }
                Spacer()
                VStack {
                    Text("\(String(format: "%.1f", kilometers))")
                        .font(.headline)
                    Text("Kilómetros")
                        .font(.caption)
                }
                Spacer()
                VStack {
                    Text("\(friends)")
                        .font(.headline)
                    Text("Amigos")
                        .font(.caption)
                }
            }
            .padding(.horizontal, 80)

            // Botones de "Editar perfil" y "Compartir perfil"
            // Botones de "Editar perfil", "Compartir perfil" y "Agregar amigos"
            HStack(spacing: 20) {
                Button(action: {
                    // Acción para editar perfil
                }) {
                    Text("Editar perfil")
                        .font(.subheadline)
                        .foregroundColor(.black)
                        .padding(.horizontal, 20)
                        .padding(.vertical, 10)
                        .background(Color(UIColor.systemGray6))
                        .cornerRadius(10)
                }
                Button(action: {
                    // Acción para compartir perfil
                }) {
                    Text("Compartir perfil")
                        .font(.subheadline)
                        .foregroundColor(.black)
                        .padding(.horizontal, 20)
                        .padding(.vertical, 10)
                        .background(Color(UIColor.systemGray6))
                        .cornerRadius(10)
                }

                Button(action: {
                    // Acción para agregar amigos
                }) {
                    Image(systemName: "person.badge.plus")
                        .font(.system(size: 12))
                        .foregroundColor(.black)
                        .padding(12)
                        .background(Color(UIColor.systemGray6))
                        .cornerRadius(10)
                }
            }
            .padding(.top, 6)
            .padding(.bottom, 10)

            VStack {
                        // Parte superior con iconos
                        HStack(spacing: 100) {
                            Button(action: {
                                // Acción del ícono de calendario
                            }) {
                                Image(systemName: "calendar")
                                    .font(.title2)
                                    .foregroundColor(.black)
                            }

                            Button(action: {
                                // Acción del ícono de palomita
                            }) {
                                Image(systemName: "checkmark")
                                    .font(.title2)
                                    .foregroundColor(.yellow)
                            }

                            Button(action: {
                                // Acción del ícono de mundo
                            }) {
                                Image(systemName: "globe")
                                    .font(.title2)
                                    .foregroundColor(.black)
                            }
                        }
                        .padding(.top, 10)

                        // Línea amarilla debajo de los íconos (indicador de selección)
                        Rectangle()
                            .fill(Color.yellow)
                            .frame(height: 2)
                            .padding(.horizontal, 150)

                        // Medallas con descripción
                        HStack(spacing: 40) {
                            VStack {
                                Image(systemName: "seal.fill")
                                    .resizable()
                                    .frame(width: 50, height: 50)
                                    .foregroundColor(.orange)
                                Text("Asiste a 5 rodadas")
                                    .font(.caption)
                                    .multilineTextAlignment(.center)
                            }

                            VStack {
                                Image(systemName: "hexagon.fill")
                                    .resizable()
                                    .frame(width: 50, height: 50)
                                    .foregroundColor(.yellow)
                                Text("Nivel experto")
                                    .font(.caption)
                                    .multilineTextAlignment(.center)
                            }

                            VStack {
                                Image(systemName: "rosette")
                                    .resizable()
                                    .frame(width: 50, height: 50)
                                    .foregroundColor(.green)
                                Text("Recorre 50km")
                                    .font(.caption)
                                    .multilineTextAlignment(.center)
                            }
                        }
                        .padding(.top, 20)
                    }
            
            EventCardView()
                .padding(.top, 30)
        }
    }
}

#Preview{
        ConsultarPerfilPropioView(
            username: "FerpXx_123",
            fullName: "Fernando Pérez López",
            bloodType: "A+",
            rides: 3,
            kilometers: 8.2,
            friends: 223,
            profileImage: "Avatar"
        )
    }

struct EventCardView: View {
    var eventTitle: String = "Foro nacional de la bicicleta"
    var attendees: Int = 245
    var eventDate: String = "Miércoles 26 junio 2024"
    var eventTime: String = "13:00"
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            // Título del evento y número de asistentes
            HStack {
                Text(eventTitle)
                    .font(.headline)
                Spacer()
                HStack(spacing: 4) {
                    Image(systemName: "person.2")
                    Text("\(attendees)")
                        .font(.subheadline)
                }
            }
            
            
            HStack {
                // Imagen (Placeholder)
            Rectangle()
                .fill(Color.gray.opacity(0.3))
                .frame(height: 80)
                .cornerRadius(8)
            
            // Fecha y Hora
            
                VStack(alignment: .leading) {
                    Text("Fecha")
                        .font(.caption)
                        .foregroundColor(.gray)
                    Text(eventDate)
                        .font(.system(size: 11))
                    HStack{
                        Text("Hora")
                            .font(.caption)
                            .foregroundColor(.gray)
                        Text(eventTime)
                            .font(.system(size: 11))
                    }
                }
            }
        }
        .padding()
        .background(Color.white)
        .cornerRadius(15)
        .shadow(radius: 5)
        .padding(.horizontal)
    }
}


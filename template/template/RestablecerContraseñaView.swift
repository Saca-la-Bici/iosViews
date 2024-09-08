//
//  RestablecerContraseñaView.swift
//  template
//
//  Created by Diego Lira on 08/09/24.
//

import SwiftUI

struct RestablecerContrasenaView: View {
    @State private var currentPassword: String = ""
    @State private var newPassword: String = ""
    @State private var confirmPassword: String = ""
    @State private var showCurrentPassword = false
    @State private var showNewPassword = false
    @State private var showConfirmPassword = false

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
                Text("Seguridad y acceso a la cuenta")
                    .font(.headline)
                    .foregroundColor(.black)
                Spacer()
            }
            .padding(.horizontal)
            .padding(.top, 10)

            
            VStack(spacing: 8) {
                Image("Avatar")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 100, height: 100)
                        .clipShape(Circle())

                Text("Guadalupe Rojas")
                    .font(.system(size: 15))
                    .foregroundColor(.black)
            }
            .padding(.vertical)
            .padding(.top, 50)
            
            HStack(spacing: 8) {
                Image(systemName: "calendar")
                    .font(.system(size: 30))
                    .foregroundColor(.black)
                
                Spacer()
            }
            .padding(.leading, 30)
            .padding(.bottom, 20)

            // Campo de Contraseña Actual
            passwordField(title: "Contraseña actual", text: $currentPassword, showPassword: $showCurrentPassword)
            Spacer().frame(height: 50)

            // Campo de Nueva Contraseña
            passwordField(title: "Nueva Contraseña", text: $newPassword, showPassword: $showNewPassword)
            Spacer().frame(height: 50)

            // Campo de Confirmar Nueva Contraseña
            passwordField(title: "Confirmar Nueva Contraseña", text: $confirmPassword, showPassword: $showConfirmPassword)

            Spacer()

        }
        .padding(.bottom, 20)
        .frame(maxHeight: .infinity, alignment: .top)
    }

    // Función para mostrar/ocultar texto
    @ViewBuilder
    private func passwordField(title: String, text: Binding<String>, showPassword: Binding<Bool>) -> some View {
        VStack(alignment: .leading, spacing: 8) {
            Text(title)
                .font(.subheadline)
                .foregroundColor(.gray)

            HStack {
                if showPassword.wrappedValue {
                    TextField(title, text: text) // Muestra el texto
                } else {
                    SecureField(title, text: text) // Oculta el texto
                }

                Button(action: {
                    showPassword.wrappedValue.toggle()
                }) {
                    Image(systemName: showPassword.wrappedValue ? "eye" : "eye.slash")
                        .foregroundColor(.gray)
                }
            }
            .padding()
            .background(
                RoundedRectangle(cornerRadius: 8)
                    .stroke(Color.gray.opacity(0.5), lineWidth: 1)
            )
        }
        .padding(.horizontal)
    }
}

#Preview{
    RestablecerContrasenaView()
}

//
//  SignInStep1View.swift
//  template
//
//  Created by Diego Antonio García Padilla on 08/09/24.
//

import SwiftUI

struct SignInStep1View: View {
    
    // States
    
    @State var email: String = ""
    @State var username: String = ""
    
    @State var selectedMonth: String = ""
    @State var selectedDay: String = ""
    @State var selectedYear: String = ""
    
    // Arrays
    
    let months = ["Enero", "Febrero", "Marzo", "Abril", "Mayo", "Junio", "Julio", "Agosto", "Septiembre", "Octubre", "Noviembre", "Diciembre"]
    let days = Array(1...31).map { "\($0)" }
    let years = Array(1900...2023).reversed().map { "\($0)" }
    
    
    var body: some View {
        
        ZStack {
            VStack(alignment: .leading) {
                
                // Botón para regresar
                Button(action: {
                    //
                }, label: {
                    Image(systemName: "arrow.left")
                        .foregroundColor(.gray)
                })
                
                Spacer().frame(height: 50)
                
                // Título
                HStack(alignment: .center, spacing: 15) {
                    Text("Crear cuenta")
                        .font(.title2)
                        .fontWeight(.bold)
                    Image(systemName: "bicycle")
                    
                }
                
                Spacer().frame(height: 50)
                
                // Formulario
                VStack(alignment: .leading,spacing: 20) {
                    
                    // Correo electrónico
                    VStack(alignment: .leading) {
                        Text("Correo electrónico")
                            .font(.caption)
                        TextField("Correo electrónico", text: $email)
                            .textInputAutocapitalization(.never)
                            .keyboardType(.emailAddress)
                            .padding()
                            .cornerRadius(10)
                            .shadow(radius: 1)
                            .overlay(
                                RoundedRectangle(cornerRadius: 10)
                                    .stroke(Color.gray.opacity(0.4), lineWidth: 1)
                            )
                    }
                    
                    // Correo electrónico
                    VStack(alignment: .leading) {
                        Text("Nombre de usuario")
                            .font(.caption)
                        TextField("Nombre de usuario", text: $username)
                            .textInputAutocapitalization(.never)
                            .padding()
                            .cornerRadius(10)
                            .shadow(radius: 1)
                            .overlay(
                                RoundedRectangle(cornerRadius: 10)
                                    .stroke(Color.gray.opacity(0.4), lineWidth: 1)
                            )
                    }
                    
                    Spacer().frame(height: 0)
                    
                    // Fecha de nacimiento
                    VStack(alignment: .leading) {
                        Text("Fecha de Nacimiento")
                            .font(.title3)
                            .fontWeight(.bold)
                        Text("Esta información no será pública")
                            .font(.caption)
                        
                        Spacer().frame(height: 15)
                        
                        HStack {
                            // Picker de Mes
                            Picker(selection: $selectedMonth, label: Text("Mes")) {
                                ForEach(months, id: \.self) {
                                    Text($0)
                                }
                            }
                            .pickerStyle(MenuPickerStyle()) // Estilo de menú desplegable
                            .frame(maxWidth: .infinity)
                            .background(Color.white)
                            .cornerRadius(10)
                            .shadow(radius: 1)
                            .overlay(
                                RoundedRectangle(cornerRadius: 10)
                                    .stroke(Color.gray, lineWidth: 1)
                            )
                            
                            // Picker de Día
                            Picker(selection: $selectedDay, label: Text("Día")) {
                                ForEach(days, id: \.self) {
                                    Text($0)
                                }
                            }
                            .pickerStyle(MenuPickerStyle())
                            .frame(maxWidth: .infinity)
                            .background(Color.white)
                            .cornerRadius(10)
                            .shadow(radius: 1)
                            .overlay(
                                RoundedRectangle(cornerRadius: 10)
                                    .stroke(Color.gray, lineWidth: 1)
                            )
                            
                            // Picker de Año
                            Picker(selection: $selectedYear, label: Text("Año")) {
                                ForEach(years, id: \.self) {
                                    Text($0)
                                }
                            }
                            .pickerStyle(MenuPickerStyle())
                            .frame(maxWidth: .infinity)
                            .background(Color.white)
                            .cornerRadius(10)
                            .shadow(radius: 1)
                            .overlay(
                                RoundedRectangle(cornerRadius: 10)
                                    .stroke(Color.gray, lineWidth: 1)
                            )
                        }
                    }
                    
                    Spacer().frame(height: 30)
                    
                    Button {
                        // Code
                    } label: {
                        Text("Continuar")
                            .font(.subheadline)
                            .bold()
                            .frame(maxWidth: .infinity)
                            .padding()
                            .foregroundColor(.black)
                            .background(Color(red: 0.961, green: 0.802, blue: 0.048))
                            .cornerRadius(10)
                    }
                    
                }
                
                Spacer()
            }
            .padding(30)
            .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
            .zIndex(2)
        }
        
    }
}

#Preview {
    SignInStep1View()
}

//
//  RegistrarRutaView.swift
//  template
//
//  Created by Arturo Sanchez on 08/09/24.
//

import SwiftUI

struct RutaFlowView: View {
    @State private var currentStep = 1
    
    @State private var startPoint = "Centro histórico"
    @State private var restPoint = "Alameda Hidalgo"
    @State private var endPoint = "Tec de Monterrey"
    @State private var selectedLevel = 3
    @State private var routeTitle = "Ruta Tec - Centro histórico"
    @State private var averageTime = "1:30 hrs"
    @State private var selectedSkill = "Experto"
    
    var body: some View {
        VStack {
            if currentStep == 1 {
                ZStack(alignment: .topTrailing) {
                    Image("mapaFondo")
                        .resizable()
                        .scaledToFit()
                        .frame(height: 200)
                    
                    VStack(spacing: 10) {
                        Image(systemName: "plus.circle.fill")
                            .foregroundColor(.yellow)
                            .font(.system(size: 35))
                        
                        Image(systemName: "envelope.fill")
                            .foregroundColor(.red)
                            .font(.system(size: 35))
                    }
                    .padding()
                }
                
                VStack(alignment: .leading, spacing: 20) {
                    TextField("Punto de partida", text: $startPoint)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .padding(.horizontal)
                    
                    TextField("Punto de descanso", text: $restPoint)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .padding(.horizontal)
                    
                    TextField("Punto de destino", text: $endPoint)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .padding(.horizontal)
                    
                    Button(action: {}) {
                        HStack {
                            Image(systemName: "plus.circle")
                            Text("Agregar desviación")
                        }
                    }
                    .foregroundColor(.gray)
                    .padding(.horizontal)
                    
                    Button(action: {}) {
                        HStack {
                            Image(systemName: "plus.circle")
                            Text("Agregar punto de descanso")
                        }
                    }
                    .foregroundColor(.gray)
                    .padding(.horizontal)
                }
                .padding(.top)

                Spacer()

                Button(action: {
                    currentStep = 2
                }) {
                    Text("Siguiente")
                        .foregroundColor(.white)
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(Color.yellow)
                        .cornerRadius(8)
                        .padding(.horizontal)
                }
                .padding(.bottom)
            }
            
            if currentStep == 2 {
                List {
                    ForEach(1..<6) { level in
                        HStack {
                            Text("Nivel \(level)")
                            Spacer()
                            if level == selectedLevel {
                                Image(systemName: "checkmark.circle.fill")
                                    .foregroundColor(.yellow)
                            }
                        }
                        .contentShape(Rectangle())
                        .onTapGesture {
                            selectedLevel = level
                        }
                    }
                }
                .listStyle(PlainListStyle())
                .frame(height: 250)

                Spacer()

                Button(action: {
                    currentStep = 3
                }) {
                    Text("Siguiente")
                        .foregroundColor(.white)
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(Color.yellow)
                        .cornerRadius(8)
                        .padding(.horizontal)
                }
                .padding(.bottom)
            }
            
            if currentStep == 3 {
                VStack(alignment: .leading, spacing: 20) {
                    TextField("Título", text: $routeTitle)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .padding(.horizontal)
                    
                    TextField("Tiempo promedio", text: $averageTime)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .padding(.horizontal)
                    
                    Picker("Nivel", selection: $selectedSkill) {
                        Text("Principiante").tag("Principiante")
                        Text("Intermedio").tag("Intermedio")
                        Text("Experto").tag("Experto")
                    }
                    .pickerStyle(MenuPickerStyle())
                    .padding(.horizontal)

                    Spacer()

                    Button(action: {
                    }) {
                        Text("Guardar ruta")
                            .foregroundColor(.white)
                            .frame(maxWidth: .infinity)
                            .padding()
                            .background(Color.yellow)
                            .cornerRadius(8)
                            .padding(.horizontal)
                    }
                    .padding(.bottom)
                }
            }
        }
        .navigationTitle(getTitleForStep())
        .navigationBarTitleDisplayMode(.inline)
        .animation(.easeInOut, value: currentStep)
    }
    
    func getTitleForStep() -> String {
        switch currentStep {
        case 1:
            return "Registrar Ruta"
        case 2:
            return "Seleccionar Nivel"
        case 3:
            return "Guardar Ruta"
        default:
            return ""
        }
    }
}

struct RutaFlowView_Previews: PreviewProvider {
    static var previews: some View {
        RutaFlowView()
    }
}

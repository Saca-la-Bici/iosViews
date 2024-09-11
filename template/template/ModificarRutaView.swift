//
//  ModificarRutaView.swift
//  template
//
//  Created by Arturo Sanchez on 08/09/24.
//

import SwiftUI

struct ListaRutasView: View {
    @State private var rutas = [
        Ruta(title: "Rodada Nocturna", startPoint: "Centro histórico", restPoint: "Alameda Hidalgo", endPoint: "Tec de Monterrey", level: 1, averageTime: "1:00 hrs", fecha: "Sábado 24 agosto 2024", hora: "19:00", asistentes: 67, ubicacion: "Centro histórico"),
        Ruta(title: "Rodada Matutina", startPoint: "Centro Sur", restPoint: "Paseo Constituyentes", endPoint: "Corregidora", level: 2, averageTime: "1:00 hrs", fecha: "Miércoles 28 agosto 2024", hora: "9:00", asistentes: 83, ubicacion: "Centro histórico")
    ]
    
    @State private var selectedRuta: Ruta? = nil
    @State private var isModifying = false
    
    var body: some View {
        NavigationView {
            VStack {
                List(rutas) { ruta in
                    VStack(alignment: .leading, spacing: 10) {
                        // Título y nivel
                        HStack {
                            Text(ruta.title)
                                .font(.headline)
                                .fontWeight(.bold)
                            
                            Spacer()
                            
                            Text("Nivel \(ruta.level)")
                                .font(.caption)
                                .foregroundColor(.white)
                                .padding(6)
                                .background(ruta.level == 1 ? Color.green : Color.orange)
                                .cornerRadius(8)
                            
                            HStack(spacing: 4) {
                                Image(systemName: "person.2")
                                Text("\(ruta.asistentes)")
                            }
                        }
                        
                        // Fecha, Hora y Duración
                        HStack {
                            Text("Fecha:")
                                .foregroundColor(.gray)
                            Text(ruta.fecha)
                        }
                        
                        HStack {
                            Text("Hora:")
                                .foregroundColor(.gray)
                            Text(ruta.hora)
                        }
                        
                        HStack {
                            Text("Duración:")
                                .foregroundColor(.gray)
                            Text(ruta.averageTime)
                        }
                        
                        // Ubicación
                        HStack {
                            Text("Ubicación:")
                                .foregroundColor(.gray)
                            Text(ruta.ubicacion)
                        }
                        
                        Spacer()
                        
                        // Botón de modificar
                        Button(action: {
                            selectedRuta = ruta
                            isModifying.toggle()
                        }) {
                            HStack {
                                Image(systemName: "pencil.circle")
                                Text("Modificar")
                                    .font(.headline)
                            }
                            .foregroundColor(.white)
                            .padding()
                            .frame(maxWidth: .infinity)
                            .background(Color.yellow)
                            .cornerRadius(15)
                        }
                    }
                    .padding()
                    .background(Color.white)
                    .cornerRadius(12)
                    .shadow(radius: 5)
                }
                .listStyle(PlainListStyle())
                .navigationTitle("Actividades")
            }
            .sheet(isPresented: $isModifying) {
                if let selectedRuta = selectedRuta {
                    ModificarRutaView(ruta: selectedRuta)
                }
            }
        }
    }
}

// Vista para modificar la ruta seleccionada
struct ModificarRutaView: View {
    @State var ruta: Ruta
    
    // Variables para los datos modificables
    @State private var newStartPoint = ""
    @State private var newRestPoint = ""
    @State private var newEndPoint = ""
    @State private var newAverageTime = ""
    @State private var selectedLevel = 1
    
    var body: some View {
        VStack {
            ZStack(alignment: .topTrailing) {
                Image("mapaFondo") // Imagen de fondo (coloca la imagen que prefieras)
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
                // Campos modificables de la ruta
                TextField("Punto de partida", text: $newStartPoint)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding(.horizontal)
                
                TextField("Punto de descanso", text: $newRestPoint)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding(.horizontal)
                
                TextField("Punto de destino", text: $newEndPoint)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding(.horizontal)
                
                TextField("Tiempo promedio", text: $newAverageTime)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding(.horizontal)
                
                // Selector de nivel
                Picker("Nivel", selection: $selectedLevel) {
                    ForEach(1..<6) { level in
                        Text("Nivel \(level)")
                    }
                }
                .pickerStyle(SegmentedPickerStyle())
                .padding(.horizontal)
            }
            .padding(.top)

            Spacer()

            // Botón para guardar los cambios
            Button(action: {
                // Aquí puedes agregar la lógica para guardar los cambios
                print("Cambios guardados para la ruta: \(newStartPoint), \(newRestPoint), \(newEndPoint), Nivel: \(selectedLevel), Tiempo: \(newAverageTime)")
            }) {
                Text("Guardar Cambios")
                    .foregroundColor(.white)
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(Color.green)
                    .cornerRadius(8)
                    .padding(.horizontal)
            }
            .padding(.bottom)
        }
        .onAppear {
            // Cargar los datos de la ruta seleccionada al abrir la vista
            newStartPoint = ruta.startPoint
            newRestPoint = ruta.restPoint
            newEndPoint = ruta.endPoint
            newAverageTime = ruta.averageTime
            selectedLevel = ruta.level
        }
        .navigationTitle("Modificar Ruta")
        .navigationBarTitleDisplayMode(.inline)
    }
}

// Datos del modelo de ruta
struct Ruta: Identifiable {
    var id = UUID()
    var title: String
    var startPoint: String
    var restPoint: String
    var endPoint: String
    var level: Int
    var averageTime: String
    var fecha: String
    var hora: String
    var asistentes: Int
    var ubicacion: String
}

struct ListaRutasView_Previews: PreviewProvider {
    static var previews: some View {
        ListaRutasView()
    }
}

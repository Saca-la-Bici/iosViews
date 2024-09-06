//
//  MaterialesView.swift
//  template
//
//  Created by Jesus Cedillo on 05/09/24.
//

import SwiftUI

struct MaterialesViewTab: View {
    @State private var selectedTab = 0
    var body: some View {
        NavigationView {
            VStack(spacing: 0) {
                
                VStack {
                    if selectedTab == 0 {
                        MaterialesView()
                    } else if selectedTab == 1 {
                        Text("Mapa")
                    } else if selectedTab == 2 {
                        Text("Anuncios")
                    } else {
                        Text("Configuracion")
                    }
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                
                CustomFooterView(selectedTab: $selectedTab)
            }
            .navigationBarHidden(true)
        }
    }
}

struct MaterialesView: View {
    var body: some View {
        VStack(spacing: 0){
            ZStack {
                HStack {
                    Button(action: {
                        
                    }) {
                        HStack {
                            Image(systemName: "chevron.backward")
                                .foregroundColor(Color(red: 193.0 / 255.0, green: 182.0 / 255.0, blue: 3.0 / 255.0))
                        }
                        .scaleEffect(1.5)
                        .padding(.leading, 10)
                    }
                    .buttonStyle(PlainButtonStyle())
                    
                    Spacer()
                }
                .padding()
                
                Text("Materiales")
                    .font(.title3)
                    .bold()
            }
            
            ScrollView {
                Spacer()
                Spacer()
                
                VStack {
                    VStack(alignment: .leading) {
                        Text("Material1")
                        Text("Descripción de material.")
                            .foregroundColor(.gray)
                            .font(.caption)
                        
                            HStack(spacing: 4) {
                                Image(systemName: "paperclip")
                                Text("Abrir - 19MB")
                                    .foregroundColor(.gray)
                                    .font(.caption)
                            }
                    }
                    .padding()
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .background(Color.white)
                    .cornerRadius(12)
                    .shadow(radius: 5)
                    .padding(.horizontal)
                    .padding(.leading, 5)
                    .padding(.trailing, 5)
                    
                    VStack(alignment: .leading) {
                        Text("Material2")
                        Text("Descripción de material.")
                            .foregroundColor(.gray)
                            .font(.caption)
                        
                            HStack(spacing: 4) {
                                Image(systemName: "paperclip")
                                Text("Abrir - 10MB")
                                    .foregroundColor(.gray)
                                    .font(.caption)
                            }
                    }
                    .padding()
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .background(Color.white)
                    .cornerRadius(12)
                    .shadow(radius: 5)
                    .padding(.horizontal)
                    .padding(.leading, 5)
                    .padding(.trailing, 5)
                    .padding(.vertical)
                    
                    VStack(alignment: .leading) {
                        Text("Material3")
                        Text("Descripción de material.")
                            .foregroundColor(.gray)
                            .font(.caption)
                        
                            HStack(spacing: 4) {
                                Image(systemName: "paperclip")
                                Text("Abrir - 5MB")
                                    .foregroundColor(.gray)
                                    .font(.caption)
                            }
                    }
                    .padding()
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .background(Color.white)
                    .cornerRadius(12)
                    .shadow(radius: 5)
                    .padding(.horizontal)
                    .padding(.leading, 5)
                    .padding(.trailing, 5)
                }
                .padding(.vertical)
            }
            
            
        }
    }
}

#Preview {
    MaterialesViewTab()
}

//
//  EliminarComentarioView.swift
//  template
//
//  Created by Arturo Sanchez on 08/09/24.
//

import SwiftUI

struct Comment: Identifiable {
    let id = UUID()
    let userName: String
    let date: String
    let content: String
    var likes: Int
    var commentsCount: Int
}

struct CommentView: View {
    @State private var comments = [
        Comment(userName: "Patricia Pérez", date: "23/08/2024 - 12:00", content: "Parece que va a llover hoy, ¿aún así va a haber rodada?", likes: 33, commentsCount: 10),
        Comment(userName: "Ricardo Sánchez", date: "23/08/2024 - 11:21", content: "¿Puedo llevar a mi perro a la rodada?", likes: 12, commentsCount: 2)
    ]
    
    @State private var showDeleteAlert = false
    @State private var selectedCommentIndex: Int? = nil
    @State private var showOptions = false
    @State private var selectedTab = 0
    
    var body: some View {
        TabView(selection: $selectedTab) {
            
            NavigationView {
                VStack {
                    Text("Rodada nocturna")
                        .font(.title)
                        .bold()
                        .padding(.top, 16)
                    
                    HStack {
                        Text("20 Comentarios")
                            .font(.subheadline)
                            .padding(.leading)
                        Spacer()
                        Text("Nivel 1")
                            .font(.subheadline)
                        Text("67")
                            .font(.subheadline)
                            .padding(.trailing)
                    }
                    .padding(.bottom, 10)
                    
                    List {
                        ForEach(comments.indices, id: \.self) { index in
                            VStack(alignment: .leading, spacing: 8) {
                                HStack {
                                    Image(systemName: "person.crop.circle.fill")
                                        .resizable()
                                        .frame(width: 40, height: 40)
                                        .padding(.trailing, 8)
                                    
                                    VStack(alignment: .leading) {
                                        Text(comments[index].userName)
                                            .font(.headline)
                                        Text(comments[index].date)
                                            .font(.caption)
                                            .foregroundColor(.gray)
                                    }
                                    
                                    Spacer()
                                    Button(action: {
                                        self.selectedCommentIndex = index
                                        self.showOptions = true
                                    }) {
                                        Image(systemName: "ellipsis")
                                            .font(.system(size: 20))
                                            .rotationEffect(.degrees(90))
                                            .padding()
                                    }
                                    .actionSheet(isPresented: $showOptions) {
                                        ActionSheet(title: Text("Opciones"), buttons: [
                                            .destructive(Text("Eliminar mensaje")) {
                                                self.showDeleteAlert = true
                                            },
                                            .default(Text("Modificar mensaje")),
                                            .cancel()
                                        ])
                                    }
                                }
                                
                                Text(comments[index].content)
                                    .font(.body)
                                
                                HStack {
                                    Text("❤️ \(comments[index].likes)")
                                        .font(.caption)
                                    Text("💬 \(comments[index].commentsCount)")
                                        .font(.caption)
                                    Spacer()
                                }
                            }
                            .padding(.vertical, 10)
                        }
                    }
                    .listStyle(PlainListStyle())
                }
                .navigationBarTitle("Comentarios", displayMode: .inline)
                .alert(isPresented: $showDeleteAlert) {
                    Alert(
                        title: Text("¿Quieres eliminar este comentario?"),
                        message: Text("Una vez eliminado el comentario no se podrá recuperar."),
                        primaryButton: .destructive(Text("Confirmar")) {
                            if let index = selectedCommentIndex {
                                comments.remove(at: index)
                            }
                        },
                        secondaryButton: .cancel(Text("Cancelar"))
                    )
                }
            }
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
            
            Text("Perfil")
                .tabItem {
                    Image(systemName: "person.circle")
                    Text("Perfil")
                }
                .tag(3)
        }
    }
}

struct CommentView_Previews: PreviewProvider {
    static var previews: some View {
        CommentView()
    }
}

import SwiftUI

struct ModificarPreguntaFrecuenteView: View {
    @State private var titulo: String = "¿Qué hago si no tengo una bicicleta?"
    @State private var descripcion: String = """
    Saca la bici se compromete a fomentar el uso de la bicicleta en Querétaro, es por eso que puedes rentar una directamente de nosotros.
    
    Si estás interesado en rentar una bicicleta, haz clic en el botón.
    """

    var body: some View {
        VStack {
            // Header
            HStack {
                Button(action: {
                    // Acción para cerrar la vista
                }) {
                    Image(systemName: "xmark")
                        .font(.title2)
                        .foregroundColor(.black)
                }
                Spacer()
                Text("Editar")
                    .font(.headline)
                    .foregroundColor(.black)
                Spacer()
                Button(action: {
                    // Acción para confirmar los cambios
                }) {
                    Image(systemName: "checkmark")
                        .font(.title2)
                        .foregroundColor(.yellow)
                }
            }
            .padding(.horizontal)
            .padding(.top, 10)

            Spacer().frame(height: 70)
            
            // Campo de texto para el título
            VStack(alignment: .leading) {
                Text("Título")
                    .font(.subheadline)
                    .foregroundColor(.black)
                    .padding(.horizontal)

                TextField("Título del anuncio", text: $titulo)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding(.horizontal)
            }
            .padding(.bottom, 20)

            // Campo de texto para la descripción
            VStack(alignment: .leading) {
                Text("Descripción")
                    .font(.subheadline)
                    .foregroundColor(.black)
                    .padding(.horizontal)

                TextEditor(text: $descripcion)
                    .frame(height: 150)
                    .overlay(
                        RoundedRectangle(cornerRadius: 8)
                            .stroke(Color.gray.opacity(0.5), lineWidth: 1)
                    )
                    .padding(.top, 5)
                    .padding(.horizontal)
            }
        }
        
        Spacer()
        
    }
}

#Preview {
    ModificarPreguntaFrecuenteView()
}

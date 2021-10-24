import SwiftUI

struct ContentView: View {
    @State private var address = ""
    @State private var showSheet = false
    
   var body: some View {
       VStack {
           TextArea(text: $address, placeholder: "Enter address")
               .background(Color(UIColor.systemGray6))
               .frame(height: 150)
               .cornerRadius(5)
               .padding()
           
           Button(action: {
               showSheet = true
           }, label: {
               Text("Save")
                   .foregroundColor(.white)
                   .padding(EdgeInsets(top: 6, leading: 15, bottom: 6, trailing: 15))
                   .background(.blue)
                   .cornerRadius(5)
           })
               .sheet(isPresented: $showSheet, content: {
                   ShowTextView(address: $address)
               })
       }
   }
    
    struct ShowTextView: View {
        @Binding var address: String
        
        var body: some View {
            Text(address)
        }
    }
}

struct TextArea: View {
    @Binding var text: String
    let placeholder: String
    
    var body: some View {
        ZStack(alignment: .topLeading) {
            if text.isEmpty  {
                Text(placeholder)
                    .foregroundColor(Color.primary.opacity(0.25))
                    .padding(EdgeInsets(top: 5, leading: 3, bottom: 0, trailing: 0))
                    .padding(3)
            }
            
            TextEditor(text: $text)
                .padding(.leading, 2)
        }.onAppear() {
            UITextView.appearance().backgroundColor = .clear
        }.onDisappear() {
            UITextView.appearance().backgroundColor = nil
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

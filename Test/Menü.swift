import SwiftUI

// MARK: - Hauptview mit Navigation
struct Menü: View {
    
        var body: some View {
            NavigationView {
            
                VStack {
                
                //////////////////////////////////////////////////
                // MARK: - Main
                //////////////////////////////////////////////////
                
                    NavigationLink(destination: Todo()) {
                    
                        HStack {
                            Image(systemName: "calendar")
                                .foregroundStyle(
                                    Color("Farbe"))
                        
                            Text("ToDo`s")
                                .bold()
                                .foregroundStyle(
                                    Color.primary
                                )
                        
                            Spacer()
                        
                            Image(
                                systemName: "chevron.right")
                            .foregroundStyle(Color("Farbe"))
                        }
                        .padding()
                        .frame(maxWidth: .infinity) // volle Breite
                        .background(
                            RoundedRectangle(cornerRadius: 20)
                            .fill(Color.gray.opacity(0.3))
                        )
                    }
                    .padding(.horizontal)
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .init(horizontal: .center, vertical: .top))
               
                /// Titel oben
                .padding()
                .navigationTitle("Landingpage ✈")
                .toolbarTitleDisplayMode(.large)
            }
            
        }
        
    }
    
    #Preview {
        Menü()
    }
    
    


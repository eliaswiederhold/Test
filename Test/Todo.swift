//
//  Todo.swift
//  Test
//
//  Created by Elias Wiederhold on 11.02.26.
//

import SwiftUI
import PushToTalk
import SwiftData


//////////////////////////////////////////////////
// MARK: - Todo list
//////////////////////////////////////////////////
///
struct Todo: View {
    
    @State private var Ding: [String] = []
    
    var body: some View{
            
        ForEach(Ding.indices, id: \.self)
        { index in
            TextField("", text: $Ding [index])
                .frame(height: 50, alignment: .top)
                .background(Color.accentColor)
                
                
                
        }
        .frame( maxHeight: .infinity, alignment: .top)
        .padding(.maximum(75, 5))
        
        VStack{
            Button (action:{
                Ding.append("")
            } ){
                Image(systemName: "plus")
                    .foregroundStyle(.white)
                    .frame(maxWidth: .infinity, maxHeight: 50)
                    .background(Color("Farbe"))
                    .clipShape(RoundedRectangle(cornerRadius: 25 ))
                    
            }
            
        }
        .shadow(radius: 10)
        .padding()
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .bottom)
        
       
        
        
        
        
    }
    
}


#Preview {
    Todo()
}

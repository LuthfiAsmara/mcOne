//
//  Try1.swift
//  mcOne
//
//  Created by Luthfi Asmara on 03/04/23.
//

import SwiftUI

struct Try1View: View{
    var body: some View{
        NavigationView{
            ZStack{
                Image("bg")
                VStack(spacing: 16.0){
                    Text("Tong - Tong")
                        .font(.largeTitle)
                        .foregroundColor(.red)
                        .fontWeight(.heavy)
                    
                    
                    HStack(spacing: 20){
                        
                        
                        NavigationLink(destination: AddView()){
                            HStack(alignment: .center, spacing: 10){
                                Image(systemName: "plus")
                                    .foregroundColor(.white)
                                    .padding()
                                Text("Penjumlahan")
                                    .foregroundColor(.white)
                                
                                
                            }.frame(width: 200.0, height: 40)
                                .background(Color.blue)
                        }
                        
                        NavigationLink {
                            
                            MinusView()
                        } label: {
                            HStack{
                                Image(systemName: "minus")
                                    .foregroundColor(.white)
                                Text("Pengurangan")
                                    .foregroundColor(.white)
                            }.frame(width: 200, height: 40)
                                .background(Color.blue)
                        }

                       
                        
                    }
                    
                }
            }
        }
    }
}

struct Try1View_Previews: PreviewProvider {
    static var previews: some View {
        Try1View()
    }
}

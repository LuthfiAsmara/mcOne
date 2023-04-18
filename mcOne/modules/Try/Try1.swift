//
//  Try1.swift
//  mcOne
//
//  Created by Luthfi Asmara on 03/04/23.
//

import SwiftUI

struct Try1View: View{
    var body: some View{
        let text = "Ini adalah kalimat yang ingin saya modifikasi."
              let wordToBold = "kalimat"
              let words = text.components(separatedBy: " ")
              
              return Text(words.map { $0 == wordToBold ? "\($0) " : "\($0) " }.joined())
          
//        NavigationView{
//            ZStack{
//                Image("bg")
//                VStack(spacing: 16.0){
//                    Text("abcde")
//                        .font(.custom(
//                            "Tung2-regular",
//                            size: 70))
//                        .foregroundColor(.red)
////                        .fontWeight(.heavy)
////                        .fontDesign(.rounded)
//
//                    Text("abcde").font(.largeTitle)
//                    HStack(spacing: 20){
//
//
//                        NavigationLink(destination: AddView()){
//                            HStack(alignment: .center, spacing: 10){
//                                Image(systemName: "plus")
//                                    .foregroundColor(.white)
//                                    .padding()
//                                Text("Penjumlahan")
//                                    .foregroundColor(.white)
//
//
//                            }.frame(width: 200.0, height: 40)
//                                .background(Color.blue)
//                        }
//
//                        NavigationLink {
//
//                            MinusView()
//                        } label: {
//                            HStack{
//                                Image(systemName: "minus")
//                                    .foregroundColor(.white)
//                                Text("Pengurangan")
//                                    .foregroundColor(.white)
//                            }.frame(width: 200, height: 40)
//                                .background(Color.blue)
//                        }
//
//
//
//                    }
//
//                }
//            }
//        }
    }
}

struct Try1View_Previews: PreviewProvider {
    static var previews: some View {
        Try1View()
    }
}

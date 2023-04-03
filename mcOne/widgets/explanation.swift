//
//  trueResult.swift
//  mcOne
//
//  Created by Luthfi Asmara on 27/03/23.
//

import SwiftUI

struct ExplanationView : View{
//    var firstNumber: Int
//    var secondNumber: Int
//    init(title: String, destination: AnyView ) {
//        self.title = title
//        self.destination = destination
//    }
    var body: some View{
        NavigationView{
            ZStack{
                Image("bg")
                Rectangle().fill(Color.black).opacity(0.2)
                Text("Penjelasan")
                    .background(Rectangle().fill(Color.bgAnswer)
                        .frame(width: 120, height: 40)
                    ).padding(.trailing, 400)
                    .padding(.bottom, 200)
                VStack{
                    HStack{
                        VStack{
                            Text("3")
                            HStack{
                                ForEach(0..<3, id: \.self) { number in
                                    Image("donat").resizable()
                                        .frame(width: 50, height: 50)
                                }
                            }
                        }
                        Text("+")
                        VStack{
                            Text("2")
                            HStack{
                                ForEach(0..<2, id: \.self) { number in
                                    Image("donat").resizable()
                                        .frame(width: 50, height: 50)
                                }
                            }
                        }
                    }
                    HStack{
                        Text("=")
                        VStack{
                            Text("5")
                            HStack{
                                ForEach(0..<5, id: \.self) { number in
                                    Image("donat").resizable()
                                        .frame(width: 50, height: 50)
                                }
                            }
                        }
                    }
                }.background(Rectangle().fill(Color.bgExplanation)
                    .padding(.leading, -30)
                    .padding(.trailing, -30)
                    .padding(.top, -20)
                    .padding(.bottom, -20)
                )
                .padding(.top, 50)
                .padding(.trailing, 160)
            }
        }
    }
}

struct ExplanationView_Previews: PreviewProvider {
    static var previews: some View {
        ExplanationView()
    }
}

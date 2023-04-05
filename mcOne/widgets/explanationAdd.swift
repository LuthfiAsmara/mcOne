//
//  trueResult.swift
//  mcOne
//
//  Created by Luthfi Asmara on 27/03/23.
//

import SwiftUI

struct ExplanationAddView : View{
    var num1: Int
    var num2: Int
    var ans: Int
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
                VStack(alignment: .leading){
                    HStack{
                        VStack{
                            Text("\(num1)").font(.largeTitle)
                            HStack{
                                ForEach(0..<num1, id: \.self) { number in
                                    Image("donat").resizable()
                                        .frame(width: 50, height: 50)
                                }
                            }
                        }
                        Text("+").font(.largeTitle)
                        VStack{
                            Text("\(num2)").font(.largeTitle)
                            HStack{
                                ForEach(0..<num2, id: \.self) { number in
                                    Image("donat").resizable()
                                        .frame(width: 50, height: 50)
                                }
                            }
                        }
                    }
                    HStack{
                        Text("=").font(.largeTitle)
                        VStack{
                            Text("\(ans)").font(.largeTitle)
                            HStack{
                                ForEach(0..<ans, id: \.self) { number in
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

struct ExplanationAddView_Previews: PreviewProvider {
    static var previews: some View {
        ExplanationAddView(num1: 3, num2: 2, ans: 5)
    }
}

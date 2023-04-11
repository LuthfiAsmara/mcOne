//
//  explanationMinus.swift
//  mcOne
//
//  Created by Luthfi Asmara on 05/04/23.
//

import SwiftUI

struct ExplanationMinusView : View{
    var num1: Int
    var num2: Int
    var ans: Int
//    init(title: String, destination: AnyView ) {
//        self.title = title
//        self.destination = destination
//    }
    var body: some View{
        ZStack {
                    Image("bg")
                        .resizable()
                        .edgesIgnoringSafeArea(.all)
                        .blur(radius: 8)
                    VStack(alignment: .leading){
                        RoundedRectangle(cornerRadius: 20)
                            .frame(width: 120, height: 40)
                            .foregroundColor(Color(red: 235/255, green: 194/255, blue: 151/255))
                            .overlay(Text("Penjelasan")
                                .font(.headline)
                                .fontWeight(.medium)
                                .foregroundColor(Color(red: 0.349, green: 0.288, blue: 0.224, opacity: 100.0)))
                        ZStack {
                            Color(red: 255/255, green: 236/255, blue: 160/255)
                            VStack(alignment: .leading) {
                                HStack {
                                    VStack{
                                        Text("\(num1)")
                                            .font(.headline)
                                            .fontWeight(.medium)
                                            .foregroundColor(Color(red: 0.351, green: 0.288, blue: 0.223))
                                        ZStack{
                                            Color(red: 255/255, green: 249/255, blue: 223/255)
                                            HStack{
                                                Spacer()
                                                ForEach(0..<num1, id: \.self){ _ in
                                                    Image("donat")
                                                        .resizable()
                                                        .aspectRatio(contentMode: .fit)
                                                        .padding(.vertical)
                                                    Spacer()
                                                }
                                            }
                                        }
                                        .frame(width: 150, height: 60)
                                        .clipShape(RoundedRectangle(cornerRadius: 10))
                                        .shadow(color: Color(red: 96/255, green: 96/255, blue: 96/255, opacity: 0.1), radius: 2, x: -2, y: 4)

                                    }
                                    VStack{
                                        Text(" ")
                                        Rectangle()
                                            .foregroundColor(Color(red: 255/255, green: 249/255, blue: 223/255))
                                            .frame(width: 40, height: 40)
                                            .clipShape(RoundedRectangle(cornerRadius: 10))
                                            .shadow(color: Color(red: 96/255, green: 96/255, blue: 96/255, opacity: 0.1), radius: 2, x: -2, y: 4)
                                            .overlay(
                                            Text("-")
                                                .font(.headline)
                                                .fontWeight(.medium)
                                                .foregroundColor(Color(red: 0.349, green: 0.288, blue: 0.224, opacity: 100.0))

                                            )

                                    }
                                    VStack{
                                        Text("\(num2)")
                                            .font(.headline)
                                            .fontWeight(.medium)
                                            .foregroundColor(Color(red: 0.349, green: 0.288, blue: 0.224, opacity: 100.0))

                                        ZStack{
                                            Color(red: 255/255, green: 249/255, blue: 223/255)
                                            HStack{
                                                Spacer()
                                                ForEach(0..<num2, id: \.self){ _ in
                                                    Image("donat")
                                                        .resizable()
                                                        .aspectRatio(contentMode: .fit)
                                                        .padding(.vertical)
                                                    Spacer()
                                                }
                                            }
                                        }
                                        .frame(width: 150, height: 60)
                                        .clipShape(RoundedRectangle(cornerRadius: 10))
                                        .shadow(color: Color(red: 96/255, green: 96/255, blue: 96/255, opacity: 0.1), radius: 2, x: -2, y: 4)


                                    }
                                    Spacer()
                                }
                                
                                HStack {
                                    VStack{
                                        Text(" ")
                                        Rectangle()
                                            .foregroundColor(Color(red: 235/255, green: 194/255, blue: 151/255))
                                            .frame(width: 40, height: 40)
                                            .clipShape(RoundedRectangle(cornerRadius: 10))
                                            .shadow(color: Color(red: 96/255, green: 96/255, blue: 96/255, opacity: 0.1), radius: 2, x: -2, y: 4)
                                            .overlay(
                                            Text("=")
                                                .font(.headline)
                                                .fontWeight(.medium)
                                                .foregroundColor(Color(red: 0.349, green: 0.288, blue: 0.224, opacity: 100.0))

                                            )

                                    }
                                    VStack{
                                        Text("\(ans)")
                                            .font(.headline)
                                            .fontWeight(.medium)
                                            .foregroundColor(Color(red: 0.349, green: 0.288, blue: 0.224, opacity: 100.0))

                                        ZStack{
                                            Color(red: 255/255, green: 249/255, blue: 223/255)
                                            HStack{
                                                Spacer()
                                                ForEach(0..<ans, id: \.self){ _ in
                                                    Image("donat")
                                                        .resizable()
                                                        .aspectRatio(contentMode: .fit)
                                                        .padding(.vertical)
                                                    Spacer()
                                                }
                                            }
                                        }
                                        .frame(width: 310, height: 60)
                                        .clipShape(RoundedRectangle(cornerRadius: 10))
                                        .shadow(color: Color(red: 96/255, green: 96/255, blue: 96/255, opacity: 0.1), radius: 2, x: -2, y: 4)

                                    }
                                }

                            }
                            .frame(width: 500, height: 200)
                        }
                        .clipShape(RoundedRectangle(cornerRadius: 20))
                        .frame(width: 600, height: 250)
                    }
                    Image("teacher")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 400, height: 400, alignment: .trailing)
                        .offset(x: 200, y: 30)
                }
    }
}

struct ExplanationMinusView_Previews: PreviewProvider {
    static var previews: some View {
        ExplanationMinusView(num1: 3, num2: 2, ans: 1)
    }
}


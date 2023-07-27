//
//  ContentView.swift
//  aboutNata
//
//  Created by natali oleinik on 7/27/23.
//

import SwiftUI

struct ContentView: View {
    @State private var fact = " "
    let facts = [
        "I absolutely love white roses & pink peonies.. ",
        "I used to do ballet & gymnastics 🩰 ",
        "My first language is Russian. I also know Belarussian & English. Currently struggling with French.. ",
        "I love reading French & Russian literature. Françoise Sagan is my favorite author. I love her romance books 🤍  ",
        " ",
    ]
    
    var body: some View {

        VStack {
            Button(action: {
                fact = facts[4]
            }) {
            Image("me")
                .resizable(resizingMode: .stretch)
                .aspectRatio(contentMode: .fit)
                .frame(width: 197.0, height: 197.0)
                .shadow(color: Color(red: 0.7373, green: 0.4353, blue: 0.6157, opacity: 0.5), radius: 24)
            }
            Text("Natali Oleinik")
                .font(.custom("Parisienne-Regular", size:45))
                .foregroundColor(Color(hue: 0.903, saturation: 0.527, brightness: 0.662))
                .padding([.bottom, .top, .leading, .trailing], 1.0)
            HStack {
                // Use an image as a button and update fact when clicked
                Button(action: {
                    fact = facts[0]
                }) {
                    Image("flowers")
                        .resizable(resizingMode: .stretch)
                        .frame(width: 160, height: 160)
                        .shadow(color: Color(red: 1.0, green: 0.75, blue: 0.79, opacity: 0.5), radius: 10)

                }
                
                // Use another image as a button and update fact when clicked
                Button(action: {
                    fact = facts[1]
                }) {
                    Image("ballet")
                        .resizable(resizingMode: .stretch)
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 160, height: 160)
                        .shadow(color: Color(red: 1.0, green: 0.75, blue: 0.79, opacity: 0.5), radius: 10)
                }
            }
            
            HStack {
                // Use another image as a button and update fact when clicked
                Button(action: {
                    fact = facts[2]
                }) {
                    Image("hair")
                        .resizable(resizingMode: .stretch)
                        .frame(width: 160, height: 160)
                        .shadow(color: Color(red: 1.0, green: 0.75, blue: 0.79, opacity: 0.5), radius: 19)
                }
                
                // Use another image as a button and update fact when clicked
                Button(action: {
                    fact = facts[3]
                }) {
                    Image("book")
                        .resizable(resizingMode: .stretch)
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 160, height: 160)
                        .shadow(color: Color(red: 1.0, green: 0.75, blue: 0.79, opacity: 0.5), radius: 10)
                }
            }
            Text("IG: @natalioleiniik")
                .font(.callout)
                .fontWeight(.semibold)
                .italic()
                .foregroundColor(Color(hue: 1.0, saturation: 0.0, brightness: 0.321))
                .padding([.top, .leading, .trailing], 15.0)
            Text("Click an image for a fact about me!")
                .font(.callout)
                .fontWeight(.semibold)
                .italic()
                .foregroundColor(Color(hue: 1.0, saturation: 0.0, brightness: 0.321))
                .padding([.leading, .trailing], 25)
                .padding([.top], -7)
            Text(fact)
                .font(.callout)
                .italic()
                .foregroundColor(Color(hue: 1.0, saturation: 0.0, brightness: 0.321))
                .padding([.leading, .trailing], 25)
                .padding([.top], 5)

            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

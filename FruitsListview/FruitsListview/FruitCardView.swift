//
//  FruitCardView.swift
//  FruitsListview
//
//  Created by Aashutosh Poudel on 04/06/2022.
//

import SwiftUI

struct FruitCardView: View {
    // MARK: - Properties
    
    @State private var isAnimating: Bool = false //@State will allow us to mutate the properties like setstate var
    
    
    // MARK: - Body

    var body: some View {
        // Fruit: Image
        ZStack {
            VStack {
                Image("blueberry")
                    .resizable()
                    .scaledToFit()
                .shadow(color: Color(red: 0, green: 0, blue: 0,opacity: 0.15), radius: 8, x: 6,y: 8)
                .scaleEffect(isAnimating ? 1.0 : 0.6)
                // Fruit: Title
                Text("Blueberry")
                    .foregroundColor(Color.white)
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .shadow(color: Color(red: 0, green: 0, blue: 0,opacity: 0.15), radius: 2, x: 2, y: 2)
                // Fruit: HeadLine
                Text("Blueberries are sweet, nutirous and widly popular friut all over the world.")
                    .foregroundColor(Color.white)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal,16)
                    .frame(maxWidth:480)
                // Fruit: Button
                ButtonView()
                
            }//Vstack
        } //: Zstack
        .onAppear(perform: {
            withAnimation(.easeOut(duration: 0.5)) {
                isAnimating = true
            }
        })
        .frame(minWidth: 0,  maxWidth: .infinity, minHeight: 0,  maxHeight: .infinity, alignment: .center)
        .background(LinearGradient(gradient: Gradient(colors: [Color("ColorBlueberryLight"),Color("ColorBlueberryDark")]), startPoint: .top, endPoint: .bottom))
        .cornerRadius(20)
        .padding(.horizontal,(20))
        .padding(.vertical,50)
        
    }
}
// MARK: - Preview

struct FruitCardView_Previews: PreviewProvider {
    static var previews: some View {
        FruitCardView().previewLayout(.fixed(width: 300, height: 640
                                            ))
    }
}

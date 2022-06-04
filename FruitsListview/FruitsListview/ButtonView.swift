//
//  ButtonView.swift
//  FruitsListview
//
//  Created by Aashutosh Poudel on 04/06/2022.
//

import SwiftUI

struct ButtonView: View {
    // MARK: Propperties
    
    // MARK : Body
    var body: some View {
        Button {
            print("Exit the on bording")
        } label: {
            HStack(spacing:8) {
                Text("Start")
                Image(systemName: "arrow.right.circle")
                    .imageScale(.large)
            }
            .padding(.horizontal, 16)
            .padding(.vertical, 10)
            .background(Capsule().strokeBorder(Color.white,lineWidth: 1.25)
            )
        }
        .accentColor(Color.white)
        

    }
}

struct ButtonView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonView()
            .preferredColorScheme(.dark)
            .previewLayout(.sizeThatFits)
    }
}

//
//  HomeView.swift
//  Restart
//
//  Created by Aashutosh Poudel on 15/05/2022.
//

import SwiftUI

struct HomeView: View {
    // get saved local storage data
    
    @AppStorage("onboarding") var isOnBoardingViewActive: Bool = false
    
    var body: some View {
        VStack {
            // header
            Spacer()
                
            ZStack {
                CircleGroupView(ShapeColor: .gray, ShapeOpacity: 0.1)
                Image("character-2").resizable().scaledToFit()
                    .padding()
            }
            // center
            Text("The time that leads to mastery is dependent on the intensity of our focus.")
                .font(.title3)
                .fontWeight(.light)
                .foregroundColor(.secondary)
                .multilineTextAlignment(.center)
                .padding()
            // footer
            Text("HOME")
                .font(.largeTitle)
            
            Spacer()
            
            Button {
                //actions here
                
                isOnBoardingViewActive = true
                
            } label: {
                Image(systemName: "arrow.triangle.2.circlepath.circle.fill")
                    .imageScale(.large)
                
                Text("Restart")
                    .font(.system(.title3,design: .rounded))
                    .fontWeight(.bold)
            }
            .buttonStyle(.borderedProminent)
            .buttonBorderShape(.capsule)
            .controlSize(.large)

        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}

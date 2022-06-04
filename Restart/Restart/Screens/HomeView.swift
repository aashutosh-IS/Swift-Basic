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
    @State private var isAnimation: Bool = false
    
    var body: some View {
        VStack {
            // header
            Spacer()
                
            ZStack {
                CircleGroupView(ShapeColor: .gray, ShapeOpacity: 0.1)
                Image("character-2").resizable().scaledToFit()
                    .padding()
                    .offset(y: isAnimation ? 35 : -35)
                    .animation(
                        Animation.easeInOut(duration: 4)
                            .repeatForever()
                            ,value: isAnimation
                    )
                        
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
                
                withAnimation{
                    playSound(sound: "success", type: "m4a")
                    isOnBoardingViewActive = true
                }
                
                
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
        .onAppear {
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.5,execute: {
                isAnimation = true
            }
        )}
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}

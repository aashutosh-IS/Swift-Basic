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
            Text("HOME")
                .font(.largeTitle)
            
            Button {
                //actions here
                
                isOnBoardingViewActive = true
                
            } label: {
                Text("Restart")
                
            }

        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}

//
//  OnboardingView.swift
//  Restart
//
//  Created by Aashutosh Poudel on 15/05/2022.
//

import SwiftUI

struct OnboardingView: View {
    //MARK : - Property
    @AppStorage("onboarding") var isOnboardingViewActive: Bool = true //if program finds the value for onboarding key then it will return the value set else it returns false this is swift.
    
    
    
    var body: some View {
        VStack(spacing: 20) {
            Text("Onboarding").font(.largeTitle)
            Button {
                //Some actions
                isOnboardingViewActive = false
            } label: {
                Text("Start")
            }

        } // VSTACK - Like Column
    }
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
    }
}

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
        ZStack {
            Color("ColorBlue").ignoresSafeArea(.all,edges: .all)
            
            VStack(spacing: 20) {
             // header
                Spacer()
                
                VStack(spacing : 0){
                    Text("Share.")
                        .font(.system(size: 60))
                        .fontWeight(.heavy)
                        .foregroundColor(.white)
                
Text("""
                        It's not how much we give but
                        how much love we put into giving.
                        """).font(.title3)
                        .fontWeight(.light)
                        .foregroundColor(.white)
                        .multilineTextAlignment(.center)
                        .padding(.horizontal,10)
                }
            // center
                
                ZStack{
                    ZStack{
                        Circle()
                            .stroke(.white.opacity(0.2),lineWidth: 40)
                            .frame(width: 260, height: 260, alignment: .center)
                        Circle()
                            .stroke(.white.opacity(0.2),lineWidth: 80)
                            .frame(width: 260, height: 260, alignment: .center)
                    }
                    Image("character-1")
                        .resizable()
                        .scaledToFit()
                    
                }
                
                Spacer()
            //footer
                
                ZStack{
                    //parts of button
                    
                    //1. Backgrounng
                    
                        Capsule()
                        .fill(Color.white.opacity(0.2))
                    
                    Capsule()
                        .fill(Color.white.opacity(0.2))
                        .padding(8)
                    //2. call to action
                    
                    Text("Get Started")
                        .font(.system(.title3,design: .rounded))
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .offset(x:20)
                    
                    //3. capsule shape
                    
                    HStack{
                        Capsule()
                            .fill(Color("ColorRed"))
                            .frame(width: 80)
                        
                        Spacer()
                        
                    }
                    //4. dragabble circle
                    
                    HStack {
                        ZStack{
                            Circle()
                                .fill(Color("ColorRed"))
                            Circle()
                                .fill(.black.opacity(0.15))
                                .padding(8)
                            Image(systemName: "chevron.right.2")
                                .font(.system(size: 24,weight: .bold))
                        }.foregroundColor(.white)
                            .frame(width: 80, height: 80, alignment: .center)
                            .onTapGesture {
                                isOnboardingViewActive=false
                            }
                        Spacer()
                    }
                    
                    
                    
                    
                    
                }//:Footer
                .frame(height: 80, alignment: .center)
                .padding()
                
            }// :VSTACK
        } // ZSTACK - Like Column
    }
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
    }
}

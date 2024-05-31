//
//  K_SpamApp.swift
//  K-Spam
//
//  Created by Inho Choi on 5/28/24.
//

import SwiftUI

@main
struct KSpamApp: App {
    @State var path: NavigationPath = .init()
    @State var showOnBoarding: Bool = !UserDefaults.standard.bool(forKey: "Onboarding")
    
    var body: some Scene {
        WindowGroup {
            VStack {
                Text("이 앱은 Demo 입니다. 필터가 포함되어 있지 않습니다.")
                    .foregroundStyle(Color.red)
                    .font(.subheadline)
                    .fontWeight(.bold)
                
                MainTabView()
                    .fullScreenCover(isPresented: $showOnBoarding) {
                        OnboardingMainView {
                            self.showOnBoarding = false
                        }
                    }
            }
        }
    }
    

}

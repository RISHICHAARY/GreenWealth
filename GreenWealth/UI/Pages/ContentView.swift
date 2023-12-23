//
//  ContentView.swift
//  GreenWealth
//
//  Created by user1 on 23/12/23.
//

import SwiftUI

struct ContentView: View {
    
    @State var pageState: String = "splashPage"
    @State var previousPage: String = ""
    
    var body: some View {
        
        if(pageState == "splashPage"){
            SplashPage(pageState: $pageState)
        }
        else if(pageState == "loginPage"){
            LoginPage(pageState: $pageState)
        }
        else if(pageState == "homePage"){
            HomePage(pageState: $pageState, previousPage: $previousPage)
        }
        else if(pageState == "addressPage"){
            AddressPage(pageState: $pageState, previousPage: $previousPage)
        }
        else if(pageState == "slotPage"){
            SchedulePage(pageState: $pageState, previousPage: $previousPage)
        }
        else if(pageState == "confirmPage"){
            ConfirmPage(pageState: $pageState, previousPage: $previousPage)
        }
        else if(pageState == "logPage"){
            LogPage(pageState: $pageState, previousPage: $previousPage)
        }
        else if(pageState == "profileLogPage"){
            ProfileLogPage(pageState: $pageState)
        }
        else if(pageState == "profilePage"){
            ProfilePage(pageState: $pageState, previousPage: $previousPage)
        }
        else if(pageState == "mapPage"){
            MapPage(pageState: $pageState, previousPage: $previousPage)
        }
        else if(pageState == "locationPage"){
            LocationPage(pageState: $pageState)
        }
        else if(pageState == "cameraPage"){
            CameraPage(pageState: $pageState)
        }
        else if(pageState == "photoPage"){
            PhotoPage(pageState: $pageState)
        }
    }
}

#Preview {
    ContentView()
}

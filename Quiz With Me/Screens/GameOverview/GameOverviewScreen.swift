//
//  GameOverviewScreen.swift
//  Quiz With Me
//
//  Created by Egzon Jusufi on 31.05.21.
//

import SwiftUI

/**
 This view shows all information about a single selected game.
 */
struct GameOverviewScreen: View {
    @Binding var viewState: ViewState
    @Binding var selectedGame: String
    
    var body: some View {
        
        ZStack {
            BackgroundView()
            VStack {
                OverviewView(viewState: $viewState, selectedGame: $selectedGame)
            }
        }
    }
}


struct GameOverviewScreen_Previews: PreviewProvider {
    static var previews: some View {
        GameOverviewScreen(viewState: .constant(ViewState.HOME), selectedGame: .constant("z2tmdhFW2vbRe9Qhxvrd"))
    }
}


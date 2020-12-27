//
//  ContentView.swift
//  traficSignRecognition
//
//  Created by Jakub Žák on 27/12/2020.
//

import SwiftUI


struct ContentView: View {
	
	@State private var screen: Screen = Screen.MAIN
	@State private var previousScreen: Screen = Screen.NONE
	
	func goBack() {
		if previousScreen == Screen.NONE {
			return
		}
		previousScreen = Screen.NONE
		screen = Screen.MAIN
	}
	
	func goToScreen(nextScreen: Screen) {
		previousScreen = screen
		screen = nextScreen
	}
	
    var body: some View {
			if screen == Screen.GO {
				VStack {
					GoView()
					Image(systemName: "arrowshape.turn.up.backward")
						.onTapGesture {
							goBack()
						}
				}
			} else if screen == Screen.SETTINGS {
				VStack {
					Text("Settings screen")
					Image(systemName: "arrowshape.turn.up.backward")
						.onTapGesture {
							goBack()
						}
				}
			} else if screen == Screen.ABOUT {
				VStack {
					Text("About screen")
					Image(systemName: "arrowshape.turn.up.backward")
						.onTapGesture {
							goBack()
						}
				}
			} else {
				VStack(spacing: 15.0){
					Spacer()
					Image(systemName: "info.circle")
						.resizable()
						.aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
						.frame(minWidth: 10, idealWidth: 20, maxWidth: 50, minHeight: 10, idealHeight: 20, maxHeight: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
					Spacer()
					Button(action: {
						goToScreen(nextScreen: Screen.GO)
					}) {
						Text("Go")
					}
					Button(action: {
						goToScreen(nextScreen: Screen.SETTINGS)
					}) {
						Text("Settings")
					}
					Button(action: {
						goToScreen(nextScreen: Screen.ABOUT)
					}) {
						Text("About")
					}
					Spacer()
				}
			}
		}
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

enum Screen {
	case MAIN
	case GO
	case SETTINGS
	case ABOUT
	case NONE
}

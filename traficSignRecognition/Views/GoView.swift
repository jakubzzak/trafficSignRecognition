//
//  GoView.swift
//  traficSignRecognition
//
//  Created by Jakub Žák on 27/12/2020.
//

import SwiftUI

struct GoView: View {
    var body: some View {
			VStack {
				CameraViewController()
				Text("Good job!")
			}
    }
}

struct GoView_Previews: PreviewProvider {
    static var previews: some View {
        GoView()
    }
}

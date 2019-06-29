//
//  ContentView.swift
//  OSCOC
//
//  Created by Admir Monteiro on 6/19/19.
//  Copyright © 2019 Admir Monteiro. All rights reserved.
//

import SwiftUI

struct ContentView : View {
	@State var showingAlert = false
	var body: some View {
		Button(action: {
			self.showingAlert = true
		}) {
			Text("Show Alert")
			}
			.presentation($showingAlert) {
				Alert(title: Text("Important message"), message: Text("Wear sunscreen"), dismissButton: .destructive(Text("destroy")))
		}
	}
}



#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif

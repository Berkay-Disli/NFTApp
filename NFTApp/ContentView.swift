//
//  ContentView.swift
//  NFTApp
//
//  Created by Berkay Disli on 14.10.2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabManager()
            .preferredColorScheme(.dark)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

//
//  ContentView.swift
//  window_capture
//
//  Created by MyMac on 2/1/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Text("hello")
            .onAppear{

                let loadData: () = load()
                print(loadData)
            }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

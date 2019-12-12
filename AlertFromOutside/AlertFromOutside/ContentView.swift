//
//  ContentView.swift
//  AlertFromOutside
//
//  Created by Paul Addy on 2019-12-12.
//  Copyright © 2019 Paul Addy. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State private var showAlert = false
    @State private var alertTitle = ""
    @State private var alertMessage = ""
    
    var alert: Alert {
        Alert(title: Text("\(alertTitle)"),
              message: Text("\(alertMessage)"),
              dismissButton: .default(Text("OK")))
    }

    var body: some View {
        
        ImportantButton(result: $showAlert,
                        resultTitle: $alertTitle,
                        resultMessage: $alertMessage)
            
        .alert(isPresented: $showAlert,
               content: { self.alert })
    }
}

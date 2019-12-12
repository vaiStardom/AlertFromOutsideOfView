//
//  ImportantButton.swift
//  AlertFromOutside
//
//  Created by Paul Addy on 2019-12-12.
//  Copyright © 2019 Paul Addy. All rights reserved.
//

import SwiftUI

struct ImportantButton: View {
    
    @Binding var result: Bool
    @Binding var resultTitle: String
    @Binding var resultMessage: String
    
    var body: some View {
        Button(action: {
            self.launchAsyncOperation()
        }){
            Text("Important Button")
        }
    }
}

extension ImportantButton {

    func launchAsyncOperation() {

        asyncOperation { result, message in
            self.result = result
            self.resultTitle = "Success"
            self.resultMessage = message
        }
    }
    
    func asyncOperation(completion: @escaping(Bool, String) -> ()) {
            
        completion(true, "Async operation has completed")
    }
}

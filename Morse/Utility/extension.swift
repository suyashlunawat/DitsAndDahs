//
//  extension.swift
//  TranslateView
//
//  Created by Giuseppe Capozzi on 17/11/21.
//

import Foundation
import SwiftUI

extension View {
  func  dismissKeyboard(){
        let keyWindow = UIApplication.shared.connectedScenes
                .filter({$0.activationState == .foregroundActive})
                .map({$0 as? UIWindowScene})
                .compactMap({$0})
                .first?.windows
                .filter({$0.isKeyWindow}).first
        keyWindow?.endEditing(true)
    }
}

extension String {
    func isNotANumber() -> Bool {
        if Int(self) != 0 && Int(self) != 1 && Int(self) != 2 && Int(self) != 3 && Int(self) != 4 && Int(self) != 5 && Int(self) != 6 && Int(self) != 7 && Int(self) != 8 && Int(self) != 9 {
            return true
        }
        
        return false
    }
}






//
//  LettersAndMorse.swift
//  LandScapeView
//
//  Created by Gian Marco Fantini on 16/11/21.
//

import Foundation
import SwiftUI

struct LetterAndMorse : Hashable{
    
    let lettera : String
    let morse : String
    
}

struct Dictionary{
    let translation: [ LetterAndMorse] = [
        LetterAndMorse(lettera:"A", morse:"·-"),
        LetterAndMorse(lettera:"B", morse:"-···"),
        LetterAndMorse(lettera:"C", morse:"-·-·"),
        LetterAndMorse(lettera:"D", morse:"-··"),
        LetterAndMorse(lettera:"E", morse:"·"),
        LetterAndMorse(lettera:"F", morse:"··-·"),
        LetterAndMorse(lettera:"G", morse:"--·"),
        LetterAndMorse(lettera:"H", morse:"····"),
        LetterAndMorse(lettera:"I", morse:"··"),
        LetterAndMorse(lettera:"J", morse:"·---"),
        LetterAndMorse(lettera:"K", morse:"-·-"),
        LetterAndMorse(lettera:"L", morse:"·-··"),
        LetterAndMorse(lettera:"M", morse:"--") ,
        LetterAndMorse(lettera:"N", morse:"-·"),
        LetterAndMorse(lettera:"O", morse:"---"),
        LetterAndMorse(lettera:"P", morse:"·--·"),
        LetterAndMorse(lettera:"Q", morse:"--·-"),
        LetterAndMorse(lettera:"R", morse: "·-·"),
        LetterAndMorse(lettera:"S", morse:"···"),
        LetterAndMorse(lettera:"T", morse:"-"),
        LetterAndMorse(lettera:"U", morse:"··-"),
        LetterAndMorse(lettera:"V", morse:"···-"),
        LetterAndMorse(lettera:"W", morse:"·--"),
        LetterAndMorse(lettera:"X", morse:"-··-"),
        LetterAndMorse(lettera:"Y", morse:"-·--"),
        LetterAndMorse(lettera:"Z", morse:"--··"),
        LetterAndMorse(lettera:"0", morse:"-----"),
        LetterAndMorse(lettera:"1", morse:"·----"),
        LetterAndMorse(lettera:"2", morse:"··---"),
        LetterAndMorse(lettera:"3", morse:"···--"),
        LetterAndMorse(lettera:"4", morse:"····-"),
        LetterAndMorse(lettera:"5", morse:"·····"),
        LetterAndMorse(lettera:"6", morse:"-····"),
        LetterAndMorse(lettera:"7", morse:"--···"),
        LetterAndMorse(lettera:"8", morse:"---··"),
        LetterAndMorse(lettera:"9", morse:"----·")
    ]
}



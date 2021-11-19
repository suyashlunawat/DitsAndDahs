//
//  LettersMorse.swift
//  TranslateView
//
//  Created by Giuseppe Capozzi on 18/11/21.
//

import Foundation


struct Letter: Hashable {
    
    let letter : String
    
    
}

struct Number : Hashable {
    let number : Int
}

struct Morse : Hashable{
    
    let morse : String
}

struct Letters {
    
    let letters : [Letter] = [
        Letter(letter: "A"),
        Letter(letter: "B"),
        Letter(letter: "C"),
        Letter(letter: "D"),
        Letter(letter: "E"),
        Letter(letter: "F"),
        Letter(letter: "G"),
        Letter(letter: "H"),
        Letter(letter: "I"),
        Letter(letter: "J"),
        Letter(letter: "K"),
        Letter(letter: "L"),
        Letter(letter: "M"),
        Letter(letter: "N"),
        Letter(letter: "O"),
        Letter(letter: "P"),
        Letter(letter: "Q"),
        Letter(letter: "R"),
        Letter(letter: "S"),
        Letter(letter: "U"),
        Letter(letter: "V"),
        Letter(letter: "W"),
        Letter(letter: "X"),
        Letter(letter: "Y"),
        Letter(letter: "Z")
    ]
    

    
}

struct Numbers {
    
    let numbers : [Number] = [
        Number(number:1),
        Number(number:2),
        Number(number:3),
        Number(number:4),
        Number(number:5),
        Number(number:6),
        Number(number:7),
        Number(number:8),
        Number(number:9),
        Number(number:0),
     
    ]
    
}



struct  Morses {
    
    let morses : [Morse] = [
        Morse(morse: "·-"),
        Morse(morse: "-···"),
        Morse(morse: "-·-·"),
    ]
    
    
}





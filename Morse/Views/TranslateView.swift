//
//  ContentView.swift
//  Shared
//
//  Created by Giuseppe Capozzi on 16/11/21.
//

import SwiftUI


struct TranslateViewWithTitle: View{
    
    @State var showInfoModalView: Bool = false
    
    
    var body: some View {
        
        NavigationView {
            TranslateView()
                .navigationBarTitleDisplayMode(.inline)
                .toolbar {
                    ToolbarItem(placement: .principal) {
                        HStack {
                            Text("Translate")
                                .font(.largeTitle)
                                .fontWeight(.bold)
                            Spacer()
                            
                            Button {
                                showInfoModalView = true
                            } label: {
                                Image(systemName: "book.circle")
                                    .foregroundColor(Color.black)
                            }
                            
                        }    .sheet(isPresented: $showInfoModalView) {
                            if #available(iOS 15.0, *) {
                                ReferenceView()
                            } else {
                                // Fallback on earlier versions
                            }}
                    }
                }
        }
        
    }
}


struct TranslateView: View {
    @State private var selectedTypeIndex = "TextToMorse"
    
    var body: some View {
        VStack {
            Picker("Translation Type", selection: $selectedTypeIndex, content: {
                Text("Text to Morse").tag("TextToMorse")
                Text("Morse to Text").tag("MorseToText")
                
            })
                .padding()
                .pickerStyle(SegmentedPickerStyle()) // <1>
            if(selectedTypeIndex == "TextToMorse"){
                VStack{
                    ZStack{
                        
                        TranslateViewFieldInputBackground()
                        TranslateViewTextFieldTextToMorse()
                        
                        
                        
                    }
                    
                    ZStack{
                        TranslateViewFieldOutputBackground()
                        
                        
                    }
                    
                }
            }
            else if(selectedTypeIndex == "MorseToText"){
                
                VStack{
                    ZStack{
                        
                        TranslateViewFieldInputBackground()
                        
                    }
                    
                    ZStack{
                        TranslateViewFieldOutputBackground()
                    }
                    
                }
            }
            
            
            
            HStack{
                Button(action: {
                    print("SOS tapped")
                    
                }) {
                    ZStack{
                        RoundedRectangle(cornerRadius: 10)
                            .frame(width:171,height:50)
                            .foregroundColor(Color.red)
                        Text("SOS")
                            .font(.title)
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                        
                            .frame(minWidth: 0, maxWidth: .infinity)
                    }
                    
                }
                
                
                
                Button(action: {
                    print("Transmit tapped")
                    
                }) {
                    ZStack{
                        RoundedRectangle(cornerRadius: 10)
                            .frame(width:171,height:50)
                            .foregroundColor(Color.black)
                        
                        HStack {
                            
                            Text("Transmit")
                                .fontWeight(.bold)
                                .font(.title)
                            Image(systemName: "flashlight.on.fill")
                                .font(.title)
                        }
                        
                        .foregroundColor(.white)
                        .frame(minWidth: 0, maxWidth: .infinity)
                    }
                    
                }
                
                
                
            }.padding()
            
            
            
            
            
            Spacer()
        }
        .padding()
    }
}



struct TranslateViewFieldInputBackground: View{
    
    var body: some View {
        
        
        
        VStack(alignment:.trailing, spacing: 0) {
            Rectangle()
                .fill(Color(red: 0.84706, green: 0.84706, blue: 0.84706, opacity: 1))
                .cornerRadius(39, corners: [.topLeft, .topRight])
            
                .frame(minWidth: 0, maxWidth: .infinity)
            
        }
    }
    
    
    
}


struct TranslateViewFieldOutputBackground: View{
    
    var body: some View {
        
        VStack{
            
            VStack(alignment:.trailing, spacing: 0) {
                
                Rectangle()
                    .fill(Color(red: 0.84706, green: 0.84706, blue: 0.84706, opacity: 0.44))
                    .cornerRadius(39, corners: [.bottomLeft, .bottomRight])
                    .frame(minWidth: 0, maxWidth: .infinity)
            }
        }
        
        
        
    }
}


struct TranslateViewTextFieldTextToMorse: View{
    
    @State private var textToTranslate: String = ""
    init() {
        UITextView.appearance().backgroundColor = .clear
    }
    
    var body: some View {
        VStack {
            
            ZStack{
            
            if textToTranslate.isEmpty {
                    Text("Type Text Here")
                    .foregroundColor(Color.black).opacity(0.6)
             
                }
            
            TextEditor(text: $textToTranslate)
                .background(Color(red: 0.84706, green: 0.84706, blue: 0.84706, opacity: 0.44))
                .onChange(of: textToTranslate) { value in
                    if value.contains("\n") {
                        textToTranslate = value.replacingOccurrences(of: "\n", with: "")
                        self.dismissKeyboard()
                        //self.onEditingEnded()
                    }
                }
            }
            
            
        }.padding()
        
    }
}

/*struct TranslateViewTextFieldMorseToText: View {
 
 var body: some View{
 
 }
 
 
 }
 */

struct TranslateView_Previews: PreviewProvider {
    static var previews: some View {
        TranslateViewWithTitle()
    }
}



@available(iOS 15.0, *)
struct ReferenceView: View {
    @State private var searchText = ""
    
    
    let lettersToTranslate =  Letters()
    let numbersToTranslate = Numbers()
    let dictionaryCorr = LettersToMorse().translation
    
    var filteredLetters: [Letter] { // 1
        if searchText.isEmpty {
            return lettersToTranslate.letters
        } else {
            var arrayLetters : [String] = []
            var arrayLettersFiltered : [String] = []
            var arrayLettersFilteredToTranslate : [Letter] = []
            for (index, element) in lettersToTranslate.letters.enumerated(){
                
                arrayLetters.append(element.letter)
            }
            arrayLettersFiltered = arrayLetters.filter { $0.localizedCaseInsensitiveContains(searchText) }
            
            for (index, element) in arrayLettersFiltered.enumerated(){
                arrayLettersFilteredToTranslate.append(Letter(letter:element))
            }
            
            return arrayLettersFilteredToTranslate
            
        }
    }
    
    var filteredNumbers: [Number] { // 1
        if searchText.isEmpty{
            return numbersToTranslate.numbers
        } else if searchText.isNotANumber() {
            return []
        }
        
        else  {
            if searchText.isEmpty {
                return numbersToTranslate.numbers
            } else{
                var arrayNumbers : [Int] = []
                var filteredNumbers : [Number] = []
                for (index, element) in numbersToTranslate.numbers.enumerated(){
                    
                    arrayNumbers.append(element.number)
                }
                
                filteredNumbers.append(Number(number: Int(searchText)!))
                return filteredNumbers
            }
            
            
        
            

            
        }
    }

    
    @available(iOS 15.0, *)
    var body: some View {
        
        NavigationView{
            
            if #available(iOS 15.0, *) {
                List {
                    
                    
                    
                    
                    Section(header: Text("ALPHABETS")) {
                        
                        ForEach(filteredLetters, id: \.self){element in
                            NavigationLink(destination: ReferenceViewBig(letter:element.letter,morse: dictionaryCorr[element.letter]!)){
                            HStack{
                                Text(element.letter)
                                Spacer()
                                Text(dictionaryCorr[element.letter]!)
                                
                                
                            }
                            }
                            
                            
                        }
                        
                        
                    }.listStyle(.grouped)
                    
                    Section(header: Text("NUMBERS")) {
                        
                        ForEach(filteredNumbers, id: \.self){element in
                            NavigationLink(destination: ReferenceViewBig(letter:String(element.number),morse: dictionaryCorr[String(element.number)]!)){
                            HStack{
                            Text(String(element.number))
                            Spacer()
                            Text(dictionaryCorr[String(element.number)]!)
                            }
                        }
                        }

                    }.listStyle(.grouped)
                    
                }.navigationBarTitle("Reference")
                    .searchable(text: $searchText,prompt:"Search")
                        
            } else {
                // Fallback on earlier versions
            }
                
                
                
                
            }.accentColor(.black)
        }
        
    }



struct ReferenceViewBig: View {
    var letter: String
    var morse: String
    var body: some View {
        VStack {
            Text(letter)
                .font(.system(size: 250))
                .fontWeight(.bold)
                .offset(x: 0, y: 100)
            Text(morse)
                .font(.system(size: 250))
                .frame(height: 200)
                .offset(x: 0, y: -150)
                
                
            
        }
        
    }
}



//
//  ContentView.swift
//  VisualisingDataStructures
//
//  Created by Matteo Mountain on 14/03/2023.
//

import SwiftUI

struct StackView: View {
    @State private var stack = Stack(capacity: 5)
    @State private var showTextField = false
    @State private var enteredNumber = ""
    
    var body: some View {
        VStack {
            Form {
                ForEach(stack.stackArray.indices, id: \.self) { index in
                    HStack {
                        Spacer()
                        if index == stack.tail {
                            Image(systemName: "arrow.right")
                                .frame(width: 30)
                            
                        } else {
                            Text("")
                                .frame(width: 30)
                            
                        }
                        
                        if stack.stackArray[index] == 0 {
                            Text("-")
                                .offset(x: -20)
                                .frame(width: 150)
                                .padding()
                            Spacer()
                        } else{
                            Text(String(stack.stackArray[index]))
                                .offset(x: -20)
                                .frame(width: 150)
                                .padding()
                            Spacer()
                        }
                    }
                }
                
            }
            
            if showTextField == true {
                Spacer()
                VStack {
                    TextField("Enter Number", text: $enteredNumber)
                        .padding()
                    Button("Done", action: {
                        showTextField = false
                        if let intEnteredNumber = Int(enteredNumber) {
                            stack.push(item: intEnteredNumber)
                        } else {
                            stack.errorMessage = "Invalid Input"
                        }
                    }).padding().frame(width: 80)
                }
                Spacer()
            }
            
            
            if stack.errorMessage != "" {
                Text("Error: \(stack.errorMessage)")
            }
            
            
            VStack {
                HStack {
                    Spacer()
                    Button("Push", action: {
                        showTextField = true
                    })
                    
                    Spacer()
                    
                    Button("Pop", action: {
                        stack.pop()
                    }).padding()
                    Spacer()
                }
            }
        }
    }
}


struct StackView_Previews: PreviewProvider {
    static var previews: some View {
        StackView()
            .previewInterfaceOrientation(.portrait)
    }
}

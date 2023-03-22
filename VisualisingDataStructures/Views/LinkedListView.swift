//
//  LinkedListView.swift
//  VisualisingDataStructures
//
//  Created by Matteo Mountain on 21/03/2023.
//

import SwiftUI

struct LinkedListView: View {
    @State private var list = LinkedList()
    @State private var showTextField = false
    @State private var enteredNumber = ""
    
    var body: some View {
        VStack {
            Form {
                ForEach(list.outputList().indices, id: \.self) { value in
                    HStack {
                        if list.outputList()[value] != 0 && list.outputList()[value] != list.peek(){
                            Image(systemName: "arrow.down")
                                .frame(width: 30)
                        } else {
                            Text("")
                                .frame(width: 30)
                        }
                        
                        if list.outputList()[value] == 0 {
                            Text("-")
                                .offset(x: -20)
                                .frame(width: 150)
                                .padding()
                        } else {
                            Text(String(list.outputList()[value]))
                                .offset(x: -20)
                                .frame(width: 150)
                                .padding()
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
                            list.append(intEnteredNumber)
                        } else {
                            print("Invalid")
                        }
                    }).padding().frame(width: 80)
                }
                Spacer()
            }
            
            VStack {
                HStack {
                    Spacer()
                    Button("Push", action: {
                        showTextField = true
                    })
                    Spacer()
                    Button("Pop", action: {
                        list.removeLast()
                    }).padding()
                    Spacer()
                }
            }
        }
    }
}

struct LinkedListView_Previews: PreviewProvider {
    static var previews: some View {
        LinkedListView()
            .previewInterfaceOrientation(.portrait)
    }
}

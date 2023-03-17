//
//  QueueView.swift
//  VisualisingDataStructures
//
//  Created by Matteo Mountain on 14/03/2023.
//

import SwiftUI

struct QueueView: View {
    @State private var queue = Queue(capacity: 5)
    @State private var showTextField = false
    @State private var enteredNumber = ""
    
    var body: some View {
        VStack {
            Form {
                ForEach(queue.queueArray.indices, id: \.self) { index in
                    HStack {
                        Spacer()
                        if index == queue.tail || index == queue.head {
                            Image(systemName: "arrow.right")
                                .frame(width: 30)
                            
                        } else {
                            Text("")
                                .frame(width: 30)
                            
                        }
                        
                        if queue.queueArray[index] == 0 {
                            Text("-")
                                .offset(x: -20)
                                .frame(width: 150)
                                .padding()
                            Spacer()
                        } else{
                            Text(String(queue.queueArray[index]))
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
                            queue.push(item: intEnteredNumber)
                        } else {
                            queue.errorMessage = "Invalid Input"
                        }
                    }).padding().frame(width: 80)
                }
                Spacer()
            }
            
            
            if queue.errorMessage != "" {
                Text("Error: \(queue.errorMessage)")
            }
            
            
            VStack {
                HStack {
                    Spacer()
                    Button("Push", action: {
                        showTextField = true
                    })
                    
                    Spacer()
                    
                    Button("Pop", action: {
                        queue.pop()
                    }).padding()
                    Spacer()
                }
            }
        }
    }
}


struct QueueView_Previews: PreviewProvider {
    static var previews: some View {
        QueueView()
    }
}

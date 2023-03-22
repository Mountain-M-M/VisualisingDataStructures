//
//  RootTabView.swift
//  VisualisingDataStructures
//
//  Created by Matteo Mountain on 21/03/2023.
//

import SwiftUI

struct RootTabView: View {
    var body: some View {
        TabView{
            StackView()
                .tabItem{
                    Image(systemName: "square.stack")
                    Text("Stack")
                    
                }
            QueueView()
                .tabItem{
                    Image(systemName: "line.3.horizontal.decrease")
                    Text("Queue")
                    
                }
            LinkedListView()
                .tabItem{
                    Image(systemName: "link")
                    Text("Linked List")
                    
                }
        }
    }
}

struct RootTabView_Previews: PreviewProvider {
    static var previews: some View {
        RootTabView()
    }
}

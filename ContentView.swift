//
//  ContentView.swift
//  ItemApp
//
//  Created by Terrance Griffith on 4/27/26.
//

import SwiftUI

struct ContentView: View {
    @State private var itemViewModel = ItemViewModel()
    let testingID = UIIdentifiers.ItemListScreen.self
    
    var body: some View {
        VStack {
            ScrollView {
                ForEach(itemViewModel.items) { item in
                    Text(item.name)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .accessibilityIdentifier(testingID.item(item.id))
                        .background {
                            Capsule().fill(Color.yellow)
                        }
                }
            }
            .accessibilityIdentifier(testingID.itemList)
            
            Divider()
            
            HStack {
                Button(
                    role: .destructive,
                    action: {
                        itemViewModel.deleteLastItem()
                    }, label: {
                        Text("Remove Last")
                    })
                .buttonStyle(.borderedProminent)
                .disabled(itemViewModel.deleteDisabled)
                .accessibilityIdentifier(testingID.deleteButton)
                
                Button(action: {
                    itemViewModel.addItem()
                }, label: {
                    Label("Add Item", systemImage: "plus")
                })
                .buttonStyle(.bordered)
                .disabled(itemViewModel.addDisabled)
                .accessibilityIdentifier(testingID.addButton)
            }

        }
        .padding()
    }
}

#Preview {
    ContentView()
}

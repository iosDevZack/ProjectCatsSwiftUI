//
//  BreedListView.swift
//  CatsSwiftUI
//
//  Created by Женя  on 31.12.21.
//

import SwiftUI

struct BreedListView: View {
    let breeds: [Breed]
    
    @State private var searchText: String = ""
    
    var filterBreeds: [Breed] {
        if searchText.count == 0 {
            return breeds
        } else {
            return breeds.filter { $0.name.contains(searchText) }
        }
    }
    
    var body: some View {
        NavigationView {
            List {
                ForEach(filterBreeds) { breed in
                    NavigationLink {
                        BreedDetailView(breed: breed)
                    } label: {
                        BreedRow(breed: breed)
                    }
                    
                }
                ForEach(breeds) { breeds in
                    
                }
                
            }
            .listStyle(PlainListStyle())
            .navigationTitle("Find your perfect cat")
            .searchable(text: $searchText)
        }
    }
}

struct BreedListView_Previews: PreviewProvider {
    static var previews: some View {
        BreedListView(breeds: BreedFetcher.succesState().breeds)
    }
}

//
//  LoadingView.swift
//  CatsSwiftUI
//
//  Created by Женя  on 31.12.21.
//

import SwiftUI

struct LoadingView: View {
    var body: some View {
        VStack {
            Text("Hello")
                .font(.system(size: 40))
            ProgressView()
            
        }
    }
}

struct LoadingView_Previews: PreviewProvider {
    static var previews: some View {
        LoadingView()
    }
}

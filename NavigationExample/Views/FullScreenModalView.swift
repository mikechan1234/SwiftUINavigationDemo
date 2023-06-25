//
//  FullScreenModalView.swift
//  NavigationExample
//
//  Created by Michael Chan on 25/06/2023.
//

import SwiftUI

struct FullScreenModalView: View {
    @Environment(\.dismiss) var dismiss
    var body: some View {
        ZStack {
            Color.orange
            VStack(spacing: 10) {
                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                Button("Dismiss") {
                    dismiss()
                }
            }
        }.ignoresSafeArea()
    }
}

struct FullScreenModalView_Previews: PreviewProvider {
    static var previews: some View {
        FullScreenModalView()
    }
}

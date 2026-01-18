//
//  ExternalListView.swift
//  External
//
//  Created by Michael Chan on 25/06/2023.
//

import SwiftUI

struct ExternalListView: View {
    @State private var isPresentingAlert: Bool = false
    
    var items: [ExternalItem]
    var body: some View {
        VStack(spacing: 10) {
            if isPresentingAlert {
                Text("Did finish public route")
                    .padding(10)
            }
            List(items) { value in
                switch Bool.random() {
                    case true:
                        NavigationLink(value: ExternalRoute.detail(value)) {
                            ExternalListCell(item: value)
                        }
                    default:
                        NavigationLink(value: ExternalPublicRoute.details) {
                            ExternalListCell(item: value)
                        }
                }
            }
            .navigationTitle("External")
        }
    }
}

struct ExternalListView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack {
            ExternalListView(items: ExternalItem.samples)
        }
    }
}

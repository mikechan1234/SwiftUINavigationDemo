//
//  ExternalDetailView.swift
//  External
//
//  Created by Michael Chan on 25/06/2023.
//

import SwiftUI

struct ExternalDetailView: View {
    @Environment(ExternalNavigator.self) var navigator
    @State private var isPresentingModal: Bool = false
    var item: ExternalItem

    var body: some View {
        Form(content: {
            Section("Title") {
                Text(item.title)
            }
            Section("Description") {
                Text(item.description)
            }
            Section("Options") {
                Button("Add New") {
                    navigator.go(to: .detail(.generate()))
                }.padding(.vertical, 10)
                Button("Show Modal") {
                    isPresentingModal.toggle()
                }.padding(.vertical, 10)
                Button("Pop to Root") {
                    navigator.toRoot()
                }.padding(.vertical, 10)
                Button("Pop Once") {
                    navigator.pop()
                }.padding(.vertical, 10)
                Button("Public Route") {
                    navigator.go(to: ExternalPublicRoute.details)
                }
            }
        }).fullScreenCover(isPresented: $isPresentingModal) {
            FullScreenModalView()
        }
    }
}

struct ExternalDetailView_Previews: PreviewProvider {
    @State static var navigator = ExternalNavigator()
    static var previews: some View {
        NavigationStack(path: $navigator.path) {
            ExternalDetailView(
                item: .generate()
            ).environment(navigator)
        }
    }
}

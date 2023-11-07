//
//  SettingsView.swift
//  Homework_Navigation
//
//  Created by Dmitry Loginov on 07.11.2023.
//

import SwiftUI

struct SettingsView: View {
    
    @State private var isShowingSheet  = false
    
    var body: some View {
        Button {
            isShowingSheet.toggle()
        } label: {
            Text("Detail Settings")
                .font(.largeTitle)
        }
        .sheet(
            isPresented: $isShowingSheet,
            content: {
                Text("Description")
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    .padding(50)
                Text("Manage your life yourself.")
                    .padding(50)
                LabelView(attributedText: NSAttributedString(string: "Example of UIViewRepresentable"))
                    .frame(maxWidth: 300)
                    .fixedSize(horizontal: false, vertical: true)
                    .background(Color.blue.opacity(0.2))
                Button {
                    isShowingSheet.toggle()
                } label: {
                    Text("Dismiss")
                        .padding(.bottom, 50)
                }
            }
        )
    }
}

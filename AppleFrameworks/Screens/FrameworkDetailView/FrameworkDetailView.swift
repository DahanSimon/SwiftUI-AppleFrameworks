//
//  FrameworkDetailView.swift
//  AppleFrameworks
//
//  Created by Simon Dahan on 12/12/2022.
//

import SwiftUI

struct FrameworkDetailView: View {
    var framework: Framework
    @Binding var isShowingDetailView: Bool
    @State private var isShowinfSafariView = false
    
    var body: some View {
        VStack {
            XDismissButton(isShowingDetailView: $isShowingDetailView)

            Spacer()
            FrameworkTitleView(framework: framework)
            Text(framework.description)
                .font(.body)
                .padding()
            Spacer()
            Button {
                isShowinfSafariView = true
            } label: {
                MoreButton(title: "Learn More")
            }
            .fullScreenCover(isPresented: $isShowinfSafariView) {
                SafariView(url: URL(string: framework.urlString)!)
            }
        }
    }
}

struct FrameworkDetailView_Previews: PreviewProvider {
    static var previews: some View {
        FrameworkDetailView(framework: MockData.sampleFramework, isShowingDetailView: .constant(false))
            .preferredColorScheme(.dark)
    }
}



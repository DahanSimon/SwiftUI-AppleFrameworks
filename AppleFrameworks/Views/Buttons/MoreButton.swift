//
//  MoreButton.swift
//  AppleFrameworks
//
//  Created by Simon Dahan on 12/12/2022.
//

import SwiftUI

struct MoreButton: View {
    var title: String
    var body: some View {
        Text(title)
            .font(.title2)
            .fontWeight(.semibold)
            .frame(width: 280, height: 50)
            .foregroundColor(.white)
            .background(.red)
            .cornerRadius(10)
    }
}
struct MoreButton_Previews: PreviewProvider {
    static var previews: some View {
        MoreButton(title: "Test Title")
    }
}

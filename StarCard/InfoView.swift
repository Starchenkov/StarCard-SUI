//
//  InfoView.swift
//  StarCard
//
//  Created by Sergey Starchenkov on 10.11.2020.
//

import SwiftUI

struct InfoView: View {
    
    let text: String
    let imageName: String
    
    var body: some View {
        RoundedRectangle(cornerRadius: 25)
            .foregroundColor(.white)
            .frame(width: .none, height: 50)
            .overlay(HStack {
                Image(systemName: imageName)
                    .foregroundColor(.green)
                Text(text)
            })
            .padding(.all)
    }
}

struct InfoView_Previews: PreviewProvider {
    static var previews: some View {
        InfoView(text: "Text", imageName: "phone.fill")
            .previewLayout(.sizeThatFits)
    }
}

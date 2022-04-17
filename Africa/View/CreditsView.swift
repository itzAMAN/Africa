//
//  CreditsView.swift
//  Africa
//
//  Created by AMAN SHARMA on 17/04/22.
//

import SwiftUI

struct CreditsView: View {
    var body: some View {
        VStack {
            Image("compass")
                .resizable()
                .scaledToFit()
                .frame(width: 128, height: 128)
            Text("""
    Copyright © AMAN SHARMA
    All rights reserved
    Redesign ♡ Rebuild ♡ Reclaim
    """)
            .font(.footnote)
        .multilineTextAlignment(.center)
        } //:VSTACK
        .padding()
        .opacity(0.4)
    }
}

struct CreditsView_Previews: PreviewProvider {
    static var previews: some View {
        CreditsView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}

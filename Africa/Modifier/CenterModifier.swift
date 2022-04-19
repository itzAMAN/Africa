//
//  CenterModifier.swift
//  Africa
//
//  Created by AMAN SHARMA on 17/04/22.
//

import SwiftUI

struct CenterModifier: ViewModifier {
    func body(content: Content) -> some View {
        HStack {
            Spacer()
            content
            Spacer()
        }
    }
}

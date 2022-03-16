//
//  BorderWithShadowModifier.swift
//  SwiftUICells
//
//  Created by Денис Сизов on 16.03.2022.
//

import SwiftUI

struct BorderWithShadowModifier: ViewModifier {
	var color: Color
	var shadowRadius: CGFloat
	
	func body(content: Content) -> some View {
		content
			.overlay(
				RoundedRectangle(cornerRadius: 12)
					.stroke(Color.red)
					.shadow(color: self.color, radius: self.shadowRadius)
			)
	}
}



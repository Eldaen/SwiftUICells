//
//  ViewExtension.swift
//  SwiftUICells
//
//  Created by Денис Сизов on 16.03.2022.
//

import SwiftUI

extension View {
	func borderWithShadow(color: Color, shadowRadius: CGFloat) -> some View {
		self
			.modifier(
			BorderWithShadowModifier(color: color, shadowRadius: shadowRadius)
		)
	}
	
	func roundedBackground(color: Color) -> some View {
		self
			.modifier(
				RoundedBackgroundModifier(color: color)
			)
	}
}

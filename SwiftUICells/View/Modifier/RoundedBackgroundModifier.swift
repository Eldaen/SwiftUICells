//
//  RoundedBackgroundModifier.swift
//  SwiftUICells
//
//  Created by Денис Сизов on 16.03.2022.
//

import SwiftUI

struct RoundedBackgroundModifier: ViewModifier {
	var color: Color
	
	func body(content: Content) -> some View {
		content
			.background(
				RoundedRectangle(cornerRadius: 12)
					.fill(color)
			)
	}
}

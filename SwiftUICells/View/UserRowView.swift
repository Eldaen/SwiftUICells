//
//  UserRowView.swift
//  SwiftUICells
//
//  Created by Денис Сизов on 16.03.2022.
//

import SwiftUI

struct UserRowView: View {
	
	let firstName: String
	let secondName: String
	let avatarImageName: String
	
    var body: some View {
		UserRowBuilder {
			Image(systemName: avatarImageName)
			
			Text(firstName)
				.foregroundColor(Color.white)
			
			Text(secondName)
				.foregroundColor(Color.white)
			
			Spacer()
		}

    }
}

struct UserRowBuilder<Content: View>: View {
	let content: Content
	
	init(@ViewBuilder content: () -> Content) {
		self.content = content()
	}
	
	var body: some View {
		HStack {
			content
		}
		.padding(5)
		.roundedBackground(color: Color.cyan)
		.borderWithShadow(color: Color.orange, shadowRadius: 5)
	}
}



struct UserRowView_Previews: PreviewProvider {
	static var previews: some View {
		UserRowView(firstName: "Sergey", secondName: "Filipov", avatarImageName: "sun.max.fill")
	}
}

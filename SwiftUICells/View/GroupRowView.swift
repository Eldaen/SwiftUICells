//
//  GroupRowView.swift
//  SwiftUICells
//
//  Created by Денис Сизов on 16.03.2022.
//

import SwiftUI

struct GroupRowView: View {
	
	let groupName: String
	let groupAvatarImageName: String
	
    var body: some View {
		GroupRowBuilder {
			Image(systemName: groupAvatarImageName)
				.opacity(10)
			
			Text(groupName)
				.font(Font.largeTitle)
				.fontWeight(.heavy)
			
			Spacer()
		}
		.padding(5)
		.borderWithShadow(color: Color.blue, shadowRadius: 5)
    }
}

struct GroupRowBuilder<Content: View>: View {
	let content: Content
	
	init(@ViewBuilder content: () -> Content) {
		self.content = content()
	}
	
	var body: some View {
		HStack {
			content
		}
		.padding(5)
		.roundedBackground(color: Color.mint)
		.borderWithShadow(color: Color.blue, shadowRadius: 5)
	}
}

struct GroupRowView_Previews: PreviewProvider {
    static var previews: some View {
		GroupRowView(groupName: "Test", groupAvatarImageName: "sun.max.fill")
    }
}

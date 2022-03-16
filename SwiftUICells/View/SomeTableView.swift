//
//  SomeTableView.swift
//  SwiftUICells
//
//  Created by Денис Сизов on 16.03.2022.
//

import SwiftUI

struct SomeTableView: View {
    var body: some View {
		VStack {
			UserRowView(firstName: "Sergey", secondName: "Filipov", avatarImageName: "sun.max.fill")
			GroupRowView(groupName: "TestGroup", groupAvatarImageName: "sun.max")
		}
		.padding(10)
    }
}

struct SomeTableView_Previews: PreviewProvider {
    static var previews: some View {
        SomeTableView()
    }
}

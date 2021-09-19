//
//  SuccessView.swift
//  MyWorkout
//
//  Created by Surapunya Thongdee on 17/9/2564 BE.
//

import SwiftUI

struct SuccessView: View {
    @Environment(\.presentationMode) var presentationMode
    @Binding var selectedTab: Int
    var body: some View {
        ZStack {
            VStack {
                Image(systemName: "hand.raised.fill")
                    .resizedToFill(width: 75, height: 75)
                    .foregroundColor(.purple)
                Text(NSLocalizedString("High Five!",comment: "compliment"))
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                Text(NSLocalizedString("""
                    Good job completing all seven exercises!
                    Remember tomorrow's another day.
                    So eat well and get some rest.
                    """, comment: "description of done exercise"))
                    .multilineTextAlignment(.center)
                    .foregroundColor(.gray)
            }
            VStack {
                Spacer()
                
                Button(NSLocalizedString("Continue", comment: "go to first page")) {
                    presentationMode.wrappedValue.dismiss()
                    selectedTab = 9
                }
                .padding()
            }
            
            
        }
    }
}

struct SuccessView_Previews: PreviewProvider {
    static var previews: some View {
        SuccessView(selectedTab: .constant(3))
    }
}

//
//  TimerView.swift
//  MyWorkout
//
//  Created by Surapunya Thongdee on 18/9/2564 BE.
//

import SwiftUI

struct TimerView: View {
    @State private var timeRemaining = 3
    @Binding var timerDone: Bool
    let timer = Timer.publish(every: 1, on: .main, in: .common)
        .autoconnect()
    
    var body: some View {
        Text("\(timeRemaining)")
            .font(.system(size: 70, design: .rounded))
            .padding()
            .onReceive(timer) { _ in
                if timeRemaining > 0 {
                    timeRemaining -= 1
                } else {
                    timerDone = true
                }
            }
            .animation(.none)
    }
}

struct TimerView_Previews: PreviewProvider {
    static var previews: some View {
        TimerView(timerDone: .constant(false))
            .previewLayout(.sizeThatFits)
    }
}

//
//  HistoryView.swift
//  MyWorkout
//
//  Created by Surapunya Thongdee on 17/9/2564 BE.
//

import SwiftUI

struct HistoryView: View {
    @Binding var showHistory: Bool
    
    @EnvironmentObject var history: HistoryStore
    
    var body: some View {
        ZStack (alignment: .topTrailing) {
            VStack {
                Form {
                    ForEach(history.exerciseDays) { day in
                        Section(header: Text(day.date.formatted(as: "MMMd")).padding(.top, 30)) {
                            ForEach(day.exercises, id: \.self) { exercise in
                                Text(exercise)
                            }
                        }
                    }
                }
            }
            Button(action: { showHistory.toggle() }) {
                Image(systemName: "xmark.circle")
                    .font(.title)
                    .padding(.trailing)
            }
            .padding(.top)
        }
    }
}

struct HistoryView_Previews: PreviewProvider {
    static var previews: some View {
        HistoryView(showHistory: .constant(true))
            .environmentObject(HistoryStore())
    }
}

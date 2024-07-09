//
//  DiaryViewModel.swift
//  EmotionDiary
//
//  Created by 서동환 on 7/9/24.
//

import Foundation
import SwiftUI
import Combine


final class DiaryViewModel: ObservableObject {
    
    @Published var date: Date = Date()
    @Published var isPresented: Binding<Bool>
    
    var subscriptions = Set<AnyCancellable>()
    
    init(isPresented: Binding<Bool>) {
        self.isPresented = isPresented
        
        $date.sink { date in
            print("--> selected: \(date)")
        }.store(in: &subscriptions)
    }
}

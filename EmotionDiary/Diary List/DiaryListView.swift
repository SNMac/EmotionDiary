//
//  ContentView.swift
//  EmotionDiary
//
//  Created by joonwon lee on 2022/07/02.
//

import SwiftUI

struct DiaryListView: View {
    
    @State var list: [MoodDiary] = MoodDiary.list
    
    let layout: [GridItem] = [
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible()),
    ]
    
    var body: some View {
        LazyVGrid(columns: layout, content: {
            ForEach(list) { item in
                MoodDiaryCell(diary: item)
                    .frame(height: 50)
            }
        })
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        DiaryListView()
    }
}

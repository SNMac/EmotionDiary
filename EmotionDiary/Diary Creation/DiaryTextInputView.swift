//
//  DiaryTextInputView.swift
//  EmotionDiary
//
//  Created by joonwon lee on 2022/07/02.
//

import SwiftUI

struct DiaryTextInputView: View {
    
    @ObservedObject var vm: DiaryViewModel
    @FocusState var focused: Bool
    
    var body: some View {
        VStack {
            TextEditor(text: $vm.text)
                .focused($focused)
                .border(.gray.opacity(0.2), width: 2)
            
            Button(action: {
                vm.completed()
            }, label: {
                Text("Done")
                    .frame(width: 200, height: 80)
                    .foregroundStyle(.white)
                    .background(Color.pink)
                    .clipShape(RoundedRectangle(cornerRadius: 40))
            })
        }
        .onAppear(perform: {
            print("on Appear")
            focused = true
        })
        .padding()
    }
}

struct DiaryTextInputView_Previews: PreviewProvider {
    static var previews: some View {
        DiaryTextInputView(vm: DiaryViewModel(isPresented: .constant(false), diaries: .constant(MoodDiary.list)))
    }
}

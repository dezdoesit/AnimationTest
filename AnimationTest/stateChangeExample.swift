//
//  stateChangeExample.swift
//  AnimationTest
//
//  Created by dmoney on 10/12/23.
//

import SwiftUI

struct stateChangeExample: View {
    
    @State private var soundOn = false
    @State private var bookRead = false
    
    var body: some View {
        VStack {
            Image(systemName: "character.book.closed.fill")
                .font(.largeTitle)
                .padding()
            Text("How would you like to read?")
                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
            Spacer()
            HStack{
                Toggle(isOn: $soundOn) {
                    Image(systemName: soundOn ? "speaker.wave.2.fill" : "speaker.slash.fill")
                        .font(.largeTitle)
                        .foregroundColor(soundOn ? .green : .black)
                        .contentTransition(.symbolEffect(.replace))
                }.frame(width: 150)
        }
            Button{
          //      bookRead.toggle()
            }label: {
                Rectangle()
                    .frame(width: 100, height: 100)
                    .overlay(soundOn ? Text("Read Audiobook").foregroundColor(.white) : Text("Read Paperback").foregroundColor(.white))
             
            }
        }
    }
}

#Preview {
    stateChangeExample()
}

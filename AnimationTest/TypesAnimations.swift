//
//  TypesAnimations.swift
//  AnimationTest
//
//  Created by dmoney on 10/11/23.
//

import SwiftUI

struct TypesAnimations: View {
    
    @State private var soundOn = false
    @State private var bookRead = false
    
    var body: some View {
        VStack(spacing: 50) {
            Image("book")
                .resizable()
                .scaledToFit()
                .frame(maxWidth: 200 ,maxHeight: 200)
            Text("How would you like to read?")
                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
            Spacer()
            HStack(spacing:150){
                
                Toggle(isOn: $soundOn){
                    Image(systemName: soundOn ? "speaker.wave.3.fill" : "speaker.slash.fill")
                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                        .foregroundColor(soundOn ? .green : .black)
                        .contentTransition(.symbolEffect(.replace))
                    
                }.frame(width: 150)
            }
            Spacer()
            Button{
                bookRead.toggle()
            }label: {
                Rectangle()
                    .frame(width: 240, height: 48)
                    .overlay(soundOn ? Text("Read Audiobook").foregroundColor(.white) : Text("Read Paperback").foregroundColor(.white))
            }
            
        }
    }
    
}

#Preview {
    TypesAnimations()
    
}

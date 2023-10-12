//
//  Idk.swift
//  AnimationTest
//
//  Created by dmoney on 10/11/23.
//

import SwiftUI

struct Idk: View {
    
    @State private var hPulse: CGFloat = 2
    
    var body: some View {
        VStack {
            Button {
                
            } label: {
            Text("Hello World")
                
                    .frame(width: 240, height: 48)
                    .scaleEffect(hPulse)
                    .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                    .onAppear(){
                        withAnimation(.easeInOut.speed(0.5).repeatForever(autoreverses: true)) {
                                  
                                   hPulse = 0.5 * hPulse
                               }
                           }
                  
            }
            
        }
    }
}
#Preview {
    Idk()
}

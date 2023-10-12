//
//  AnimatedButton.swift
//  AnimationTest
//
//  Created by dmoney on 10/11/23.
//

import SwiftUI

struct AnimatedButton: View {
    @State private var showAttention = false
    @State private var show = false
    
    let buttonBg = LinearGradient(gradient: Gradient(colors: [Color(.cyan), Color.white]), startPoint: .leading, endPoint: .trailing)
    var body: some View {
      
            ZStack {
                RoundedRectangle(cornerRadius: 16)
                    .fill(buttonBg)
                    .frame(width: 90, height: 32)
                    .scaleEffect(show ? 1.7 : 0)
                    .opacity(0.25)
                    .animation(.easeOut(duration: 2).delay(2).repeatForever(autoreverses: false), value: show)
                    .onAppear{
                        show.toggle()
                    }
                
                RoundedRectangle(cornerRadius: 16)
                    .fill(buttonBg)
                    .frame(width: 90, height: 32)
                    .scaleEffect(showAttention ? 1.5 : 0)
                    .opacity(0.5)
                    .animation(.easeInOut(duration: 2).delay(2).repeatForever(autoreverses: false), value: showAttention)
                    .onAppear{
                        showAttention.toggle()
                    }
                
                
                Button("Claim Offer") {
                    //
                }
                .padding(EdgeInsets(top: 8, leading: 16, bottom: 8, trailing: 16))
                .background(buttonBg)
                .cornerRadius(16)
            }
        }
    }



#Preview {
    AnimatedButton()
        .preferredColorScheme(.dark)
}

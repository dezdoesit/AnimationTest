//
//  AniOrWith.swift
//  AnimationTest
//
//  Created by dmoney on 10/11/23.
//

import SwiftUI

struct AniOrWith: View {
    @State var isExpanded = false
    var body: some View {
        
        VStack{
            Image(systemName: "globe")
                          .imageScale(.large)
                          .foregroundStyle(.tint)
            Rectangle()
                .frame(height: isExpanded ? 500 : 100)
//                .animation(.default, value: isExpanded)
                
            Button{
                withAnimation(.easeInOut){
                    isExpanded.toggle()
               }
            }label: {
                Text("Press Me")
            }.buttonStyle(.borderedProminent)
            
            Text("Hello, world!")
            
        }/*.animation(.default, value: isExpanded)*/
//        VStack {
//            Image(systemName: "globe")
//                .imageScale(.large)
//                .foregroundStyle(.tint)
//            Rectangle()
//                .frame(height: isExpanded ? 500 : 100)
//            // add implicit animation here!
//            
//            Button {
//               withAnimation(.spring) { // add the withAnimation explicit animation block here!
//                    isExpanded.toggle()
//               }
//            } label: {
//                Text("Change Size")
//            }.buttonStyle(.borderedProminent)
//            Text("Hello, world!")
//        }//.animation(.default, value: isExpanded)
//        .padding()
    }
}



#Preview {
    AniOrWith()
}

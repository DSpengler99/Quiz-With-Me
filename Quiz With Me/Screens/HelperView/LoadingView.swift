//
//  LoadingView.swift
//  Quiz With Me
//
//  Created by Egzon Jusufi on 26.06.21.
//

import SwiftUI

/**
 This animated view is used to represent the loading screen in many views.
 */
struct LoadingView: View {
    
    @State private var isAnimating: Bool = false
    
    var body: some View {
        GeometryReader { (geometry: GeometryProxy) in
            ForEach(0..<5) { index in
                let smallCircleEffect = 1 - CGFloat(index) / 5
                let bigCircleEffect = 0.2 + CGFloat(index) / 5
                Group {
                    Circle()
                        .frame(width: geometry.size.width / 5, height: geometry.size.height / 5)
                        .scaleEffect(!self.isAnimating ? smallCircleEffect : bigCircleEffect)
                        .offset(y: geometry.size.width / 10 - geometry.size.height / 2)
                }
                .frame(width: geometry.size.width, height: geometry.size.height)
                .rotationEffect(!self.isAnimating ? .degrees(0) : .degrees(360))
                .animation(Animation
                            .timingCurve(0.5, 0.15 + Double(index) / 5, 0.25, 1, duration: 1.5)
                            .repeatForever(autoreverses: false))
            }
        }
        .aspectRatio(1, contentMode: .fit)
        .onAppear {
            self.isAnimating = true
        }
    }
}

struct DarkBlueShadowProgressViewStyle: ProgressViewStyle {
    func makeBody(configuration: Configuration) -> some View {
        ProgressView(configuration)
            .progressViewStyle(CircularProgressViewStyle())
            .foregroundColor(.red)
            .shadow(color: Color(red: 0, green: 0, blue: 0.6),
                    radius: 4.0, x: 1.0, y: 2.0)
    }
}

struct LoadingView_Previews: PreviewProvider {
    static var previews: some View {
         LoadingView()
         .frame(width: 200, height: 200)
         .foregroundColor(Color.darkBlue)
    }
}



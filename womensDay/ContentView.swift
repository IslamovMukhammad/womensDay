//
//  ContentView.swift
//  womensDay
//
//  Created by Muhammad Islamov on 08/03/22.
//   # Happy Women's Day

//   # C международным женским днем

//   # 國際婦女節快樂

//   # Xalqaro xotin-qizlar kuni bilan

import SwiftUI
import ConfettiSwiftUI

struct ContentView: View {
    @State var counter:Int = 0
  @State var counter1:Int = 0
  @State var counter2:Int = 0
  @State var counter3:Int = 0
  @State var counter4:Int = 0
  @State var counter5:Int = 0
  @State var counter6:Int = 0

    var body: some View {
      VStack(spacing: -20){
      ZStack{
            Text(" ").font(.system(size: 50)).onTapGesture(){counter += 1}
        ConfettiCannon(counter: $counter, repetitions: 3, repetitionInterval: 1)
        }
        ZStack{
            Text(" ").font(.system(size: 50)).onTapGesture(){counter6 += 1}
            ConfettiCannon(counter: $counter6, num:1, confettis: [.text("🌸"), .text("🌼"), .text("💐"), .text("🌺")], confettiSize: 20, repetitions: 50, repetitionInterval: 0.1)
        }
        ZStack{
            Text("ㅤㅤ ").font(.system(size: 50)).onTapGesture(){counter4 += 1}
          ConfettiCannon(counter: $counter4, num: 50, openingAngle: Angle(degrees: 0), closingAngle: Angle(degrees: 360), radius: 200)
        }
        ZStack{
          Text(" ").font(.system(size: 50)).onTapGesture(){counter5 += 1}
          ConfettiCannon(counter: $counter5, confettis: [.text("❤️"), .text("💙"), .text("💚"), .text("🧡")], confettiSize: 20, repetitions: 3, repetitionInterval: 1)
        }

      }
      .background(ZStack{
        Image("fw3").resizable().frame(width: 480, height: 970)
          .padding(.bottom, 20).padding(.trailing)
        Image("fwlogo").resizable().frame(width: 500, height: 400)
      })
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

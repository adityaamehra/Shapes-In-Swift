//
//  ContentView.swift
//  Shapes in Xcode
//
//  Created by Adityaa Mehra on 09/07/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack{
            //MARK: Cookie Cutter
            Image("beach").resizable().clipShape(Capsule())
            // MARK:-Circle
            ZStack{
                Circle().foregroundColor(.red).frame(width: 100)
                // Circle().stroke(Color.black).frame(width: 100)
                Circle().stroke(Color.black,style: StrokeStyle(lineWidth: 10 , dash: [1, 1])).frame(width: 100)
            }
            // MARK:- Ellipse
            Ellipse().frame(width: 100 , height: 50).foregroundColor(.yellow)
            // MARK:- Rectangle
            Rectangle().frame(width: 100 , height: 200).foregroundColor(.green).cornerRadius(25)
            // MARK:- Rounded Rectangle
            RoundedRectangle(cornerRadius: 25, style: .continuous).frame(width: 100 , height: 200).foregroundColor(.pink)
            //MARK:- Capsules
            ZStack{
            Capsule().frame(width: 200 , height: 40).foregroundColor(.gray)
                Text("Capsule Button").foregroundColor(.white)
            }
            //MARK:- Main use
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

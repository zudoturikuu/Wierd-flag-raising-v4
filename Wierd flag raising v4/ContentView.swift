//
//  ContentView.swift
//  Wierd flag raising v4
//
//  Created by Wong Jun heng on 21/5/22.
//

import SwiftUI

struct ContentView: View {
    
    @State var counter = 0.0
    
    var body: some View {
        VStack {
            Text("\(counter)")
            
            HStack(alignment: .bottom, spacing: -10) {
                Rectangle()
                    .frame(width: 0.01)
                Text("🔥")
                    .font(.system(size: 50))
                    .offset(y: -10 * counter)
            }
            Text("🔫")
                .font(.system(size: 50))
            HStack{
                Text("👻")
                    .font(.system(size:50))
            }
            
                Button {
                counter = counter + 1
            } label: {
                Text("Shoot fire")
                    .padding()
                    .background(.red)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
            if counter > 10{
                Text("Oh no the fire is reaching the notch")
            }
            if counter > 20{
                Text ("We must protect our lord and savior, the notch!")
            }
            if counter > 30 {
                Text ("We are never gonna give the notch up")
            }
            if counter > 40 {
                Text ("Stop pressing the button!")
            }
        }
    }

struct ContentView_Previews: PreviewProvider {
    static var previews: some View{
        ContentView()
    }
}


}

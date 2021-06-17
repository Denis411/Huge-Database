//
//  LoadingLine.swift
//

import SwiftUI

struct LoadingLine: View {

    
    @State var keyGotPressed: Bool = false
    @State var keyPressedSuccess: Bool = false
    var body: some View {
        VStack{
            
            Rectangle()
                .fill(keyPressedSuccess ? Color.green : Color.blue)
                .frame(width: keyGotPressed ? .infinity : CGFloat(0))
                .frame(height: 55)
                .frame(maxWidth: .infinity, alignment: .leading)
                .background(keyPressedSuccess ? Color.green : Color.gray)
            
            
            
            completeButton
                .onLongPressGesture(minimumDuration: 2, maximumDistance: 50, pressing: { pressing in
                    if pressing {
                        withAnimation(.easeInOut(duration: 2)){
                            keyGotPressed.toggle()
                        }
                    }else{
                        withAnimation(.easeInOut(duration: 3)){
                        keyGotPressed.toggle()
                        }
                    }
                }, perform: {
                    withAnimation(.easeInOut){
                    keyPressedSuccess = true
                    }
                })
                
            resetButton
            
        }
    }
}

struct MyScrollView_Previews: PreviewProvider {
    static var previews: some View {
        LoadingLine()
    }
}
extension LoadingLine{
   
    var completeButton: some View{
        Text(keyPressedSuccess ? "Complete" : "Press and hold")
            .frame(minWidth: 200)
            .font(.system(size: 25, weight: .semibold))
            .foregroundColor(.yellow)
            .padding(10)
            .padding(.horizontal, 20)
            .background(Color.black)
            .cornerRadius(20)
            
             
            
            
    }
    var resetButton: some View{
        Text("Rset")
            .frame(minWidth: 200)
            .font(.system(size: 25, weight: .semibold))
            .foregroundColor(.yellow)
            .padding(10)
            .padding(.horizontal, 20)
            .background(Color.black)
            .cornerRadius(20)
            .onTapGesture{
                withAnimation(.easeInOut){
                keyPressedSuccess = false
                keyGotPressed = false
            }
            }
            
            
    }
}

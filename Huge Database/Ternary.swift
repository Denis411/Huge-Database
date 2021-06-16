

import SwiftUI

struct Ternary: View {
   @State var toggleAnimation: Bool = true
    
    var body: some View {
        VStack {
            VStack {
                // MARK: - With animation
                Button( action: {
                    withAnimation(.linear(duration: 1)){
                    toggleAnimation.toggle()
                    }
                },
                        label: {
                            ZStack{
                                RoundedRectangle(cornerRadius: 20)
                            
                            Text("With animation")
                                .fontWeight(.black)
                                .foregroundColor(.black)
                            }
                            .frame(width: 200, height: 50)
                        }
                )
                
            // MARK: - Without animation
                Button( action: {
                    toggleAnimation.toggle()
                },
                        label: {
                            ZStack{
                                RoundedRectangle(cornerRadius: 20)
                            
                            Text("Without animation")
                                .fontWeight(.black)
                                .foregroundColor(.black)
                            }
                            .frame(width: 200, height: 50)
                        }
                )
                
                
            }
            
            Spacer()
            
            // MARK: - VStack 2
            
            RoundedRectangle(cornerRadius: toggleAnimation ? 20 : 200)
                .fill( toggleAnimation ? Color.red: Color.orange)
                .frame(
                    width: toggleAnimation ? 100 : CGFloat(200),
                    height: toggleAnimation ? 100 : CGFloat(200)
            )
                .offset(x: toggleAnimation ? 0: -55,
                        y: toggleAnimation ? 0: 115 )
                .rotationEffect(toggleAnimation ?  .degrees(0) : .degrees(360))
                
            Spacer()
            
        }
            
            
    }
}

struct Ternary_Previews: PreviewProvider {
    static var previews: some View {
        Ternary()
    }
}

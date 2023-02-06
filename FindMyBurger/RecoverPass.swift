//
//  RecoverPass.swift
//  FindMyBurger
//
//  Created by Juan jose Morales on 24/1/23.
//

import SwiftUI

struct RecoverPass: View {
    @State var color = Color.black.opacity(0.7)
    @State var email = ""
    var body: some View {
        
        ZStack {
            Color.white.ignoresSafeArea()
            VStack{
                Image("Logo3")
                    .fixedSize()
                Text("Recuperar contraseña")
                    .font(.custom("Khand-Semibold", size: 35))
                
                VStack{
                    TextField("Email", text: self.$email)
                        .foregroundColor(color)
                        .padding()
                        .background(RoundedRectangle(cornerRadius: 25).stroke(self.email != "" ? Color("Gray") : self.color,lineWidth: 2))
                        .font(.custom("Inter-VariableFont_slnt,wght", size: 20))
                        .padding(.bottom,20)
                  
                    HStack{
                        Button(action: {
                            
                            
                        }){
                            Text("Enviar email")
                                .foregroundColor(.white)
                                .padding(.vertical)
                                .frame(width: UIScreen.main.bounds.width - 90)
                               
                        }
                        .background(Color("Amarillo"))
                        .cornerRadius(25)
                        .padding(.top,20)
                        .padding(.horizontal,20)
                        
                    }
                }
                .padding(.top,10)
                .padding(.horizontal,20)
                
              
                .padding(.top,10)
                .padding(.bottom,1)
                .padding(.horizontal,20)
                
            }
            
        }
        
    }
        
    }


struct RecoverPass_Previews: PreviewProvider {
    static var previews: some View {
        RecoverPass()
    }
}

//
//  LoginScreenView.swift
//  FindMyBurger
//
//  Created by Juan jose Morales on 23/1/23.
//

import SwiftUI

struct LoginScreenView: View {
    @State var color = Color.black.opacity(0.7)
    @State var gray = Color("Gray")
    @State var email = ""
    @State var pass = ""
    @State var visible = false
    var body: some View {
        ZStack {
            Color.white.ignoresSafeArea()
            VStack{
                Image("Logo2")
                    .fixedSize()
                Text("LOGIN")
                    .font(.custom("Khand-Semibold", size: 48))
                    .padding(.bottom,10)
                VStack{
                    TextField("Nombre", text: self.$email)
                        .foregroundColor(color)
                        .padding()
                        .background(RoundedRectangle(cornerRadius: 25).stroke(self.email != "" ? Color("Black") : self.gray,lineWidth: 2))
                        .font(.custom("Inter-VariableFont_slnt,wght", size: 20))
                        .padding(.bottom,15)
                    
                }
                
                HStack (spacing: 10){
                    VStack{
                        if self.visible{
                            TextField("Contraseña", text: self.$pass)
                               
                        }else{
                            SecureField("Contraseña", text: self.$pass)
                                .foregroundColor(color)
                                .font(.custom("Inter-VariableFont_slnt,wght", size: 20))
                        }
                            
                        
                    }
                    Button(action: {
                        
                    }) {
                        Image(systemName: self.visible ? "eye.slash.fill" : "eye.fill")
                            .foregroundColor(self.color)
                    }
                    
                }
                .padding()
                .background(RoundedRectangle(cornerRadius: 25).stroke(self.email != "" ? Color("Black") : self.gray,lineWidth: 2))
                .padding(.top, 30)
                
                HStack{
                    Spacer()
                    Button(action: {
                        
                    }){
                        Text("Has olvidado tu contraseña?")
                            .fontWeight(.bold)
                            .foregroundColor(color)
                      
                    }
                    
                }
                .padding(.leading,10)
                .padding(.top ,30)
                HStack{
                    Button(action: {
                        
                        
                    }){
                        Text("Iniciar Sesion")
                            .foregroundColor(.white)
                            .padding(.vertical)
                            .frame(width: UIScreen.main.bounds.width - 90)
                        
                    }
                    .background(Color("Verde"))
                    .cornerRadius(25)
                    .padding(.top,20)
                    
                }
                HStack{
                    Spacer()
                    Button(action: {
                        
                        
                    }){
                        Text("Iniciar Sesion con Google")
                            .foregroundColor(.white)
                            .padding(.vertical)
                            
                            .frame(width: UIScreen.main.bounds.width - 90)
                        
                        
                    }
                    .background(Color("Gray"))
                    .cornerRadius(25)
                    .padding(.top,20)
                    .padding(.horizontal,20)
                  
            
                    }
                HStack{
                    Spacer()
                    
                    Button(action: {
                        
                    }){
                        Text("Aun no tienes una cuenta? ")
                            .padding(.top, 25)
                            .foregroundColor(.black)
                            
                        
                        
                        Text("Registrate")
                            .fontWeight(.bold)
                            .foregroundColor(Color("Verde"))
                            .padding(.top, 25)
                            .padding(.horizontal,2)
                            
                        
                    }
                }
                .padding(.horizontal,20)
                }
                
            }
            .padding(.horizontal, 25)
        }
            
        }
    


 

struct LoginScreenView_Previews: PreviewProvider {
    static var previews: some View {
        LoginScreenView()
    }
}

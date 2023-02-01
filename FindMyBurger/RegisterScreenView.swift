//
//  RegisterScreenView.swift
//  FindMyBurger
//
//  Created by Juan jose Morales on 23/1/23.
//

import SwiftUI

struct RegisterScreenView: View {
    
    @State var color = Color.black.opacity(0.7)
    @State var gray = Color("Gray")
    @State var email = ""
    @State var name = ""
    @State var pass = ""
    @State var pass2 = ""
    @State var visible = false
    var body: some View{
        
        ZStack {
            Color.white.ignoresSafeArea()
            VStack{
                
                Image("Logo2")
                    .fixedSize()
                Text("Registro")
                    .font(.custom("Khand-Semibold", size: 48))
                    .padding(.bottom,10)
                    
                
                VStack{
                    TextField("Email", text: self.$email)
                        .foregroundColor(color)
                        .padding()
                        .background(RoundedRectangle(cornerRadius: 25).stroke(self.email != "" ? Color("Black") : self.gray,lineWidth: 2))
                        .font(.custom("Inter-VariableFont_slnt,wght", size: 20))
                        
                    Spacer()
                    TextField("Nombre", text: self.$name)
                        .foregroundColor(color)
                        .padding()
                        .background(RoundedRectangle(cornerRadius: 25).stroke(self.email != "" ? Color("Black") : self.gray,lineWidth: 2))
                        .font(.custom("Inter-VariableFont_slnt,wght", size: 20))
                        .padding(.bottom,20)
                        .padding(.top,20)
                }
                
                HStack (spacing: 10){
                    VStack{
                            SecureField("Contraseña", text: self.$pass)
                                .foregroundColor(color)
                                .font(.custom("Inter-VariableFont_slnt,wght", size: 20))
                    }
                }
                .padding()
                .background(RoundedRectangle(cornerRadius: 25).stroke(self.email != "" ? Color("Black") : self.gray,lineWidth: 2))
                .padding(.top, 20)
                .padding(.bottom,30)
                HStack (spacing: 10){
                    VStack{
                        
                            SecureField("Repetir contraseña", text: self.$pass2)
                                .foregroundColor(color)
                                .font(.custom("Inter-VariableFont_slnt,wght", size: 20))
                    }
 
                }
                .padding()
                .background(RoundedRectangle(cornerRadius: 25).stroke(self.email != "" ? Color("Black") : self.gray,lineWidth: 2))
                .padding(.top, 20)
                .padding(.bottom,30)

                HStack{
                    
                    Button(action: {
                        
                        
                    }){
                        
                        Text("Registrarse")
                            .foregroundColor(.white)
                            .padding(.vertical)
                            .frame(width: UIScreen.main.bounds.width - 90)
                        
                    }
                    .background(Color("Verde"))
                    .cornerRadius(25)
                    .padding(.top,20)
                    .padding(.bottom,20)
                }
             
                HStack{
                    Spacer()
                    
                    Button(action: {
                        
                    }){
                        Text("Ya tienes cuenta? ")
                            .padding(.top, 10)
                            .foregroundColor(.black)
                            
                        
                        
                        Text("Inicia Sesion")
                            .fontWeight(.bold)
                            .foregroundColor(Color("Verde"))
                            .padding(.top, 10)
                            .padding(.horizontal,15)
                    }
                }
                
                .padding(.horizontal,20)
                }
                
            }
        
            .padding(.horizontal, 25)
        }
    
        }
        
struct RegisterScreenView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterScreenView()
    }
}

//
//  LoginScreenView.swift
//  FindMyBurger
//
//  Created by Juan jose Morales on 23/1/23.
//

import SwiftUI

struct LoginScreenView: View {
    @State var email = ""
    @State var pass = ""
    @State var visible = false
    
    var body: some View {
        ZStack {
            BackgroundColorView()
            
            VStack(spacing: 0){
                Image("Logo2")
                    .resizable()
                    .frame(width: 115, height: 90)
                    .padding(.bottom, 5)
            
                Text("LOGIN")
                    .font(.custom("Khand-Semibold", size: 48))
                    .padding(.bottom, 15)
                
                
                TextField("Nombre", text: self.$email)
                    .font(.custom("Inter-VariableFont_slnt,wght", size: 20))
                    .foregroundColor(placeholederColor)
                    .frame(height: 55)
                    .padding(.horizontal, 18)
                    .background(RoundedRectangle(cornerRadius: 25).stroke(self.email != "" ? Color("Black") : strokeLineTF, lineWidth: 2))
                    .padding(.bottom, 15)
                
                
                Group {
                    if self.visible{
                        TextField("Contraseña", text: self.$pass)
                        
                    }else{
                        SecureField("Contraseña", text: self.$pass)
                            .foregroundColor(placeholederColor)
                            .font(.custom("Inter-VariableFont_slnt,wght", size: 20))
                            .overlay(alignment: .trailing) {
                                Button(action: {
                                    // TODO: - Eye visible action
                                }, label: {
                                    Image(systemName: self.visible ? "eye.slash.fill" : "eye.fill")
                                        .foregroundColor(placeholederColor)
                                })
                            }
                            
                        
                        
                    }
                }
                .font(.custom("Inter-VariableFont_slnt,wght", size: 20))
                .foregroundColor(placeholederColor)
                .frame(height: 55)
                .padding(.horizontal, 18)
                .background(RoundedRectangle(cornerRadius: 25).stroke(self.email != "" ? Color("Black") : strokeLineTF, lineWidth: 2))
                .padding(.bottom, 15)

                HStack{
                    Button(action: {
                        // TODO: -
                    }){
                        Text("Has olvidado tu contraseña?")
                            .fontWeight(.bold)
                            .foregroundColor(placeholederColor)
                    }
                    
                    Spacer()
                }
                .padding(.horizontal, 18)
                .padding(.bottom, 45)
                
                
                Button {
                    // TODO: - Login
                } label: {
                    HStack {
                        Text("Iniciar Sesion")
                            .foregroundColor(.white)
                            .padding(.vertical)
                    }
                    .padding(.horizontal, 15)
                }
                .frame(height: 50)
                .frame(maxWidth: .infinity)
                .background(Color("Amarillo"))
                .cornerRadius(25)
                .padding(.bottom, 10)
                
                
                Button {
                    // TODO: - Google Login
                } label: {
                    HStack {
                        Image("google")
                            .resizable()
                            .frame(width: 24, height: 24)
                        
                        Spacer()
                        
                        Text("Iniciar Sesion con Google")
                            .foregroundColor(.white)
                        Spacer()
                    }
                    .padding(.horizontal, 15)
                }
                .frame(height: 50)
                .background(Color("Gray"))
                .cornerRadius(25)
                .padding(.bottom, 25)

                Button(action: {
                    
                }){
                    HStack {
                        Text("Aun no tienes una cuenta? ")
                            .foregroundColor(.black)
                        
                        Text("Registrate")
                            .fontWeight(.bold)
                            .foregroundColor(Color("Amarillo"))
                            .padding(.horizontal, 2)
                    }
                }
            }
            
        }
        .padding(.horizontal, 25)
    }
    
    // MARK: - Accessory Views
    
    var placeholederColor: Color {
        Color.black.opacity(0.7)
    }
    
    var strokeLineTF: Color {
        Color("Gray")
    }
}





struct LoginScreenView_Previews: PreviewProvider {
    static var previews: some View {
        LoginScreenView()
    }
}

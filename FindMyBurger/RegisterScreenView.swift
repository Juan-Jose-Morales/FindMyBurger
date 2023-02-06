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
    @State private var shouldShowLogin: Bool = false
    @State private var shouldShowAgenda: Bool = false
    @State private var shouldShowError: Bool = false
    @State var textalert = ""
    var body: some View{
        
        ZStack {
            Color.white.ignoresSafeArea()
            VStack{
                Logo2()
                Text("Registro")
                    .font(.custom("Khand-Semibold", size: 48))
                    .padding(.bottom,10)
                    
                
                VStack{
                    TextField("Email", text: self.$email)
                        .foregroundColor(color)
                        .padding()
                        .background(RoundedRectangle(cornerRadius: 25).stroke(self.email != "" ? Color("Black") : self.gray,lineWidth: 2))
                        .font(.custom("Inter-VariableFont_slnt,wght", size: 20))
                        
                    
                    TextField("Nombre", text: self.$name)
                        .foregroundColor(color)
                        .padding()
                        .background(RoundedRectangle(cornerRadius: 25).stroke(self.email != "" ? Color("Black") : self.gray,lineWidth: 2))
                        .font(.custom("Inter-VariableFont_slnt,wght", size: 20))
                        .padding(.bottom,20)
                        .padding(.top,40)
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
                .padding(.bottom,20)
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

               
                    
                    Button(action: {
                        
                        
                    }){
                        
                        Text("Registrarse")
                            .foregroundColor(.white)
                            .padding(.vertical)
                            .frame(width: UIScreen.main.bounds.width - 90)
                        
                    }
                    .padding(.horizontal, 25)
                    .background(Color("Amarillo"))
                    .cornerRadius(25)
                    .padding(.top,20)
                    .padding(.bottom,20)
                
             
                HStack{
                    Spacer()
                    //Boton para redirijir a iniciar sesion
                    Button(action: {
                        shouldShowLogin = true
                    }){
                        Text("Ya tienes una cuenta? ")
                            .padding(.top, 25)
                            .foregroundColor(.indigo)
                        
                        
                        Text("Inicia Sesion")
                            .fontWeight(.bold)
                            .foregroundColor(.indigo)
                            .padding(.top, 25)
                        
                    }.background(
                        NavigationLink(destination: LoginScreenView(), isActive: $shouldShowLogin) {
                            EmptyView()
                        }
                    )
                }
                
                }
            .padding(.horizontal, 25)
            }
        
           
        }
    
        }
        
struct RegisterScreenView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterScreenView()
    }
}

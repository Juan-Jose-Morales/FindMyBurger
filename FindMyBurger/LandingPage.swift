//
//  LandingPage.swift
//  FindMyBurger
//
//  Created by Juan jose Morales on 30/1/23.
//

import SwiftUI

struct LandingPage: View {
    @State var searchText = ""
    @Binding var selectedCategory: Category
    
    var body: some View {
        
        ZStack{
            
            BackgroundColorView()
            VStack{
                
                HStack{
                    
                    Button(action: {} , label: {
                        
                        Image("Logo2")
                            .resizable()
                            .aspectRatio( contentMode: .fit)
                            .frame(width: 40,height: 40)
                            .padding(6)
                        
                            .cornerRadius(8)
                        
                    })
                    
                    Spacer()
                    Button(action: {} , label: {
                        
                        Image("configuracion")
                            .resizable()
                            .aspectRatio( contentMode: .fit)
                            .frame(width: 20,height: 20)
                            .padding(10)
                            .cornerRadius(8)
                    })
                    
                    
                }
                .padding()
                
                
                HStack{
                    TextField("Buscar restaurantes",text: $searchText )
                        .padding(.leading , 24)
                        .padding()
                        .background(Color("Gray"))
                        .cornerRadius(10)
                    
                }
                .padding(.horizontal)
                .overlay(
                    HStack {
                        Image(systemName: "magnifyingglass")
                        Spacer()
                        Image("filtro")
                            .resizable()
                            .frame(width: 20, height: 20)
                    }.padding(.horizontal, 32)
                        .foregroundColor(.gray)
                    
                )
                
                
                
                ScrollView(.vertical,showsIndicators: false,content: {
                    Spacer()
                    VStack(alignment: .leading , spacing: 15){
                        
                        
                        
                        
                        Text("Categorias")
                            .font(.title)
                            .fontWeight(.bold)
                            .padding(.horizontal)
                            .padding(.bottom)
                        
                        ScrollView(.horizontal, showsIndicators:  false, content: {
                            
                            HStack(spacing: 15){
                                
                                ForEach(categories){ Category in
                                    
                                    HStack(spacing: 12){
                                        
                                        Image(Category.image)
                                            .resizable()
                                        
                                            .aspectRatio( contentMode: .fit)
                                            .frame(width: 18, height: 18)
                                            .padding(6)
                                            .background(selectedCategory.id == Category.id ? Color.white : Color.clear)
                                            .clipShape(Circle())
                                        
                                        Text(Category.title)
                                            .fontWeight(.bold)
                                            .foregroundColor(selectedCategory.id == Category.id ? .white: .black)
                                    }
                                    .padding(.vertical,12)
                                    .padding(.horizontal)
                                    .background(selectedCategory.id == Category.id ? Color("Naranja") : Color.gray.opacity(0.06))
                                    .clipShape(Capsule())
                                    .shadow(color: Color.black.opacity(0.05) , radius: 5, x: 5, y: 5)
                                    .onTapGesture {
                                        withAnimation(.spring()){
                                            selectedCategory = Category
                                        }
                                    }
                                }
                            }
                            .padding(.horizontal)
                            
                        })
                        
                        
                        HStack{
                            
                            Text("Recomendado")
                                .font(.title2)
                                .fontWeight(.bold)
                                .padding()
                            
                            Spacer()
                            
                            Button(action: {}, label:{
                                
                                HStack( spacing: 6){
                                    
                                    Text("Ver todo")
                                        .font(.footnote)
                                        .fontWeight(.semibold)
                                        .foregroundColor(Color("Naranja"))
                                    
                                    
                                    Image(systemName: "chevron.right")
                                        .font(.footnote)
                                        .foregroundColor(.white)
                                        .padding(.vertical, 4)
                                        .padding(.horizontal, 6)
                                        .background(Color("Naranja"))
                                        .cornerRadius(5)
                                    
                                }
                                
                            })
                        }
                        .padding()
                        
                        
                        ScrollView(.horizontal, showsIndicators: false, content: {
                            
                            HStack (spacing: 25){
                                
                                ForEach(recomendado_items){ item in
                                    
                                    Recomendado_items_view(item: item)
                                }
                            }
                            
                            .padding(.leading)
                            
                            
                        })
                    }
                    .padding(.vertical)
                })
                
            }
            .background(Color.black.opacity(0.03).ignoresSafeArea())
        }
    }
}
struct LandingPage_Previews: PreviewProvider {
    static var previews: some View {
        LandingPage(selectedCategory: .constant(Category(image: "Ternera", title: "Burguer")))
    }
}

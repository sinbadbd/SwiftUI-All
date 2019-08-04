//
//  ProfileView.swift
//  SwiftUI-Facebook
//
//  Created by Zahedul Alam on 1/8/19.
//  Copyright © 2019 devsloop. All rights reserved.
//

import SwiftUI

struct UserProfileView: View {
    var body: some View {
        
        NavigationView{
            VStack{
                CoverPicture()
                    .scaledToFill()
                    .frame(height: 200)
                    .clipped().cornerRadius(10)
                    .padding([.leading, .trailing], 15)
                
                UserProfilePic()
                    .offset(y: -130)
                    .padding(.bottom, -130)
                
                ZStack{
                    // MARK: TODO : NEED TO FIX
                    Circle().frame(width: 40, height: 40).offset(x: 50, y: -50).foregroundColor(.init(red: 240/255, green: 240/255, blue: 240/255))
                    Circle().stroke(Color.white, lineWidth: 2).frame(width: 40, height: 40).offset(x: 50, y: -50)
                    ZStack{
                        Button(action: {
                            print("hi--")
                        }) {
                            Image(systemName: "camera")
                        }.offset(x: 50, y: -50).foregroundColor(.black)
                    }
                }
                
                
                HStack(alignment: .top){
                    Text("Spider man")
                        .font(.system(size: 34))
                        .foregroundColor(.black).padding(.top, -40)
                    Text("(Peter Parker)").font(.system(size: 24)).padding(.top, -32)
                }
                Text("Spider-Man is a fictional superhero created by writer-editor Stan Lee and writer-artist Steve Ditko.").font(.system(size: 20))
                    .lineLimit(5)
                    .foregroundColor(.gray)
                    .padding([.leading, .trailing],  10)
                
                HStack( spacing: 30){
                    Button(action: {
                        
                    }) {
                        
                        Circle().frame(width: 60, height: 60).foregroundColor(Color.init(red: 233/255, green: 242/255, blue: 254/255))
                        ZStack{
                            Image(systemName: "plus").offset(y: -45)
                        }
                        Text("Add Story").padding(.top, -25).font(.system(size: 18))
                        
                    }
                    
                    Button(action: {
                        
                    }) {
                        Circle().frame(width: 60, height: 60).foregroundColor(.init(red: 235/255, green: 237/255, blue: 239/255))
                        ZStack{
                            Image(systemName: "eye").offset(y: -45)
                        }
                        Text("View as").padding(.top, -25).foregroundColor(.black).font(.system(size: 14))
                    }
                    Button(action: {
                        
                    }) {
                        Circle().frame(width: 60, height: 60).foregroundColor(.init(red: 235/255, green: 237/255, blue: 239/255))
                        ZStack{
                            Image(systemName: "eye").offset(y: -45)
                        }
                        Text("Edit Profile").padding(.top, -25).foregroundColor(.black).font(.system(size: 14))
                    }
                    Button(action: {
                        
                    }) {
                        Circle().frame(width: 60, height: 60).foregroundColor(.init(red: 235/255, green: 237/255, blue: 239/255))
                        ZStack{
                            //Text("•••").offset(y: -45)
                            Image(systemName: "eye").offset(y: -45)
                        }
                        Text("Add Story").padding(.top, -25).foregroundColor(.black).font(.system(size: 14))
                        
                    }
                    
                }.padding(.top, 30)
                
                
                VStack(alignment: .leading){
                    HStack{
                        Image(systemName: "eye")
                        Text("Fllowed bt ")
                        Text("105 People").font(.headline)
                    }
                    Spacer()
                }
                
                
                
                Spacer()
            }
            .navigationBarTitle("Profile")
        }
    }
}

#if DEBUG
struct UserProfileView_Previews: PreviewProvider {
    static var previews: some View {
        UserProfileView()
    }
}
#endif

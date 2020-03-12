//
//  ContentView.swift
//  CustomCircularTabBarItemUsingSwiftUI
//
//  Created by Ramill Ibragimov on 12.03.2020.
//  Copyright © 2020 Ramill Ibragimov. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State private var index = 0
    
    var body: some View {
        VStack(spacing: 0) {
            ZStack {
                if self.index == 0 {
                    Color.pink
                } else if self.index == 1 {
                    Color.green
                } else if self.index == 2 {
                    Color.red
                } else if self.index == 3 {
                    Color.purple
                }
            }.edgesIgnoringSafeArea(.top)
            CircleTab(index: self.$index)
        }.background(Color.black.opacity(0.05).edgesIgnoringSafeArea(.top))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct CircleTab: View {
    @Binding var index: Int
    
    var body: some View {
        HStack {
            Button(action: {
                self.index = 0
            }) {
                VStack {
                    if self.index != 0 {
                        Image(systemName: "house")
                            .foregroundColor(Color.black.opacity(0.2))
                    } else {
                        Image(systemName: "house")
                            .foregroundColor(Color.white)
                            .padding()
                            .background(Color.orange)
                            .clipShape(Circle())
                            .offset(y: -20)
                            .padding(.bottom, -20)
                        
                        Text("Home")
                            .foregroundColor(Color.black.opacity(0.7))
                    }
                }
            }
            Spacer(minLength: 15)
            Button(action: {
                self.index = 1
            }) {
                VStack {
                    if self.index != 1 {
                        Image(systemName: "magnifyingglass")
                            .foregroundColor(Color.black.opacity(0.2))
                    } else {
                        Image(systemName: "magnifyingglass")
                            .foregroundColor(Color.white)
                            .padding()
                            .background(Color.orange)
                            .clipShape(Circle())
                            .offset(y: -20)
                            .padding(.bottom, -20)
                        
                        Text("Search")
                            .foregroundColor(Color.black.opacity(0.7))
                    }
                }
            }
            Spacer(minLength: 15)
            Button(action: {
                self.index = 2
            }) {
                VStack {
                    if self.index != 2 {
                        Image(systemName: "heart")
                            .foregroundColor(Color.black.opacity(0.2))
                    } else {
                        Image(systemName: "heart")
                            .foregroundColor(Color.white)
                            .padding()
                            .background(Color.orange)
                            .clipShape(Circle())
                            .offset(y: -20)
                            .padding(.bottom, -20)
                        
                        Text("Likes")
                            .foregroundColor(Color.black.opacity(0.7))
                    }
                }
            }
            Spacer(minLength: 15)
            Button(action: {
                self.index = 3
            }) {
                VStack {
                    if self.index != 3 {
                        Image(systemName: "person")
                            .foregroundColor(Color.black.opacity(0.2))
                    } else {
                        Image(systemName: "person")
                            .foregroundColor(Color.white)
                            .padding()
                            .background(Color.orange)
                            .clipShape(Circle())
                            .offset(y: -20)
                            .padding(.bottom, -20)
                        
                        Text("Account")
                            .foregroundColor(Color.black.opacity(0.7))
                    }
                }
            }
        }.padding(.vertical, -10)
        .padding(.horizontal, 25)
        .background(Color.white)
        .animation(.spring())
    }
}

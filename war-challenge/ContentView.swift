//
//  ContentView.swift
//  war-challenge
//
//  Created by Tayami Rai on 06/09/2023.
//

import SwiftUI

struct ContentView: View {
    
    @State var player1Card = "card2"
    @State var player2Card = "card5"
    @State var playerScore = 0
    @State var cpuScore = 0

    
    var body: some View {
        
        ZStack{
            
            Image("background")
                .resizable()
                .ignoresSafeArea()

            VStack{
                
                Image("logo")
                    .padding(.top, 30)
                
                Spacer()
                
                HStack{
                    Spacer()
                    Image(player1Card)
                    Spacer()
                    Image(player2Card)
                    Spacer()

                }
                
                Spacer()
                
                Button {
                    
                    var playerRandomInt = Int.random(in: 2...14)
                    var cpuRandomInt = Int.random(in: 2...14)

                    player1Card = "card" + String(playerRandomInt)
                    player2Card = "card" + String(cpuRandomInt)
                    
                    if (playerRandomInt > cpuRandomInt){
                        playerScore += 1
                    } else if (cpuRandomInt > playerRandomInt){
                        cpuScore += 1
                    } else {
                        playerScore += 1
                        cpuScore += 1
                    }
                    
                } label: {
                    Image("dealbutton")
                }

                
                Spacer()
                
                HStack{
                    Spacer()
                    VStack{
                        Text("Player 1")
                            .font(.headline)
                            .foregroundColor(.white)
                            .padding(.bottom, 5)
                        
                        Text(String(playerScore))
                            .font(.largeTitle)
                            .foregroundColor(.white)
                    }
                    
                    Spacer()

                    
                    VStack{
                        Text("Player 2")
                            .font(.headline)
                            .foregroundColor(.white)
                            .padding(.bottom, 5)
                        
                        Text(String(cpuScore))
                            .font(.largeTitle)
                            .foregroundColor(.white)
                    }
                    Spacer()

                }
                
                Spacer()
            }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

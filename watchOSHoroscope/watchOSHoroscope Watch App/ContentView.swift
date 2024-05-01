//
//  ContentView.swift
//  watchOSHoroscope Watch App
//
//  Created by manvendu pathak  on 28/04/24.
//

import SwiftUI

struct ContentView: View {
    let zodiacSigns: [ZodiacSign] = [
        ZodiacSign(name: "Aries", image: "aries", info: "Aries are passionate, independent, and confident."),
        ZodiacSign(name: "Taurus", image: "taurus", info: "Taurus are reliable, patient, and practical."),
        ZodiacSign(name: "Gemini", image: "gemini", info: "Geminis are curious, adaptable, and sociable."),
        ZodiacSign(name: "Cancer", image: "cancer", info: "Cancers are nurturing, sensitive, and intuitive."),
        ZodiacSign(name: "Leo", image: "leo", info: "Leos are confident, generous, and charismatic."),
        ZodiacSign(name: "Virgo", image: "virgo", info: "Virgos are practical, detail-oriented, and analytical."),
        ZodiacSign(name: "Libra", image: "libra", info: "Libras are diplomatic, charming, and cooperative."),
        ZodiacSign(name: "Scorpio", image: "scorpio", info: "Scorpios are passionate, resourceful, and determined."),
        ZodiacSign(name: "Sagittarius", image: "sagittarius", info: "Sagittarians are adventurous, optimistic, and enthusiastic."),
        ZodiacSign(name: "Capricorn", image: "capricorn", info: "Capricorns are responsible, disciplined, and ambitious."),
        ZodiacSign(name: "Aquarius", image: "aquarius", info: "Aquarians are innovative, humanitarian, and independent."),
        ZodiacSign(name: "Pisces", image: "pisces", info: "Pisces are compassionate, artistic, and intuitive.")
       ]
    
    var body: some View {
        NavigationView{
            VStack{
                HStack{
                    Text("AstroPin")
                        .font(.title3)
                        .bold()
                    Image("images")
                        .resizable()
                        .frame(width:40, height:40)
                }
               
                
                ScrollView{
                    VStack(spacing: 5){
                        ForEach(zodiacSigns, id: \.name){ sign in
                            NavigationLink(destination: ZodiacDetail(zodiacSign: sign)) {
                                TableCell(zodiacSign: sign)
                            }
                        }
                        
                    }
                }
                .padding()
            }
            
            }
           
        
       
    }
    
    
    
   
}

#Preview {
    ContentView()
}

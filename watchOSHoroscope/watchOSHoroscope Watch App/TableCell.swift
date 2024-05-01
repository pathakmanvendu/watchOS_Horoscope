//
//  TableCell.swift
//  watchOSHoroscope Watch App
//
//  Created by manvendu pathak  on 01/05/24.
//

import SwiftUI

struct TableCell: View {
    let zodiacSign: ZodiacSign
    var body: some View {
        VStack{
            HStack(spacing: 5) {
                Image(zodiacSign.image)
                    .resizable()
                    .frame(width:50,height:50)
                    .cornerRadius(20)
                VStack(alignment: .leading){
                    Text(zodiacSign.name)
                        .font(.system(size: 7))
                        .bold()
                        .foregroundStyle(.white)
                    Text(zodiacSign.info)
                        .font(.system(size: 6))
                        .lineLimit(8)
                        .multilineTextAlignment(.leading)
                }
                
                NavigationLink(destination: ZodiacDetail(zodiacSign: zodiacSign)){
                   
                }
                .clipShape(.circle)
                .frame(width:30, height:30)
                .padding()
                
                
            }
            .padding()
        }
        
        
        
        
        
        .cornerRadius(10)
        .frame(width: 180, height: 70)
        
    }
}


#Preview {
    TableCell(zodiacSign: ZodiacSign(name: "Aries", image: "aries", info: "Aries are passionate, independent, and confident."))
}

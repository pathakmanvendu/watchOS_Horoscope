//
//  ZodiacDetail.swift
//  watchOSHoroscope Watch App
//
//  Created by manvendu pathak  on 01/05/24.
//

import SwiftUI

struct ZodiacDetail: View {
    @State private var zodiacData: Zodiac = Zodiac(data: DataClass(date: "", horoscope_data: ""), status: 0, success: false)
    let zodiacSign: ZodiacSign
    var body: some View {
        VStack{
            ScrollView(.vertical){
                VStack(spacing: 5){
                    Text(zodiacData.data.date)
                    
                    Image(zodiacSign.image)
                        .resizable()
                        .frame(width: 60, height: 60)
                        .cornerRadius(20)
                    
                    
                    Text(zodiacData.data.horoscope_data)
                        .font(.footnote)
                        .bold()
                        .multilineTextAlignment(.center)
                }
              
            }
            
        }
       
        .onAppear{
            fetch()
        }
    }
   
    
    func fetch() {
        guard let url = URL(string: "https://horoscope-app-api.vercel.app/api/v1/get-horoscope/daily?sign=\(zodiacSign.name)&day=TODAY") else {return}
        
        URLSession.shared.dataTask(with: url) { data, response, error in
            guard let data = data else { return }
            do {
                let datas = try JSONDecoder().decode(Zodiac.self, from: data)
                DispatchQueue.main.async {
                    self.zodiacData = datas
                    print(data)
                }
            } catch{
                print(error)
            }
        }.resume()
    }
}


#Preview {
    ZodiacDetail(zodiacSign: ZodiacSign(name: "Aries", image: "aries", info: "Aries are passionate, independent, and confident."))
}

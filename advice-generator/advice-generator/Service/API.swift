//
//  API.swift
//  advice-generator
//
//  Created by Gabriel Santiago on 22/08/22.
//

import Foundation

struct API {
    
    static func getAdvice () async -> AdviceResponse? {
        
        guard let url = URL(string: "https://api.adviceslip.com/advice") else {
            return nil
        }
        
        var urlRequest = URLRequest(url: url)
        urlRequest.httpMethod = "GET"
        
        do {
            let (data, _) = try await URLSession.shared.data(for: urlRequest)
            let dataDecoded = try JSONDecoder().decode(AdviceResponse.self, from: data)
            return dataDecoded
            
            
        } catch{
            print (error)
            return nil // gambiarra
        }
        
    }
}

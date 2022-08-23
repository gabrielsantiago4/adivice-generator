//
//  AdviceView.swift
//  advice-generator
//
//  Created by Gabriel Santiago on 22/08/22.
//

import SwiftUI

struct AdviceView: View {
    
    @State var slip: Slip?
    
    var body: some View {
        VStack {
            
            if let slip = slip {
                Text(slip.advice)
            } else {
                ProgressView()
            }
        }
        .task {
            let response = await API.getAdvice()
            slip = response?.slip
        }
    }
}

struct AdviceView_Previews: PreviewProvider {
    static var previews: some View {
        AdviceView()
    }
}

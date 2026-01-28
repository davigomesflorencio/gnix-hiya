//
//  ContentView.swift
//  gnix-hiya
//
//  Created by Davi Gomes Florencio on 27/01/26.
//

import SwiftUI
import FoundationModels

struct ContentView: View {
    private var largeLanguageModel = SystemLanguageModel.default
    private var session = LanguageModelSession()
    
    @State private var response:String = ""
    @State private var isLoading:Bool = false
    
    var body: some View {
        VStack {
            Spacer()
            
            switch largeLanguageModel.availability {
            case .available:
                if response.isEmpty{
                    if isLoading {
                        ProgressView()
                    }else{
                        Text("Tap the button to get a fun response")
                            .foregroundStyle(.tertiary)
                            .multilineTextAlignment(.center)
                            .font(.title)
                    }
                }else{
                    Text(response)
                        .multilineTextAlignment(.center)
                        .font(.largeTitle)
                        .bold()
                }
            case .unavailable(.deviceNotEligible):
                Text("Large Language Model is not available, device not eligible!")
            case .unavailable(.appleIntelligenceNotEnabled):
                Text("Please enable Apple Intelligence")
            case .unavailable(.modelNotReady):
                Text("IA Model not Ready")
            case .unavailable(_):
                Text("There IA feature is not available")
            }
            
            Spacer()
            Button{
                Task {
                    isLoading = true
                    defer { isLoading = false }
                    let prompt = "Say hi in a fun way."
                    do {
                        let replay = try await session.respond(to: prompt)
                        response = replay.content
                    }catch {
                        response = "Failed to get response: \(error.localizedDescription) "
                    }
                }
            }label:{
                Text("Welcome")
                    .font(.largeTitle)
                    .padding()
            }
            .buttonStyle(.borderedProminent)
            .buttonSizing(.flexible)
            .glassEffect(.regular.interactive())
        }
        .padding()
        .tint(.purple)
    }
}
    
#Preview {
    ContentView()
}

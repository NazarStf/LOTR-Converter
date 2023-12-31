//
//  ExchangeInfo.swift
//  LOTR Converter
//
//  Created by NazarStf on 14.07.2023.
//

import SwiftUI

struct ExchangeInfo: View {
	
	// MARK: - Environment Variable for Dismissing the View
	@Environment(\.dismiss) var dismiss
	
	// MARK: - Main User Interface
	var body: some View {
		ZStack {
			// The background image
			Image("parchment")
				.resizable()
				.ignoresSafeArea()
				.background(.brown)

			VStack {
				// Display the title for the information page
				Text("Exchange Rates")
					.customFont(name: "Ringbearer", style: .largeTitle)
					.padding(5)

				// Display the introduction text for the information page
				Text("Here at the Prancing Pony, we are happy to offer you a place where you can exchange all the known currencies in the entire world except one. We used to take Brandy Bucks, but after finding out that it was a person instead of a piece of paper, we realized it had no value to us. Below is a simple guide to our currency exchange rates:")
					.customFont(name: "Ringbearer", style: .title2)
					.padding()
				
				// Display the exchange rates
				ExchangeRate(leftImage: "goldpiece", text: "1 Gold Piece = 4 Gold Pennies", rightImage: "goldpenny")
				ExchangeRate(leftImage: "goldpenny", text: "1 Gold Penny = 4 Silver Pieces", rightImage: "silverpiece")
				ExchangeRate(leftImage: "silverpiece", text: "1 Silver Piece = 4 Silver Pennies", rightImage: "silverpenny")
				ExchangeRate(leftImage: "silverpenny", text: "1 Silver Penny = 100 Copper Pennies", rightImage: "copperpenny")

				// Display the "Done" button which dismisses the view when tapped
				Button("Done") {
					dismiss()
				}
				.customFont(name: "Ringbearer", style: .largeTitle)
				.padding(10)
				.foregroundColor(.white)
				.background(.brown)
				.cornerRadius(20)
			}
			.foregroundColor(.black)
		}
	}
}


struct ExchangeInfo_Previews: PreviewProvider {
	static var previews: some View {
		ExchangeInfo()
	}
}

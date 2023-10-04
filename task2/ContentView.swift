//
//  ContentView.swift
//  task2
//
//  Created by Nikolay Volnikov on 01.10.2023.
//

import SwiftUI

struct ContentView: View {
    @State private var frameV: CGFloat = 100

    let label: String = "Марафон по SwiftUI <<Отцовский пинок>>"

    var splicedLabel: [String] {
        return label.split(separator: " ").map(String.init)
    }

    var body: some View {
        VStack {
            VStack(alignment: .leading) {

                    Text(splicedLabel[0] + " ")
                    .font(.headline)
                        .foregroundColor(.red)
                    +
                    Text(splicedLabel[1] + " "  + splicedLabel[2] + "  ")
                        .font(.body)
                        .foregroundColor(.gray)
                    +
                    Text(splicedLabel[3] + "  " + splicedLabel[4])
                    .font(.title2)
                    .foregroundColor(.blue)
            }
            .frame(width: $frameV.wrappedValue, height: 200, alignment: .center)
            .truncationMode(.tail)
            .padding(.top, 16)
            .padding(.bottom, 16)
            .padding(.leading, 16)
            .padding(.trailing, 16)
            .border(.red)

            Slider(value: $frameV, in: 100...300)
        }
        .padding(.leading, 16)
        .padding(.trailing, 16)

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

//
//  DatePickerOne.swift
//  Huge Database
//
//  Created by Programmer on 6/14/21.
//

import SwiftUI

struct DatePickerOne: View {
    @State var selectedDate = Date()
    let startDate = Calendar.current.date(from: DateComponents(year: 2010)) ?? Date()
    let endDate = Calendar.current.date(from: DateComponents(year: 2012, month: 6)) ?? Date()
    var dateFormatter: DateFormatter {
    let dateFormatter = DateFormatter()
        dateFormatter.timeStyle = .full
        dateFormatter.dateStyle = .full
        
        dateFormatter.locale = Locale(identifier: "ru")
    return dateFormatter
    }
    var selectedDateString: String { dateFormatter.string(from: selectedDate) }
    
    var body: some View {
        VStack(spacing: 25){
            Text("Selected date and time:")
            Text(selectedDateString)
                .foregroundColor(.yellow)
                .padding(10)
                .background(Color.black)
                .cornerRadius(20)
                .shadow(color: .yellow, radius: 13, x: 5, y: 5)
                .overlay(RoundedRectangle(cornerRadius: 20).stroke(lineWidth: 9).blur(radius: 2))
            ZStack {
                RoundedRectangle(cornerRadius: 15)
                    .fill(Color.black.opacity(0.1))
                    
                DatePicker("Date:", selection: $selectedDate, in: startDate...endDate)
                    .datePickerStyle(CompactDatePickerStyle())
                    .accentColor(.red)
                    .padding(7)
               
            }.frame(width: UIScreen.main.bounds.width - 8, height: 50)
          
            
                
        }
       
    }
}

struct DatePickerOne_Previews: PreviewProvider {
    static var previews: some View {
        DatePickerOne()
    }
}

//


import SwiftUI

struct reservation_summary_view: View {
    @Binding var name: String
    @Binding var date: String
    @Binding var guest: Int
    @Binding var allergyNote: String
    var body: some View {
        VStack(alignment:.leading, spacing: 10){
            Text("Reservations Summary").font(.title)
            Text("Name\(name)")
            Text("Date\(date)")
            Text("Guest #:\(guest)")
            Text ("Allergies: \(allergyNote)")
            
        }
    }
    func formattedDate(date: Date)->String{
        let formatter = DateFormatter()
        formatter.dateStyle = .medium
        formatter.timeStyle = .none
        formatter.timeStyle = .short
        return formatter.string(from: date)
    }
}

//#Preview {
  //  reservation_summary_view()


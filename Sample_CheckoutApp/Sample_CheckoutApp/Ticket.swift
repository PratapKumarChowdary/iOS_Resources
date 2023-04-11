//
//  Ticket.swift
//  Sample_CheckoutApp
//
//  Created by Dhana Sri Kuchi on 4/10/23.
//

import Foundation

struct Ticket {
    var bookingID = ""
    var airlineName = ""
    var airlineImage = ""
    var totalTickets = ""
}


let t1 = Ticket(bookingID:"1234",airlineName: "American Airlines", airlineImage: "American", totalTickets: "5")
let t2 = Ticket(bookingID:"3579",airlineName: "Delta Airlines", airlineImage: "Delta", totalTickets: "10")
let t3 = Ticket(bookingID:"2468",airlineName: "Frontier Airlines", airlineImage: "Frontier", totalTickets: "20")
let t4 = Ticket(bookingID:"9999",airlineName: "Southwest Airlines", airlineImage: "Southwest", totalTickets: "10")
let t5 = Ticket(bookingID:"5555",airlineName: "United Airlines", airlineImage: "United", totalTickets: "15")

var TicketsArray:[Ticket] = [t1,t2,t3,t4,t5]

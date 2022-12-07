

import Foundation



struct Item {
    var id: Int?
    var title : String
    var image : String
    var description: String?
    var isLike: Bool?
    
}


#if DEBUG
extension Item {
    static var sampleData = [
    Item(id: 1,title: "Submit reimbursement report", image: "https://images.pexels.com/photos/6499190/pexels-photo-6499190.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500", description: "Don't forget about taxi receipts"),
        Item(id: 2,title: "Code review", image: "https://vcdn1-dulich.vnecdn.net/2022/09/14/4-1663171508.jpg?w=1200&h=0&q=100&dpr=1&fit=crop&s=S06yaNXNAEw5yuUNPbsJYA", description: "Check tech specs in shared folder"),
        Item(id: 3,title: "Pick up new contacts", image: "https://vcdn1-dulich.vnecdn.net/2022/09/14/4-1663171508.jpg?w=1200&h=0&q=100&dpr=1&fit=crop&s=S06yaNXNAEw5yuUNPbsJYA", description: "Optometrist closes at 6:00PM"),
        Item(id: 4,title: "Add description to retrospective", image: "https://vcdn1-dulich.vnecdn.net/2022/09/14/4-1663171508.jpg?w=1200&h=0&q=100&dpr=1&fit=crop&s=S06yaNXNAEw5yuUNPbsJYA", description: "Collaborate with project manager"),
        Item(id: 5,title: "Interview new project manager candidate", image: "https://vcdn1-dulich.vnecdn.net/2022/09/14/4-1663171508.jpg?w=1200&h=0&q=100&dpr=1&fit=crop&s=S06yaNXNAEw5yuUNPbsJYA", description: "Review portfolio"),
        Item(id: 6,title: "Mock up onboarding experience", image: "https://vcdn1-dulich.vnecdn.net/2022/09/14/4-1663171508.jpg?w=1200&h=0&q=100&dpr=1&fit=crop&s=S06yaNXNAEw5yuUNPbsJYA", description: "Think different"),
        Item(id: 7,title: "Review usage analytics", image: "https://vcdn1-dulich.vnecdn.net/2022/09/14/4-1663171508.jpg?w=1200&h=0&q=100&dpr=1&fit=crop&s=S06yaNXNAEw5yuUNPbsJYA", description: "Discuss trends with management"),
        Item(id: 8,title: "Confirm group reservation", image: "https://vcdn1-dulich.vnecdn.net/2022/09/14/4-1663171508.jpg?w=1200&h=0&q=100&dpr=1&fit=crop&s=S06yaNXNAEw5yuUNPbsJYA", description: "Ask about space heaters"),
        Item(id: 9,title: "Add beta testers to TestFlight", image: "https://vcdn1-dulich.vnecdn.net/2022/09/14/4-1663171508.jpg?w=1200&h=0&q=100&dpr=1&fit=crop&s=S06yaNXNAEw5yuUNPbsJYA",  description: "v0.9 out on Friday")
    ]
}
#endif

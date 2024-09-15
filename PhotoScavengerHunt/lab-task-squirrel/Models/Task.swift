//
//  Task.swift
//  lab-task-squirrel
//
//  Created by Charlie Hieger on 11/15/22.
//

import UIKit
import CoreLocation

class Task {
    let title: String
    let description: String
    var image: UIImage?
    var imageLocation: CLLocation?
    var isComplete: Bool {
        image != nil
    }

    init(title: String, description: String) {
        self.title = title
        self.description = description
    }

    func set(_ image: UIImage, with location: CLLocation) {
        self.image = image
        self.imageLocation = location
    }
}

extension Task {
    static var mockedTasks: [Task] {
        return [
            Task(title: "Harvest Enchanted Blooms at the Market 🌸",
                 description: "Seek out a bouquet that captures the magic of fall. The Urban Vergo floral truck is known for its stunning seasonal arrangements."),
            Task(title: "Adventure Time with Kingsley 🌳",
                 description: "Pack some tasty treats to keep him motivated, but be ready for some cuddle breaks if he decides he’s had enough."),
            Task(title: "Snag a Candle of Serenity 🕯️",
                 description: "Swing by the Ferry Building and check out SOMA Small Batch Goods. Their California Morning candle will fill your space with a blissful, calming aroma."),
            Task(title: "Discover Hidden Gems at the Bookstore 📚",
                 description: "Browse through the local bookstore for unique finds. Look for hidden treasures in the vintage section or new releases that catch your eye."),
            Task(title: "Indulge in a Gourmet Coffee Break ☕",
                 description: "Stop by a local café and treat yourself to a specialty coffee. Try something new and enjoy a moment of relaxation amidst your busy day.")
        ]
    }
}

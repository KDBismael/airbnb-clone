//
//  DevelopperPreview.swift
//  Aibnb clone
//
//  Created by KDB-MacBook on 12/9/24.
//

import Foundation

class DevelopperPreview{
    static var shared = DevelopperPreview()
    
    let listings: [Listing] = [
        Listing(
            id: NSUUID().uuidString,
            owerUid: NSUUID().uuidString,
            ownerName: "Alice Johnson",
            owerImageUrl: "https://example.com/images/user001.jpg",
            numberOfBedrooms: 3,
            numberOfBathrooms: 2,
            numberOfguests: 6,
            numberOfBeds: 4,
            pricePerNight: 120,
            lattitude: 37.7749,
            longitude: -122.4194,
            imageUrls:[
                "image-1",
                "image-2",
                "image-3",
            ],
            address: "123 Market St",
            city: "San Francisco",
            state: "CA",
            title: "Cozy Downtown Apartment",
            rating: 4.8,
            features: [.selfCheckIn, .superHost],
            amenities: [.wifi, .kitchen, .tv, .laundry],
            type: .apartment
        ),
        Listing(
            id: NSUUID().uuidString,
            owerUid: NSUUID().uuidString,
            ownerName: "Bob Smith",
            owerImageUrl: "https://example.com/images/user002.jpg",
            numberOfBedrooms: 4,
            numberOfBathrooms: 3,
            numberOfguests: 8,
            numberOfBeds: 5,
            pricePerNight: 250,
            lattitude: 34.0522,
            longitude: -118.2437,
            imageUrls:[
                "image-2",
                "image-1",
                "image-3",
            ],
            address: "456 Sunset Blvd",
            city: "Los Angeles",
            state: "CA",
            title: "Luxury Villa with Pool",
            rating: 4.9,
            features: [.superHost],
            amenities: [.pool, .wifi, .balcony, .kitchen],
            type: .villa
        ),
        Listing(
            id: NSUUID().uuidString,
            owerUid: NSUUID().uuidString,
            ownerName: "Clara Adams",
            owerImageUrl: "https://example.com/images/user003.jpg",
            numberOfBedrooms: 2,
            numberOfBathrooms: 1,
            numberOfguests: 4,
            numberOfBeds: 2,
            pricePerNight: 80,
            lattitude: 40.7128,
            longitude: -74.0060,
            imageUrls:[
                "image-3",
                "image-2",
                "image-1",
            ],
            address: "789 Broadway",
            city: "New York",
            state: "NY",
            title: "Modern City Apartment",
            rating: 4.5,
            features: [.selfCheckIn],
            amenities: [.wifi, .tv, .office],
            type: .apartment
        ),
        Listing(
            id: NSUUID().uuidString,
            owerUid: NSUUID().uuidString,
            ownerName: "David Lee",
            owerImageUrl: "https://example.com/images/user004.jpg",
            numberOfBedrooms: 5,
            numberOfBathrooms: 4,
            numberOfguests: 10,
            numberOfBeds: 6,
            pricePerNight: 300,
            lattitude: 25.7617,
            longitude: -80.1918,
            imageUrls:[
                "image-1",
                "image-2",
                "image-3",
            ],
            address: "101 Ocean Drive",
            city: "Miami",
            state: "FL",
            title: "Beachfront Paradise",
            rating: 5.0,
            features: [.superHost],
            amenities: [.pool, .balcony, .kitchen, .alarmSystem],
            type: .villa
        ),
        Listing(
            id: NSUUID().uuidString,
            owerUid: NSUUID().uuidString,
            ownerName: "Eve Martinez",
            owerImageUrl: "https://example.com/images/user005.jpg",
            numberOfBedrooms: 3,
            numberOfBathrooms: 2,
            numberOfguests: 5,
            numberOfBeds: 3,
            pricePerNight: 150,
            lattitude: 36.1699,
            longitude: -115.1398,
            imageUrls:[
                "image-2",
                "image-1",
                "image-3",
            ],
            address: "202 Vegas Blvd",
            city: "Las Vegas",
            state: "NV",
            title: "Stylish Home Near the Strip",
            rating: 4.7,
            features: [.selfCheckIn, .superHost],
            amenities: [.wifi, .tv, .laundry, .kitchen],
            type: .house
        )
    ]

}

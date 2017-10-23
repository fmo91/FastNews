//
//  APIClient.swift
//  FastNews
//
//  Created by Fernando Ortiz on 10/22/17.
//  Copyright © 2017 Fernando Ortiz. All rights reserved.
//

import Foundation

final class APIClient {
    
    private static let API_CALL_DELAY: TimeInterval = 1.5
    
    private static func simulateNetworkCall(completion: @escaping () -> Void) {
        DispatchQueue.main.asyncAfter(deadline: .now() + API_CALL_DELAY, execute: completion)
    }
    
    private static let news: [News] = {
        let item1 = News(
            id: 1,
            title: "A newly discovered moon tunnel could be the perfect place for a colony, scientists say",
            content: """
At the close of the Apollo age, a year before the final moonwalk in 1972, a NASA researcher argued that vast tunnels lie beneath the lunar surface.
There was good reason to think so. Lava from ancient volcanoes might have bored miles-long voids beneath the moon's surface, just as volcanoes formed the Kaumana lava tubes in Hawaii.
What a sight a lunar lava cave would be. Protected from meteors and radiation that bombards the surface, the tunnels might preserve evidence from the moon’s early history and clues to its mysterious origins. And many scientists have long dreamed of building bases inside natural moon caves, where lunar explorers might sleep safely in inflatable homes, protected from the storms above.
But the lava tunnels of the moon, like the mythical canals of Mars, proved elusive.
NASA’s Ronald Greeley hypothesized in 1971 that one of the great channels in the moon’s Marius Hills region might in fact be a collapsed tunnel. But he admitted that no mission had yet photographed a lunar cave entrance — and some doubted they even existed.
Half a century after Greeley’s paper was published and NASA left the moon behind, in a paper published this week, Japanese researchers say they've found proof of the tunnels no one could see.
Japan calls its Kaguya orbiter the “largest lunar mission since the Apollo program.” It was launched in 2007 with state-of-the-art instruments, deployable satellites and a mission to solve the great mysteries of the moon’s origin.
[New clues on the perplexing origin of the moon]
In 2009, Kaguya drifted 60 miles above the Marius Hills and took a picture of a large, deep hole.
Holes aren’t unusual on the moon’s pockmarked surface, but a NASA Lunar Reconnaissance Orbiter managed to get a follow-up shot, closer to the ground, as a team of Japanese and American researchers recounted in Geophysical Research Letters last week.
“The floor of the hole extended at least several meters eastward and westward under a ceiling of two other holes,” the researchers wrote — like the mouth of a tunnel.
But the murky picture revealed no more. Did the cave go on for miles, like the hypothetical lava tube, or dead-end just out of sight?
It took years to find out. The Japanese got another assist from the United States in 2011, when NASA put twin spacecraft — Gravity Recovery and Interior Laboratory, or GRAIL — in orbit around the moon.
GRAIL measured tiny fluctuations in the moon’s gravity to map out mountains and subterranean features. When it flew over the Marius Hills, the researchers wrote, it detected something long and hollow beneath the surface  — extending more than 30 miles from the hole Kaguya found.
So Kaguya swung back into action. The Japanese probe blasted radar waves down onto the suspected tunnel, listening for anomalies in the echoes that came back from underground.
[Why it matters that Japan is going to the moon]
Over and over, Kaguya heard a distinctive pattern of echoes. The researchers think it is either the floor or ceiling of a cave — the long-hoped-for lava tunnel.
""",
            imagePath: "img_news_1",
            journalist: journalist1
        )
        
        let item2 = News(
            id: 2,
            title: "A newly discovered moon tunnel could be the perfect place for a colony, scientists say",
            content: """
At the close of the Apollo age, a year before the final moonwalk in 1972, a NASA researcher argued that vast tunnels lie beneath the lunar surface.
There was good reason to think so. Lava from ancient volcanoes might have bored miles-long voids beneath the moon's surface, just as volcanoes formed the Kaumana lava tubes in Hawaii.
What a sight a lunar lava cave would be. Protected from meteors and radiation that bombards the surface, the tunnels might preserve evidence from the moon’s early history and clues to its mysterious origins. And many scientists have long dreamed of building bases inside natural moon caves, where lunar explorers might sleep safely in inflatable homes, protected from the storms above.
But the lava tunnels of the moon, like the mythical canals of Mars, proved elusive.
NASA’s Ronald Greeley hypothesized in 1971 that one of the great channels in the moon’s Marius Hills region might in fact be a collapsed tunnel. But he admitted that no mission had yet photographed a lunar cave entrance — and some doubted they even existed.
Half a century after Greeley’s paper was published and NASA left the moon behind, in a paper published this week, Japanese researchers say they've found proof of the tunnels no one could see.
Japan calls its Kaguya orbiter the “largest lunar mission since the Apollo program.” It was launched in 2007 with state-of-the-art instruments, deployable satellites and a mission to solve the great mysteries of the moon’s origin.
[New clues on the perplexing origin of the moon]
In 2009, Kaguya drifted 60 miles above the Marius Hills and took a picture of a large, deep hole.
Holes aren’t unusual on the moon’s pockmarked surface, but a NASA Lunar Reconnaissance Orbiter managed to get a follow-up shot, closer to the ground, as a team of Japanese and American researchers recounted in Geophysical Research Letters last week.
“The floor of the hole extended at least several meters eastward and westward under a ceiling of two other holes,” the researchers wrote — like the mouth of a tunnel.
But the murky picture revealed no more. Did the cave go on for miles, like the hypothetical lava tube, or dead-end just out of sight?
It took years to find out. The Japanese got another assist from the United States in 2011, when NASA put twin spacecraft — Gravity Recovery and Interior Laboratory, or GRAIL — in orbit around the moon.
GRAIL measured tiny fluctuations in the moon’s gravity to map out mountains and subterranean features. When it flew over the Marius Hills, the researchers wrote, it detected something long and hollow beneath the surface  — extending more than 30 miles from the hole Kaguya found.
So Kaguya swung back into action. The Japanese probe blasted radar waves down onto the suspected tunnel, listening for anomalies in the echoes that came back from underground.
[Why it matters that Japan is going to the moon]
Over and over, Kaguya heard a distinctive pattern of echoes. The researchers think it is either the floor or ceiling of a cave — the long-hoped-for lava tunnel.
""",
            imagePath: "img_news_1",
            journalist: journalist2
        )
        
        let item3 = News(
            id: 3,
            title: "A newly discovered moon tunnel could be the perfect place for a colony, scientists say",
            content: """
At the close of the Apollo age, a year before the final moonwalk in 1972, a NASA researcher argued that vast tunnels lie beneath the lunar surface.
There was good reason to think so. Lava from ancient volcanoes might have bored miles-long voids beneath the moon's surface, just as volcanoes formed the Kaumana lava tubes in Hawaii.
What a sight a lunar lava cave would be. Protected from meteors and radiation that bombards the surface, the tunnels might preserve evidence from the moon’s early history and clues to its mysterious origins. And many scientists have long dreamed of building bases inside natural moon caves, where lunar explorers might sleep safely in inflatable homes, protected from the storms above.
But the lava tunnels of the moon, like the mythical canals of Mars, proved elusive.
NASA’s Ronald Greeley hypothesized in 1971 that one of the great channels in the moon’s Marius Hills region might in fact be a collapsed tunnel. But he admitted that no mission had yet photographed a lunar cave entrance — and some doubted they even existed.
Half a century after Greeley’s paper was published and NASA left the moon behind, in a paper published this week, Japanese researchers say they've found proof of the tunnels no one could see.
Japan calls its Kaguya orbiter the “largest lunar mission since the Apollo program.” It was launched in 2007 with state-of-the-art instruments, deployable satellites and a mission to solve the great mysteries of the moon’s origin.
[New clues on the perplexing origin of the moon]
In 2009, Kaguya drifted 60 miles above the Marius Hills and took a picture of a large, deep hole.
Holes aren’t unusual on the moon’s pockmarked surface, but a NASA Lunar Reconnaissance Orbiter managed to get a follow-up shot, closer to the ground, as a team of Japanese and American researchers recounted in Geophysical Research Letters last week.
“The floor of the hole extended at least several meters eastward and westward under a ceiling of two other holes,” the researchers wrote — like the mouth of a tunnel.
But the murky picture revealed no more. Did the cave go on for miles, like the hypothetical lava tube, or dead-end just out of sight?
It took years to find out. The Japanese got another assist from the United States in 2011, when NASA put twin spacecraft — Gravity Recovery and Interior Laboratory, or GRAIL — in orbit around the moon.
GRAIL measured tiny fluctuations in the moon’s gravity to map out mountains and subterranean features. When it flew over the Marius Hills, the researchers wrote, it detected something long and hollow beneath the surface  — extending more than 30 miles from the hole Kaguya found.
So Kaguya swung back into action. The Japanese probe blasted radar waves down onto the suspected tunnel, listening for anomalies in the echoes that came back from underground.
[Why it matters that Japan is going to the moon]
Over and over, Kaguya heard a distinctive pattern of echoes. The researchers think it is either the floor or ceiling of a cave — the long-hoped-for lava tunnel.
""",
            imagePath: "img_news_1",
            journalist: journalist3
        )
        
        let item4 = News(
            id: 4,
            title: "A newly discovered moon tunnel could be the perfect place for a colony, scientists say",
            content: """
At the close of the Apollo age, a year before the final moonwalk in 1972, a NASA researcher argued that vast tunnels lie beneath the lunar surface.
There was good reason to think so. Lava from ancient volcanoes might have bored miles-long voids beneath the moon's surface, just as volcanoes formed the Kaumana lava tubes in Hawaii.
What a sight a lunar lava cave would be. Protected from meteors and radiation that bombards the surface, the tunnels might preserve evidence from the moon’s early history and clues to its mysterious origins. And many scientists have long dreamed of building bases inside natural moon caves, where lunar explorers might sleep safely in inflatable homes, protected from the storms above.
But the lava tunnels of the moon, like the mythical canals of Mars, proved elusive.
NASA’s Ronald Greeley hypothesized in 1971 that one of the great channels in the moon’s Marius Hills region might in fact be a collapsed tunnel. But he admitted that no mission had yet photographed a lunar cave entrance — and some doubted they even existed.
Half a century after Greeley’s paper was published and NASA left the moon behind, in a paper published this week, Japanese researchers say they've found proof of the tunnels no one could see.
Japan calls its Kaguya orbiter the “largest lunar mission since the Apollo program.” It was launched in 2007 with state-of-the-art instruments, deployable satellites and a mission to solve the great mysteries of the moon’s origin.
[New clues on the perplexing origin of the moon]
In 2009, Kaguya drifted 60 miles above the Marius Hills and took a picture of a large, deep hole.
Holes aren’t unusual on the moon’s pockmarked surface, but a NASA Lunar Reconnaissance Orbiter managed to get a follow-up shot, closer to the ground, as a team of Japanese and American researchers recounted in Geophysical Research Letters last week.
“The floor of the hole extended at least several meters eastward and westward under a ceiling of two other holes,” the researchers wrote — like the mouth of a tunnel.
But the murky picture revealed no more. Did the cave go on for miles, like the hypothetical lava tube, or dead-end just out of sight?
It took years to find out. The Japanese got another assist from the United States in 2011, when NASA put twin spacecraft — Gravity Recovery and Interior Laboratory, or GRAIL — in orbit around the moon.
GRAIL measured tiny fluctuations in the moon’s gravity to map out mountains and subterranean features. When it flew over the Marius Hills, the researchers wrote, it detected something long and hollow beneath the surface  — extending more than 30 miles from the hole Kaguya found.
So Kaguya swung back into action. The Japanese probe blasted radar waves down onto the suspected tunnel, listening for anomalies in the echoes that came back from underground.
[Why it matters that Japan is going to the moon]
Over and over, Kaguya heard a distinctive pattern of echoes. The researchers think it is either the floor or ceiling of a cave — the long-hoped-for lava tunnel.
""",
            imagePath: "img_news_1",
            journalist: journalist2
        )
        
        let item5 = News(
            id: 5,
            title: "A newly discovered moon tunnel could be the perfect place for a colony, scientists say",
            content: """
At the close of the Apollo age, a year before the final moonwalk in 1972, a NASA researcher argued that vast tunnels lie beneath the lunar surface.
There was good reason to think so. Lava from ancient volcanoes might have bored miles-long voids beneath the moon's surface, just as volcanoes formed the Kaumana lava tubes in Hawaii.
What a sight a lunar lava cave would be. Protected from meteors and radiation that bombards the surface, the tunnels might preserve evidence from the moon’s early history and clues to its mysterious origins. And many scientists have long dreamed of building bases inside natural moon caves, where lunar explorers might sleep safely in inflatable homes, protected from the storms above.
But the lava tunnels of the moon, like the mythical canals of Mars, proved elusive.
NASA’s Ronald Greeley hypothesized in 1971 that one of the great channels in the moon’s Marius Hills region might in fact be a collapsed tunnel. But he admitted that no mission had yet photographed a lunar cave entrance — and some doubted they even existed.
Half a century after Greeley’s paper was published and NASA left the moon behind, in a paper published this week, Japanese researchers say they've found proof of the tunnels no one could see.
Japan calls its Kaguya orbiter the “largest lunar mission since the Apollo program.” It was launched in 2007 with state-of-the-art instruments, deployable satellites and a mission to solve the great mysteries of the moon’s origin.
[New clues on the perplexing origin of the moon]
In 2009, Kaguya drifted 60 miles above the Marius Hills and took a picture of a large, deep hole.
Holes aren’t unusual on the moon’s pockmarked surface, but a NASA Lunar Reconnaissance Orbiter managed to get a follow-up shot, closer to the ground, as a team of Japanese and American researchers recounted in Geophysical Research Letters last week.
“The floor of the hole extended at least several meters eastward and westward under a ceiling of two other holes,” the researchers wrote — like the mouth of a tunnel.
But the murky picture revealed no more. Did the cave go on for miles, like the hypothetical lava tube, or dead-end just out of sight?
It took years to find out. The Japanese got another assist from the United States in 2011, when NASA put twin spacecraft — Gravity Recovery and Interior Laboratory, or GRAIL — in orbit around the moon.
GRAIL measured tiny fluctuations in the moon’s gravity to map out mountains and subterranean features. When it flew over the Marius Hills, the researchers wrote, it detected something long and hollow beneath the surface  — extending more than 30 miles from the hole Kaguya found.
So Kaguya swung back into action. The Japanese probe blasted radar waves down onto the suspected tunnel, listening for anomalies in the echoes that came back from underground.
[Why it matters that Japan is going to the moon]
Over and over, Kaguya heard a distinctive pattern of echoes. The researchers think it is either the floor or ceiling of a cave — the long-hoped-for lava tunnel.
""",
            imagePath: "img_news_1",
            journalist: journalist3
        )
        
        let item6 = News(
            id: 6,
            title: "A newly discovered moon tunnel could be the perfect place for a colony, scientists say",
            content: """
At the close of the Apollo age, a year before the final moonwalk in 1972, a NASA researcher argued that vast tunnels lie beneath the lunar surface.
There was good reason to think so. Lava from ancient volcanoes might have bored miles-long voids beneath the moon's surface, just as volcanoes formed the Kaumana lava tubes in Hawaii.
What a sight a lunar lava cave would be. Protected from meteors and radiation that bombards the surface, the tunnels might preserve evidence from the moon’s early history and clues to its mysterious origins. And many scientists have long dreamed of building bases inside natural moon caves, where lunar explorers might sleep safely in inflatable homes, protected from the storms above.
But the lava tunnels of the moon, like the mythical canals of Mars, proved elusive.
NASA’s Ronald Greeley hypothesized in 1971 that one of the great channels in the moon’s Marius Hills region might in fact be a collapsed tunnel. But he admitted that no mission had yet photographed a lunar cave entrance — and some doubted they even existed.
Half a century after Greeley’s paper was published and NASA left the moon behind, in a paper published this week, Japanese researchers say they've found proof of the tunnels no one could see.
Japan calls its Kaguya orbiter the “largest lunar mission since the Apollo program.” It was launched in 2007 with state-of-the-art instruments, deployable satellites and a mission to solve the great mysteries of the moon’s origin.
[New clues on the perplexing origin of the moon]
In 2009, Kaguya drifted 60 miles above the Marius Hills and took a picture of a large, deep hole.
Holes aren’t unusual on the moon’s pockmarked surface, but a NASA Lunar Reconnaissance Orbiter managed to get a follow-up shot, closer to the ground, as a team of Japanese and American researchers recounted in Geophysical Research Letters last week.
“The floor of the hole extended at least several meters eastward and westward under a ceiling of two other holes,” the researchers wrote — like the mouth of a tunnel.
But the murky picture revealed no more. Did the cave go on for miles, like the hypothetical lava tube, or dead-end just out of sight?
It took years to find out. The Japanese got another assist from the United States in 2011, when NASA put twin spacecraft — Gravity Recovery and Interior Laboratory, or GRAIL — in orbit around the moon.
GRAIL measured tiny fluctuations in the moon’s gravity to map out mountains and subterranean features. When it flew over the Marius Hills, the researchers wrote, it detected something long and hollow beneath the surface  — extending more than 30 miles from the hole Kaguya found.
So Kaguya swung back into action. The Japanese probe blasted radar waves down onto the suspected tunnel, listening for anomalies in the echoes that came back from underground.
[Why it matters that Japan is going to the moon]
Over and over, Kaguya heard a distinctive pattern of echoes. The researchers think it is either the floor or ceiling of a cave — the long-hoped-for lava tunnel.
""",
            imagePath: "img_news_1",
            journalist: journalist2
        )
        
        return [item1, item2, item3, item4, item5, item6]
    }()
    
    private static let journalist1 = Journalist(
        id: 1,
        name: "John Doe",
        photoPath: "img_journalist_1"
    )
    
    private static let journalist2 = Journalist(
        id: 2,
        name: "William Brown",
        photoPath: "img_journalist_2"
    )
    
    private static let journalist3 = Journalist(
        id: 3,
        name: "Joseph Harris",
        photoPath: "img_journalist_3"
    )
    
    private static var journalists: [Journalist] { return [journalist1, journalist2, journalist3] }
    
    static func getNews(onSuccess: @escaping ([News]) -> Void, onFailure: @escaping (String) -> Void) {
        simulateNetworkCall {
            onSuccess (news.map { News(id: $0.id, title: $0.title, content: $0.content, imagePath: $0.imagePath, journalist: nil) })
        }
    }
    
    static func getNewsDetail(fromNewsWithID id: Int, onSuccess: @escaping (News) -> Void, onFailure: @escaping (String) -> Void) {
        simulateNetworkCall {
            if let newsDetail = (news.filter ({ $0.id == id }).first) {
                onSuccess(newsDetail)
            } else {
                onFailure("Could not find news detail with id \(id)")
            }
        }
    }
    
    static func getJournalist(onSuccess: @escaping ([Journalist]) -> Void, onFailure: @escaping (String) -> Void) {
        simulateNetworkCall {
            onSuccess(journalists)
        }
    }
    
    static func getJournalistProfile(fromJournalistWithID id: Int, onSuccess: @escaping (Journalist) -> Void, onFailure: @escaping (String) -> Void) {
        simulateNetworkCall {
            if let journalist = journalists.filter({ $0.id == id }).first {
                onSuccess(journalist)
            } else {
                onFailure("No journalist found with id \(id)")
            }
        }
    }
    
    static func getNews(fromJournalistWithID id: Int, onSuccess: @escaping ([News]) -> Void, onFailure: @escaping (String) -> Void) {
        simulateNetworkCall {
            
        }
    }
    
}

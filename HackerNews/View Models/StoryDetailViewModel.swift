//
//  StoryDetailViewModel.swift
//  HackerNews
//
//  Created by Bilal on 2.04.2022.
//

import Foundation
import Combine

class StoryDetailViewModel: ObservableObject {
    var storyId: Int
    private var cancellable: AnyCancellable?
    
    @Published private var story: Story!
    
    
    init(storyId: Int) {
        
        self.storyId = storyId
        
        self.cancellable = Webservice().getStoryById(storyId: self.storyId)
            .sink(receiveCompletion: { _ in }, receiveValue: { story in
                self.story = story
            })
    }
}

extension StoryDetailViewModel {
    
    var title: String {
        return self.story.title
    }
    
    var url: String {
        return self.story.url
    }
}

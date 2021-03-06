//
//  StoryDetailViewModel.swift
//  HackerNews
//
//  Created by Bilal on 2.04.2022.
//

import Foundation
import Combine

class StoryDetailViewModel: ObservableObject {
    
    private var cancellable: AnyCancellable?
    
    @Published private var story = Story.placeholder()
    
    func fetchStoryDetails(storyId: Int) {
        
        self.cancellable = Webservice().getStoryById(storyId: storyId)
            .catch { _ in Just(Story.placeholder()) }
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

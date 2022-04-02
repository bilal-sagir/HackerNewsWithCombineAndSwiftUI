//
//  StoryListViewModel.swift
//  HackerNews
//
//  Created by Bilal on 2.04.2022.
//

import Foundation
import Combine

class StoryListViewModel: ObservableObject {
    
    @Published var stories = [StoryViewModel]()
    
    private var cancellable: AnyCancellable?
    
    init(){
        fetchTopStories()
    }
    
    private func fetchTopStories(){
        self.cancellable = Webservice().getAllTopStories().map { stories in
            stories.map { StoryViewModel(story: $0)}
        }.sink(receiveCompletion: {_ in}) { storyViewModels in
            self.stories = storyViewModels
        }
    }
}

struct StoryViewModel {
    let story: Story
    
    var id: Int {
        return story.id
    }
    
    var title: String {
        return self.story.title
    }
    
    var url: String {
        return self.story.url
    }
}

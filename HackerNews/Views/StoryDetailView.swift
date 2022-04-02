//
//  StoryDetailView.swift
//  HackerNews
//
//  Created by Bilal on 3.04.2022.
//

import SwiftUI

struct StoryDetailView: View {
    
    
    @ObservedObject private var storyDetailVM: StoryDetailViewModel
    
    init(storyId: Int) {
        self.storyDetailVM = StoryDetailViewModel(storyId: storyId)
    }
    
    var body: some View {
        
        VStack {
            Text(self.storyDetailVM.title)
        }

    }
}

struct StoryDetailView_Previews: PreviewProvider {
    static var previews: some View {
        StoryDetailView(storyId: 8863)
    }
}

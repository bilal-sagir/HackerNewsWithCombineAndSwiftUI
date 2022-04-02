//
//  StoryListView.swift
//  HackerNews
//
//  Created by Bilal on 2.04.2022.
//

import SwiftUI

struct StoryListView: View {
    
    @ObservedObject private var storyListVM = StoryListViewModel()
    
    var body: some View {
        NavigationView{
            List(self.storyListVM.stories, id: \.id) { storyVM in
                NavigationLink(destination: StoryDetailView(storyId: storyVM.id)) {
                    Text("\(storyVM.title)")
                }
            }
            
            .navigationTitle("Hacker News")
        }
    }
}

struct StoryListView_Previews: PreviewProvider {
    static var previews: some View {
        StoryListView()
    }
}

//
//  Post.swift
//  InstagramFirestoreTutorial
//
//  Created by Seiken Dojo on 2023-05-21.
//

import Foundation
import Firebase


struct Post {
    var caption: String
    var likes: Int
    let imageUrl: String
    let ownerUid: String
    let timeStamp: Timestamp
    var postID: String
    
    init(postId: String, dictionary: [String: Any]) {
        self.postID = postId
        self.caption = dictionary["caption"] as? String ?? ""
        self.likes = dictionary["likes"] as? Int ?? 0
        self.imageUrl = dictionary["imageUrl"] as? String ?? ""
        self.ownerUid = dictionary["ownerUid"] as? String ?? ""
        self.timeStamp = dictionary["timeStamp"] as? Timestamp ?? Timestamp(date: Date())
        self.postID = dictionary["postID"] as? String ?? ""
    }
}
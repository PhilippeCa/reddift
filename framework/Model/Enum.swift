//
//  Enum.swift
//  reddift
//
//  Created by sonson on 2015/05/12.
//  Copyright (c) 2015年 sonson. All rights reserved.
//

import Foundation

/**
The sort method for listing Comment object when using "/comments/[link_id]", "/api/morechildren".
*/
public enum CommentSort {
	case confidence
	case top
	case new
	case hot
	case controversial
	case old
	case random
	case qa
    case suggested

    public static let cases: [CommentSort] = [.suggested, .confidence, .top, .new, .hot, .controversial, .old]

	/**
	Returns string to create a path of URL.
	*/
	public var path: String {
		switch self {
		case .confidence:
			return "/confidence"
        case .suggested:
            return ""
		case .top:
			return "/top"
		case .new:
			return "/new"
		case .hot:
			return "/hot"
		case .controversial:
			return "/controversial"
		case .old:
			return "/old"
		case .random:
			return "/random"
		case .qa:
			return "/qa"
		}
	}
	
	/**
	Returns string to show titles.
	*/
	public var type: String {
		switch self {
		case .confidence:
			return "confidence"
		case .top:
			return "top"
		case .new:
			return "new"
		case .hot:
			return "hot"
		case .controversial:
			return "controversial"
		case .old:
			return "old"
		case .random:
			return "random"
		case .qa:
			return "qa"
        case .suggested:
            return "suggested"
		}
	}
    
    public var description: String {
        switch self {
        case .confidence:
            return "Sort by Best"
        case .top:
            return "Sort by Top"
        case .new:
            return "Sort by New"
        case .hot:
            return "Sort by Hot"
        case .controversial:
            return "Sort by Controversial"
        case .old:
            return "Sort by Old"
        case .random:
            return "Random"
        case .qa:
            return "Sort by Quality?"
        case .suggested:
            return "Sort by Suggested"
        }
    }
}

/**
The type of filtering content by timeline.
*/
public enum TimeFilterWithin {
	/// Contents within an hour
	case hour
	/// Contents within a day
	case day
	/// Contents within a week
	case week
	/// Contents within a month
	case month
	/// Contents within a year
	case year
	/// All contents
	case all
    
    public static let cases: [TimeFilterWithin] = [.hour, .day, .week, .month, .year, .all]
	
	/// String for URL parameter
	public var param: String {
		switch self {
		case .hour:
			return "hour"
		case .day:
			return "day"
		case .week:
			return "week"
		case .month:
			return "month"
		case .year:
			return "year"
		case .all:
			return "all"
		}
    }
    
    public var description: String {
        switch self {
        case .hour:
            return "Within an hour"
        case .day:
            return "Within a day"
        case .week:
            return "Within a week"
        case .month:
            return "Within a month"
        case .year:
            return "Within a year"
        case .all:
            return "All"
        }
    }
}

/**
The sort method for listing Link object, reddift original.
*/
public enum LinkSortType {
    case controversial
    case top
    case hot
    case new
    case rising
    case best
    
    public static let cases: [LinkSortType] = [.controversial, .top, .hot, .new, .rising, .best]

    public var path: String {
        switch self {
        case .controversial:
            return "/controversial"
        case .top:
            return "/top"
        case .hot:
            return "/hot"
        case .new:
            return "/new"
        case .rising:
            return "/rising"
        case .best:
            return "/best"
        }
    }
    
    public var description: String {
        switch self {
        case .controversial:
            return "Sort by Controversial"
        case .top:
            return "Sort by Top"
        case .hot:
            return "Sort by Hot"
        case .new:
            return "Sort by New"
        case .rising:
            return "Sort by Rising"
        case .best:
            return "Sort by Best"
        }
    }
}

/**
The sort method for search Link object, "/r/[subreddit]/search" or "/search".
*/
public enum SearchSortBy {
    public static let cases : [SearchSortBy] = [.relevance, .new, .hot, .top, .comments]
	case relevance
	case new
	case hot
	case top
	case comments
	
	public var path: String {
		switch self {
		case .relevance:
			return "relevance"
		case .new:
			return "new"
		case .hot:
			return "hot"
		case .top:
			return "top"
		case .comments:
			return "comments"
		}
	}
}

public enum SearchTimePeriod {
    public static let cases : [SearchTimePeriod] = [.hour, .day, .week, .month, .year, .all]
    case hour
    case day
    case week
    case month
    case year
    case all
    
    public var path: String {
        switch self {
        case .hour:
            return "hour"
        case .day:
            return "day"
        case .week:
            return "week"
        case .month:
            return "month"
        case .year:
            return "year"
        case .all:
            return "all"
        }
    }

}

/**
The sort method for listing user's subreddit object, "/subreddits/mine/[where]".
*/
public enum SubredditsMineWhere {
	case contributor
	case moderator
	case subscriber
	
	public var path: String {
		switch self {
		case .contributor:
			return "/subreddits/mine/contributor"
		case .moderator:
			return "/subreddits/mine/moderator"
		case .subscriber:
			return "/subreddits/mine/subscriber"
		}
	}
}

/**
The sort method for listing user's subreddit object, "/subreddits/[where]".
*/
public enum SubredditsWhere {
	case popular
	case new
	case employee
	case gold
    case `default`
	
	public var path: String {
		switch self {
		case .popular:
			return "/subreddits/popular.json"
		case .new:
			return "/subreddits/new.json"
		case .employee:
			return "/subreddits/employee.json"
		case .gold:
            return "/subreddits/gold.json"
        case .default:
            return "/subreddits/default.json"
		}
	}
	
	public var title: String {
		switch self {
		case .popular:
			return "Popular"
		case .new:
			return "New"
		case .employee:
			return "Employee"
		case .gold:
            return "Gold"
        case .default:
            return "Default"
		}
	}
}

/**
The type of a message box.
*/
public enum MessageWhere {
	case inbox
	case unread
	case sent
	case messages
	case mentions
	
	public var  path: String {
		switch self {
		case .inbox:
			return "/inbox"
		case .unread:
			return "/unread"
		case .sent:
			return "/sent"
	        case .messages:
			return "/messages"
		case .mentions:
			return "/mentions"
		}
	}
	
	public var  description: String {
		switch self {
		case .inbox:
			return "Inbox"
		case .unread:
			return "Unread"
		case .sent:
			return "Sent"
        case .messages:
            return "Messages"
        case .mentions:
            return "Mentions"
		}
	}
}

/**
The type of users' contents for "/user/username/where" method.
*/
public enum UserContent {
	case overview
	case submitted
	case comments
	case liked
	case disliked
	case hidden
	case saved
	case gilded
    
    public static let cases: [UserContent] = [.overview, .submitted, .comments, .liked, .disliked, .hidden, .saved, .gilded]
	
	var path: String {
		switch self {
		case .overview:
			return "/overview"
		case .submitted:
			return "/submitted"
		case .comments:
			return "/comments"
		case .liked:
			return "/liked"
		case .disliked:
			return "/disliked"
		case .hidden:
			return "/hidden"
		case .saved:
			return "/saved"
		case .gilded:
			return "/gilded"
		}
	}
    
    public var title: String {
        switch self{
        case .overview:
            return "Overview"
        case .submitted:
            return "Submitted"
        case .comments:
            return "Comments"
        case .liked:
            return "Liked"
        case .disliked:
            return "Disliked"
        case .hidden:
            return "Hidden"
        case .saved:
            return "Saved"
        case .gilded:
            return "Gilded"
        }
    }
}

/**
The type of ordering users' contents for "/user/username/where" method.
*/
public enum UserContentSortBy {
	case hot
	case new
	case top
	case controversial
    
    public static let cases: [UserContentSortBy] = [.hot, .new, .top, .controversial]
    
	var param: String {
		switch self {
		case .hot:
			return "hot"
		case .new:
			return "new"
		case .top:
			return "top"
		case .controversial:
			return "controversial"
		}
	}
    
    public var description: String {
        switch self{
        case .hot:
            return "Hot"
        case .new:
            return "New"
        case .top:
            return "Top"
        case .controversial:
            return "Controversial"
        }
    }
}

/**
The type of voting direction.
*/
public enum VoteDirection: Int {
	case up     =  1
	case none   =  0
	case down   = -1
}

/**
How a Thing is distinguished from other things.
*/
public enum DistinguishType {
    case none
    case moderator
    case admin
    case special
    public var type: String {
        switch self {
        case .none:
            return "none"
        case .moderator:
            return "moderator"
        case .admin:
            return "admin"
        case .special:
            return "special"
        }
    }
}

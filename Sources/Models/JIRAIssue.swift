import Foundation

public struct JIRAIssue: Codable {
    public var expand: String?
    public var id: String?
    public var `self`: String?
    public var key: String?
    public var fields: JIRAIssueFields?
    public var renderedFields: [String]?
    public var properties: [String]?
    public var names: [String]?
    public var schema: [String]?
    public var transitions: [JIRAIssueTransition]?
    public var operations: [JIRAOpsbar]?
    public var editmeta: JIRAIssueEditMeta?
    public var changelog: JIRAIssueChangelog?
    public var versionedRepresentations: [String: String]?
    public var fieldsToInclude: [String]?
}

public struct JIRAIssueFields: Codable {
    public var creator: JIRAUser?
    public var aggregateprogress: JIRAIssueProgress?
    public var reporter: JIRAUser?
    public var subtasks: [JIRAIssueSubtask]?
    public var aggregatetimeoriginalestimate: String?
    public var assignee: JIRAUser?
    public var lastViewed: String?
    public var timeestimate: String?
    public var timeoriginalestimate: String?
    public var aggregatetimeestimate: String?
    public var progress: JIRAIssueProgress?
    public var created: String?
    public var versions: [String]?
    public var components: [String]?
    public var timetracking: [String: String?]?
    public var votes: JIRAIssueVotes?
    public var labels: [String]?
    public var workratio: Int?
    public var description: String?
    public var updated: String
    public var issuetype: JIRAIssueType?
    public var watches: JIRAIssueWatches?
    public var environment: String?
    public var comment: JIRAIssueComments?
    public var timespent: String?
    public var priority: JIRAIssuePriority?
    public var project: JIRAProject?
    public var fixVersions: [JIRAVersion]?
    public var issueLinks: [JIRAIssueLink]?
    public var resolution: String?
    public var status: JIRAIssueStatus?
    public var summary: String?
    public var attachment: [JIRAIssueAttachment]?
    public var duedate: String?
    public var security: String?
}

public struct JIRAIssueAttachment: Codable {
    public var content: String?
    public var author: JIRAUser?
    public var size: Int?
    public var id: String?
    public var created: String?
    public var `self`: String?
    public var mimeType: String?
    public var filename: String?
    public var thumbnail: String?
}

public struct JIRAIssueStatus: Codable {
    public var `self`: String?
    public var description: String?
    public var name: String?
    public var statusCategory: JIRAIssueStatusCategory?
    public var iconUrl: String?
    public var id: String?
}

public struct JIRAIssueLink: Codable {
    public var `self`: String?
    public var id: String?
    public var inwardIssue: JIRAIssue?
    public var type: JIRAIssueType?
}

public struct JIRAVersion: Codable {
    public var description: String?
    public var `self`: String?
    public var archived: Bool?
    public var id: String?
    public var released: Bool?
    public var name: String?
}

public struct JIRAIssuePriority: Codable {
    public var `self`: String?
    public var name: String?
    public var iconUrl: String?
    public var id: String?
}

public struct JIRAIssueComments: Codable {
    public var comments: [JIRAIssueComment]?
    public var startAt: Int?
    public var maxResults: Int?
    public var total: Int?
}

public struct JIRAIssueComment: Codable {
    public var author: JIRAUser?
    public var id: String?
    public var created: String?
    public var updateAuthor: JIRAUser?
    public var updated: String?
    public var `self`: String?
    public var body: String?
}

public struct JIRAIssueWatches: Codable {
    public var `self`: String?
    public var watchCount: Int?
    public var isWatching: Bool?
}

public struct JIRAIssueVotes: Codable {
    public var votes: Int?
    public var `self`: String?
    public var hasVoted: Bool?
}

public struct JIRAIssueSubtask: Codable {
    public var `self`: String?
    public var id: String?
    public var fields: JIRAIssueFields?
    
}

public struct JIRAIssueProgress: Codable {
    public var progress: Int?
    public var total: Int?
}

public struct JIRAIssueType: Codable {
    public var `self`: String?
    public var id: String?
    public var description: String?
    public var iconUrl: String?
    public var name: String?
    public var subtask: Bool?
    public var avatarId: Int?
}

public struct JIRAIssueTransition: Codable {
    public var id: String?
    public var name: String?
    public var to: JIRAStatus?
    public var hasScreen: Bool?
    public var isGlobal: Bool?
    public var isInitial: Bool?
    public var isConditional: Bool?
    public var fields: [JIRAIssueFieldMeta]?
}

public struct JIRAStatus: Codable {
    public var `self`: String
    public var statusColor: String?
    public var description: String?
    public var iconUrl: String?
    public var name: String?
    public var id: String
    public var statusCategory: JIRAIssueStatusCategory?
}

public struct JIRAIssueStatusCategory: Codable {
    public var `self`: String?
    public var id: Int?
    public var key: String?
    public var colorName: String?
    public var name: String?
}

public struct JIRAOpsbar: Codable {
    public var linkGroups: [JIRAIssueLinkGroup]?
}

public struct JIRAIssueEditMeta: Codable {
    public var fields: JIRAIssueFieldMeta?
}

public struct JIRAIssueChangelog: Codable {
    public var startAt: Int?
    public var maxResults: Int?
    public var total: Int?
    public var histories: [JIRAIssueChangeHistory]?
}

public struct JIRAIssueFieldMeta: Codable {
    public var required: Bool?
    public var schema: JIRASchema?
    public var name: String?
    public var key: String?
    public var autoCompleteUrl: String?
    public var hasDefaultValue: Bool?
    public var operations: [String]?
//    public var allowedValues: [String]?
}

public struct JIRAIssueLinkGroup: Codable {
    public var id: String?
    public var styleClass: String?
    public var header: JIRAIssueSimpleLink?
    public var weight: Int?
    public var links: [JIRAIssueSimpleLink]?
    public var groups: [JIRAIssueLinkGroup]?
}

public struct JIRAIssueSimpleLink: Codable {
    public var id: String?
    public var styleClass: String?
    public var iconClass: String?
    public var label: String?
    public var title: String?
    public var href: String?
    public var weight: Int?
}

public struct JIRASchema: Codable {
    
}

public struct JIRAIssueChangeHistory: Codable {
    public var id: String?
    public var author: JIRAUser?
    public var created: String?
    public var items: [JIRAIssueChangeItem]?
    public var historyMetadata: JIRAIssueHistoryMetadata?
}

public struct JIRAIssueChangeItem: Codable {
    public var field: String?
    public var fieldType: String?
    public var fieldId: String?
    public var from: String?
    public var fromString: String?
    public var to: String?
    public var toString: String?
}

public struct JIRAIssueHistoryMetadata: Codable {
    public var type: String?
    public var description: String?
    public var descriptionKey: String?
    public var activityDescription: String?
    public var activityDescriptionKey: String?
    public var emailDescription: String?
    public var emailDescriptionKey: String?
    public var actor: JIRAIssueHistoryMetadataParticipant?
    public var generator: JIRAIssueHistoryMetadataParticipant?
    public var cause: JIRAIssueHistoryMetadataParticipant?
//    public var extraData: [String]?
}

public struct JIRAIssueHistoryMetadataParticipant: Codable {
    public var id: String?
    public var displayName: String?
    public var displayNameKey: String?
    public var type: String?
    public var avatarUrl: String?
    public var url: String?
}
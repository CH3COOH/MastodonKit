import Foundation

public struct Reports {
    /// Fetches a user's reports.
    ///
    /// - Returns: Resource for `[Report]`.
    public static func all() -> ReportsResource {
        return ReportsResource(path: "/api/v1/reports", parse: ReportsResource.parser)
    }

    /// Reports a user.
    ///
    /// - Parameters:
    ///   - accountID: The ID of the account to report.
    ///   - statusID: The ID of status to report.
    ///   - reason: A comment to associate with the report.
    /// - Returns: Resource for `Report`.
    public static func report(accountID: Int, statusID: Int, reason: String) -> ReportResource {
        let dictionary: Parameters = [
            "account_id": String(accountID),
            "status_ids": String(statusID),
            "comment": reason
        ]

        let method = HTTPMethod.post(Payload.parameters(dictionary))
        return ReportResource(path: "/api/v1/reports", method: method, parse: ReportResource.parser)
    }
}

import ballerina/ai;

configurable string addIdsToolBaseAuthUrl = ?;
configurable string addIdsToolClientId = ?;
// configurable string addIdsToolClientSecret = ?;
configurable string addIdsToolRedirectUri = ?;

# Adds two identifiers together and returns the resulting sum.
# + firstId - the first identifier to add
# + secondId - the second identifier to add
# + return - the sum of the two identifiers
@ai:AgentTool {
    auth: {
        baseAuthUrl: addIdsToolBaseAuthUrl,
        clientId: addIdsToolClientId,
        redirectUri: addIdsToolRedirectUri,
        scopes: "add",
        isPkceEnabled: true
    }
}
isolated function addIds(int firstId, int secondId) returns int {
    return firstId + secondId;
}

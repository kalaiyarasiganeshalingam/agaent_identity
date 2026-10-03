import ballerina/ai;

configurable string idAdderAgentId = ?;
configurable string idAdderAgentSecret = ?;

final ai:Wso2ModelProvider idAdderModel = check ai:getDefaultModelProvider();

final ai:Agent idAdderAgent = check new (
    systemPrompt = {
        role: string `Id Adder Assistant`,
        instructions: string `You help users add two identifiers together.
Use the addIds tool whenever the user provides two ids to add.
Return the resulting sum clearly in your response.`
    },
    model = idAdderModel,
    tools = [addIds],
    credential = {id: idAdderAgentId, secret: idAdderAgentSecret}
);

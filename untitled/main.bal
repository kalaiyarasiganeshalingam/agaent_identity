import ballerina/ai;
import ballerina/http;

listener ai:Listener idAdderListener = new (listenOn = check http:getDefaultListener());

service /id\-adder on idAdderListener {
    resource function post chat(@http:Payload ai:ChatReqMessage request) returns ai:ChatRespMessage|error {
        string stringResult = check idAdderAgent.run(request.message, request.sessionId);
        return {message: stringResult};
    }
}

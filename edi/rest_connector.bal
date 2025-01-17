
import ballerina/http;

configurable int restConnectorPort = 9090;

service /ediParser on new http:Listener(restConnectorPort) {

    # Resource to convert EDI string to Ballerina record as JSON.
    # 
    # + ediType - EDI type name
    # + ediData - EDI string to be converted
    # + return - Ballerina record as JSON or error
    isolated resource function post edis/[string ediType](@http:Payload string ediData) returns json|error {
        EDI_NAME|error ediTypeName = ediType.ensureType();
        if ediTypeName is error {
            return error("Unsupported EDI type: " + ediType + ". " + ediTypeName.message());
        }
        anydata target = check fromEdiString(ediData, ediTypeName);   
        return target.toJson();
    }
    # Resource to convert Ballerina record to EDI string.
    # 
    # + ediType - EDI type name
    # + jsonData - Ballerina record as JSON
    # + return - EDI string or error
    isolated resource function post objects/[string ediType](@http:Payload json jsonData) returns string|error {
        EDI_NAME|error ediTypeName = ediType.ensureType();
        if ediTypeName is error {
            return error("Unsupported EDI type: " + ediType + ". " + ediTypeName.message());
        }
        string ediText = check toEdiString(jsonData, ediTypeName);   
        return ediText;
    }

    isolated resource function get edis() returns string[] {
        return getEDINames();
    }
}
    
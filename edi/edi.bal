

import edi.m210;
import edi.m214;
import edi.m310;
import edi.m110;

type EdiSerialize isolated function (anydata) returns string|error;
type EdiDeserialize isolated function (string) returns anydata|error;

public enum EDI_NAME {
    EDI_210 = "210", EDI_214 = "214", EDI_310 = "310", EDI_110 = "110"
}

public isolated function getEDINames() returns string[] {
    return ["210","214","310","110"];
}

# Convert EDI string to Ballerina record.
# 
# + ediText - EDI string to be converted
# + ediName - EDI type name
# + return - Ballerina record or error
public isolated function fromEdiString(string ediText, EDI_NAME ediName) returns anydata|error {
    EdiDeserialize? ediDeserialize = ediDeserializers[ediName];
    if ediDeserialize is () {
        return error("EDI deserializer is not initialized for EDI type: " + ediName);
    }
    return ediDeserialize(ediText);
}

# Convert Ballerina record to EDI string.
# 
# + data - Ballerina record to be converted
# + ediName - EDI type name
# + return - EDI string or error
public isolated function toEdiString(anydata data, EDI_NAME ediName) returns string|error {
    EdiSerialize? ediSerialize = ediSerializers[ediName];
    if ediSerialize is () {
        return error("EDI serializer is not initialized for EDI type: " + ediName);
    }
    return ediSerialize(data);
}

final readonly & map<EdiDeserialize> ediDeserializers = {
        "210": m210:transformFromEdiString,
    "214": m214:transformFromEdiString,
    "310": m310:transformFromEdiString,
    "110": m110:transformFromEdiString
};

final readonly & map<EdiSerialize> ediSerializers = {
        "210": m210:transformToEdiString,
    "214": m214:transformToEdiString,
    "310": m310:transformToEdiString,
    "110": m110:transformToEdiString
};
    
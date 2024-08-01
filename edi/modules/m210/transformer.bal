
type InternalType EDI_210_X12_004010_210;

# Convert EDI string to Ballerina EDI_210_X12_004010_210 record.
#
# + ediText - EDI string to be converted
# + return - Ballerina record or error
public isolated function transformFromEdiString(string ediText) returns anydata|error {
    EDI_210_X12_004010_210 data = check fromEdiString(ediText);
    return transformRead(data);
}

isolated function transformRead(EDI_210_X12_004010_210 data) returns InternalType => data;

# Convert Ballerina EDI_210_X12_004010_210 record to EDI string.
# 
# + content - Ballerina record to be converted
# + return - EDI string or error
public isolated function transformToEdiString(anydata content) returns string|error {
    EDI_210_X12_004010_210 data = transformWrite(check content.ensureType());
    return toEdiString(data);
}

isolated function transformWrite(InternalType data) returns EDI_210_X12_004010_210 => data;
    
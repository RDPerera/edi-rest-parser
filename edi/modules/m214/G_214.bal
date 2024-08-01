
import ballerina/edi;

# Convert EDI string to Ballerina EDI_214_X12_004010_214 record.
# 
# + ediText - EDI string to be converted
# + return - Ballerina record or error
public isolated function fromEdiString(string ediText) returns EDI_214_X12_004010_214|error {
    edi:EdiSchema ediSchema = check edi:getSchema(schemaJson);
    json dataJson = check edi:fromEdiString(ediText, ediSchema);
    return dataJson.cloneWithType();
}

# Convert Ballerina EDI_214_X12_004010_214 record to EDI string.
# 
# + data - Ballerina record to be converted
# + return - EDI string or error
public isolated function toEdiString(EDI_214_X12_004010_214 data) returns string|error {
    edi:EdiSchema ediSchema = check edi:getSchema(schemaJson);
    return edi:toEdiString(data, ediSchema);    
} 

# Get the EDI schema.
# 
# + return - EDI schema or error
public isolated function getSchema() returns edi:EdiSchema|error {
    return edi:getSchema(schemaJson);
}

# Convert EDI string to Ballerina EDI_214_X12_004010_214 record with schema.
# 
# + ediText - EDI string to be converted
# + schema - EDI schema
# + return - Ballerina record or error
public isolated function fromEdiStringWithSchema(string ediText, edi:EdiSchema schema) returns EDI_214_X12_004010_214|error {
    json dataJson = check edi:fromEdiString(ediText, schema);
    return dataJson.cloneWithType();
}

# Convert Ballerina EDI_214_X12_004010_214 record to EDI string with schema.
# 
# + data - Ballerina record to be converted
# + ediSchema - EDI schema
# + return - EDI string or error
public isolated function toEdiStringWithSchema(EDI_214_X12_004010_214 data, edi:EdiSchema ediSchema) returns string|error {
    return edi:toEdiString(data, ediSchema);    
}

public type InterchangeControlHeader_Type record {|
   string code = "ISA";
   string ISA01__AuthorizationInformationQualifier;
   string ISA02__AuthorizationInformation;
   string ISA03__SecurityInformationQualifier;
   string ISA04__SecurityInformation;
   string ISA05__InterchangeIDQualifier;
   string ISA06__InterchangeSenderID;
   string ISA07__InterchangeIDQualifier;
   string ISA08__InterchangeReceiverID;
   string ISA09__InterchangeDate;
   string ISA10__InterchangeTime;
   string ISA11__InterchangeControlStandardsIdentifier;
   string ISA12__InterchangeControlVersionNumber;
   float ISA13__InterchangeControlNumber;
   string ISA14__AcknowledgmentRequested;
   string ISA15__UsageIndicator;
   string ISA16__ComponentElementSeparator;
|};

public type FunctionalGroupHeader_Type record {|
   string code = "GS";
   string GS01__FunctionalIdentifierCode;
   string GS02__ApplicationSendersCode;
   string GS03__ApplicationReceiversCode;
   string GS04__Date;
   string GS05__Time;
   float GS06__GroupControlNumber;
   string GS07__ResponsibleAgencyCode;
   string GS08__VersionReleaseIndustryIdentifierCode;
|};

public type TransactionSetHeader_Type record {|
   string code = "ST";
   string ST01__TransactionSetIdentifierCode;
   string ST02__TransactionSetControlNumber;
|};

public type BeginningSegmentforTransportationCarrierShipmentStatusMessage_Type record {|
   string code = "B10";
   string B1001__ReferenceIdentification?;
   string B1002__ShipmentIdentificationNumber?;
   string B1003__StandardCarrierAlphaCode;
   float? B1004__InquiryRequestNumber?;
   string B1005__ReferenceIdentificationQualifier?;
   string B1006__ReferenceIdentification?;
   string B1007__YesNoConditionorResponseCode?;
|};

public type BusinessInstructionsandReferenceNumber_Type record {|
   string code = "L11";
   string L1101__ReferenceIdentification?;
   string L1102__ReferenceIdentificationQualifier?;
   string L1103__Description?;
|};

public type MarksandNumbers_Type record {|
   string code = "MAN";
   string MAN01__MarksandNumbersQualifier;
   string MAN02__MarksandNumbers;
   string MAN03__MarksandNumbers?;
   string MAN04__MarksandNumbersQualifier?;
   string MAN05__MarksandNumbers?;
   string MAN06__MarksandNumbers?;
|};

public type Remarks_Type record {|
   string code = "K1";
   string K101__Free_FormMessage;
   string K102__Free_FormMessage?;
|};

public type Name_Type record {|
   string code = "N1";
   string N101__EntityIdentifierCode;
   string N102__Name?;
   string N103__IdentificationCodeQualifier?;
   string N104__IdentificationCode?;
   string N105__EntityRelationshipCode?;
   string N106__EntityIdentifierCode?;
|};

public type AdditionalNameInformation_Type record {|
   string code = "N2";
   string N201__Name;
   string N202__Name?;
|};

public type AddressInformation_Type record {|
   string code = "N3";
   string N301__AddressInformation;
   string N302__AddressInformation?;
|};

public type GeographicLocation_Type record {|
   string code = "N4";
   string N401__CityName?;
   string N402__StateorProvinceCode?;
   string N403__PostalCode?;
   string N404__CountryCode?;
   string N405__LocationQualifier?;
   string N406__LocationIdentifier?;
|};

public type Contact_Type record {|
   string code = "G61";
   string G6101__ContactFunctionCode;
   string G6102__Name;
   string G6103__CommunicationNumberQualifier?;
   string G6104__CommunicationNumber?;
   string G6105__ContactInquiryReference?;
|};

public type DateTime_Type record {|
   string code = "G62";
   string G6201__DateQualifier?;
   string G6202__Date?;
   string G6203__TimeQualifier?;
   string G6204__Time?;
   string G6205__TimeCode?;
|};

public type Loop_1_0050_GType record {|
   Name_Type? Name?;
   AdditionalNameInformation_Type? AdditionalNameInformation?;
   AddressInformation_Type? AddressInformation?;
   GeographicLocation_Type? GeographicLocation?;
   Contact_Type? Contact?;
   DateTime_Type? DateTime?;
   BusinessInstructionsandReferenceNumber_Type? BusinessInstructionsandReferenceNumber?;
|};

public type InterlineInformation_Type record {|
   string code = "MS3";
   string MS301__StandardCarrierAlphaCode;
   string MS302__RoutingSequenceCode;
   string MS303__CityName?;
   string MS304__TransportationMethodTypeCode?;
   string MS305__StateorProvinceCode?;
|};

public type AssignedNumber_Type record {|
   string code = "LX";
   float LX01__AssignedNumber;
|};

public type ShipmentStatusDetails_Type record {|
   string code = "AT7";
   string AT701__ShipmentStatusCode?;
   string AT702__ShipmentStatusorAppointmentReasonCode?;
   string AT703__ShipmentAppointmentStatusCode?;
   string AT704__ShipmentStatusorAppointmentReasonCode?;
   string AT705__Date?;
   string AT706__Time?;
   string AT707__TimeCode?;
|};

public type EquipmentShipmentorRealPropertyLocation_Type record {|
   string code = "MS1";
   string MS101__CityName?;
   string MS102__StateorProvinceCode?;
   string MS103__CountryCode?;
   string MS104__LongitudeCode?;
   string MS105__LatitudeCode?;
   string MS106__DirectionIdentifierCode?;
   string MS107__DirectionIdentifierCode?;
|};

public type EquipmentorContainerOwnerandType_Type record {|
   string code = "MS2";
   string MS201__StandardCarrierAlphaCode?;
   string MS202__EquipmentNumber?;
   string MS203__EquipmentDescriptionCode?;
   float? MS204__EquipmentNumberCheckDigit?;
|};

public type Loop_1_0140_GType record {|
   ShipmentStatusDetails_Type? ShipmentStatusDetails?;
   EquipmentShipmentorRealPropertyLocation_Type? EquipmentShipmentorRealPropertyLocation?;
   EquipmentorContainerOwnerandType_Type? EquipmentorContainerOwnerandType?;
|};

public type LadingExceptionCode_Type record {|
   string code = "Q7";
   string Q701__LadingExceptionCode;
   string Q702__PackagingFormCode?;
   float? Q703__LadingQuantity?;
|};

public type BillofLadingHandlingRequirements_Type record {|
   string code = "AT5";
   string AT501__SpecialHandlingCode?;
   string AT502__SpecialServicesCode?;
   string AT503__SpecialHandlingDescription?;
|};

public type ShipmentWeightPackagingandQuantityData_Type record {|
   string code = "AT8";
   string AT801__WeightQualifier?;
   string AT802__WeightUnitCode?;
   string AT803__Weight?;
   float? AT804__LadingQuantity?;
   float? AT805__LadingQuantity?;
   string AT806__VolumeUnitQualifier?;
   string AT807__Volume?;
|};

public type CartonPackageDetail_Type record {|
   string code = "CD3";
   string CD301__WeightQualifier?;
   string CD302__Weight?;
   string CD303__Zone?;
   int? CD304__ServiceStandard?;
   string CD305__ServiceLevelCode?;
   string CD306__Pick_uporDeliveryCode?;
   string CD307__RateValueQualifier?;
   float? CD308__Charge?;
   string CD309__RateValueQualifier?;
   float? CD310__Charge?;
   string CD311__ServiceLevelCode?;
   string CD312__ServiceLevelCode?;
   string CD313__PaymentMethodCode?;
   string CD314__CountryCode?;
|};

public type Loop_1_0230_GType record {|
   ShipmentStatusDetails_Type? ShipmentStatusDetails?;
   EquipmentShipmentorRealPropertyLocation_Type? EquipmentShipmentorRealPropertyLocation?;
   EquipmentorContainerOwnerandType_Type? EquipmentorContainerOwnerandType?;
|};

public type IndividualorOrganizationalName_Type record {|
   string code = "NM1";
   string NM101__EntityIdentifierCode;
   string NM102__EntityTypeQualifier;
   string NM103__NameLastorOrganizationName?;
   string NM104__NameFirst?;
   string NM105__NameMiddle?;
   string NM106__NamePrefix?;
   string NM107__NameSuffix?;
   string NM108__IdentificationCodeQualifier?;
   string NM109__IdentificationCode?;
   string NM110__EntityRelationshipCode?;
   string NM111__EntityIdentifierCode?;
|};

public type Loop_1_0270_GType record {|
   Name_Type? Name?;
   AdditionalNameInformation_Type? AdditionalNameInformation?;
   AddressInformation_Type? AddressInformation?;
   GeographicLocation_Type? GeographicLocation?;
   BusinessInstructionsandReferenceNumber_Type? BusinessInstructionsandReferenceNumber?;
|};

public type Loop_1_0210_GType record {|
   CartonPackageDetail_Type? CartonPackageDetail?;
   BusinessInstructionsandReferenceNumber_Type? BusinessInstructionsandReferenceNumber?;
   Loop_1_0230_GType? Loop_1_0230?;
   IndividualorOrganizationalName_Type? IndividualorOrganizationalName?;
   LadingExceptionCode_Type? LadingExceptionCode?;
   ShipmentWeightPackagingandQuantityData_Type? ShipmentWeightPackagingandQuantityData?;
   MarksandNumbers_Type? MarksandNumbers?;
   Loop_1_0270_GType? Loop_1_0270?;
|};

public type PurchaseOrderReference_Type record {|
   string code = "PRF";
   string PRF01__PurchaseOrderNumber;
   string PRF02__ReleaseNumber?;
   string PRF03__ChangeOrderSequenceNumber?;
   string PRF04__Date?;
   string PRF05__AssignedIdentification?;
   string PRF06__ContractNumber?;
   string PRF07__PurchaseOrderTypeCode?;
|};

public type Loop_1_0330_GType record {|
   Name_Type? Name?;
   AdditionalNameInformation_Type? AdditionalNameInformation?;
   AddressInformation_Type? AddressInformation?;
   GeographicLocation_Type? GeographicLocation?;
   BusinessInstructionsandReferenceNumber_Type? BusinessInstructionsandReferenceNumber?;
|};

public type Loop_1_0400_GType record {|
   ShipmentStatusDetails_Type? ShipmentStatusDetails?;
   EquipmentShipmentorRealPropertyLocation_Type? EquipmentShipmentorRealPropertyLocation?;
   EquipmentorContainerOwnerandType_Type? EquipmentorContainerOwnerandType?;
|};

public type Loop_1_0380_GType record {|
   CartonPackageDetail_Type? CartonPackageDetail?;
   BusinessInstructionsandReferenceNumber_Type? BusinessInstructionsandReferenceNumber?;
   Loop_1_0400_GType? Loop_1_0400?;
   MarksandNumbers_Type? MarksandNumbers?;
|};

public type Loop_1_0320_GType record {|
   PurchaseOrderReference_Type? PurchaseOrderReference?;
   Loop_1_0330_GType? Loop_1_0330?;
   Loop_1_0380_GType? Loop_1_0380?;
|};

public type ShipmentPurchaseOrderDetail_Type record {|
   string code = "SPO";
   string SPO01__PurchaseOrderNumber;
   string SPO02__ReferenceIdentification?;
   string SPO03__UnitorBasisforMeasurementCode?;
   string SPO04__Quantity?;
   string SPO05__WeightUnitCode?;
   string SPO06__Weight?;
   string SPO07__ApplicationErrorConditionCode?;
   string SPO08__ReferenceIdentification?;
|};

public type DestinationQuantity_Type record {|
   string code = "SDQ";
   string SDQ01__UnitorBasisforMeasurementCode;
   string SDQ02__IdentificationCodeQualifier?;
   string SDQ03__IdentificationCode;
   string SDQ04__Quantity;
   string SDQ05__IdentificationCode?;
   string SDQ06__Quantity?;
   string SDQ07__IdentificationCode?;
   string SDQ08__Quantity?;
   string SDQ09__IdentificationCode?;
   string SDQ10__Quantity?;
   string SDQ11__IdentificationCode?;
   string SDQ12__Quantity?;
   string SDQ13__IdentificationCode?;
   string SDQ14__Quantity?;
   string SDQ15__IdentificationCode?;
   string SDQ16__Quantity?;
   string SDQ17__IdentificationCode?;
   string SDQ18__Quantity?;
   string SDQ19__IdentificationCode?;
   string SDQ20__Quantity?;
   string SDQ21__IdentificationCode?;
   string SDQ22__Quantity?;
   string SDQ23__LocationIdentifier?;
|};

public type Loop_1_0410_GType record {|
   ShipmentPurchaseOrderDetail_Type? ShipmentPurchaseOrderDetail?;
   DestinationQuantity_Type? DestinationQuantity?;
|};

public type ElectronicFormatIdentification_Type record {|
   string code = "EFI";
   string EFI01__SecurityLevelCode;
   string EFI02__Free_FormMessageText?;
   string EFI03__SecurityTechniqueCode?;
   string EFI04__VersionIdentifier?;
   string EFI05__ProgramIdentifier?;
   string EFI06__VersionIdentifier?;
   string EFI07__InterchangeFormat?;
   string EFI08__VersionIdentifier?;
   string EFI09__CompressionTechnique?;
   string EFI10__DrawingSheetSizeCode?;
   string EFI11__FileName?;
   string EFI12__BlockType?;
   float? EFI13__RecordLength?;
   float? EFI14__BlockLength?;
   string EFI15__VersionIdentifier?;
   string EFI16__FilterIDCode?;
|};

public type BinaryData_Type record {|
   string code = "BIN";
   float BIN01__LengthofBinaryData;
   string BIN02__BinaryData;
|};

public type Loop_1_0423_GType record {|
   ElectronicFormatIdentification_Type? ElectronicFormatIdentification?;
   BinaryData_Type? BinaryData?;
|};

public type Loop_1_0130_GType record {|
   AssignedNumber_Type? AssignedNumber?;
   Loop_1_0140_GType? Loop_1_0140?;
   BusinessInstructionsandReferenceNumber_Type? BusinessInstructionsandReferenceNumber?;
   MarksandNumbers_Type? MarksandNumbers?;
   LadingExceptionCode_Type? LadingExceptionCode?;
   Remarks_Type? Remarks?;
   BillofLadingHandlingRequirements_Type? BillofLadingHandlingRequirements?;
   ShipmentWeightPackagingandQuantityData_Type? ShipmentWeightPackagingandQuantityData?;
   Loop_1_0210_GType? Loop_1_0210?;
   Loop_1_0320_GType? Loop_1_0320?;
   Loop_1_0410_GType? Loop_1_0410?;
   Loop_1_0423_GType? Loop_1_0423?;
|};

public type TransactionSetTrailer_Type record {|
   string code = "SE";
   float SE01__NumberofIncludedSegments;
   string SE02__TransactionSetControlNumber;
|};

public type X12_004010_214_GType record {|
   TransactionSetHeader_Type? TransactionSetHeader?;
   BeginningSegmentforTransportationCarrierShipmentStatusMessage_Type? BeginningSegmentforTransportationCarrierShipmentStatusMessage?;
   BusinessInstructionsandReferenceNumber_Type? BusinessInstructionsandReferenceNumber?;
   MarksandNumbers_Type? MarksandNumbers?;
   Remarks_Type? Remarks?;
   Loop_1_0050_GType? Loop_1_0050?;
   InterlineInformation_Type? InterlineInformation?;
   Loop_1_0130_GType? Loop_1_0130?;
   TransactionSetTrailer_Type? TransactionSetTrailer?;
|};

public type FunctionalGroupTrailer_Type record {|
   string code = "GE";
   float GE01__NumberofTransactionSetsIncluded;
   float GE02__GroupControlNumber;
|};

public type X12_FunctionalGroup_GType record {|
   FunctionalGroupHeader_Type? FunctionalGroupHeader?;
   X12_004010_214_GType? X12_004010_214?;
   FunctionalGroupTrailer_Type? FunctionalGroupTrailer?;
|};

public type InterchangeControlTrailer_Type record {|
   string code = "IEA";
   float IEA01__NumberofIncludedFunctionalGroups;
   float IEA02__InterchangeControlNumber;
|};

public type EDI_214_X12_004010_214 record {|
   InterchangeControlHeader_Type? InterchangeControlHeader?;
   X12_FunctionalGroup_GType? X12_FunctionalGroup?;
   InterchangeControlTrailer_Type? InterchangeControlTrailer?;
|};



final readonly & json schemaJson = {"name":"EDI_214_X12_004010_214", "tag":"X12_004010_214", "delimiters":{"segment":"~", "field":"*", "component":":", "subcomponent":"NOT_USED", "repetition":"NOT_USED"}, "ignoreSegments":[], "preserveEmptyFields":true, "includeSegmentCode":true, "segments":[{"code":"ISA", "tag":"InterchangeControlHeader", "truncatable":true, "minOccurances":0, "maxOccurances":1, "fields":[{"tag":"code", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"ISA01__AuthorizationInformationQualifier", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"ISA02__AuthorizationInformation", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"ISA03__SecurityInformationQualifier", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"ISA04__SecurityInformation", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"ISA05__InterchangeIDQualifier", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"ISA06__InterchangeSenderID", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"ISA07__InterchangeIDQualifier", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"ISA08__InterchangeReceiverID", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"ISA09__InterchangeDate", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"ISA10__InterchangeTime", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"ISA11__InterchangeControlStandardsIdentifier", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"ISA12__InterchangeControlVersionNumber", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"ISA13__InterchangeControlNumber", "repeat":false, "required":true, "truncatable":true, "dataType":"float", "startIndex":-1, "length":-1, "components":[]}, {"tag":"ISA14__AcknowledgmentRequested", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"ISA15__UsageIndicator", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"ISA16__ComponentElementSeparator", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}]}, {"tag":"X12_FunctionalGroup", "minOccurances":0, "maxOccurances":1, "segments":[{"code":"GS", "tag":"FunctionalGroupHeader", "truncatable":true, "minOccurances":0, "maxOccurances":1, "fields":[{"tag":"code", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"GS01__FunctionalIdentifierCode", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"GS02__ApplicationSendersCode", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"GS03__ApplicationReceiversCode", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"GS04__Date", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"GS05__Time", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"GS06__GroupControlNumber", "repeat":false, "required":true, "truncatable":true, "dataType":"float", "startIndex":-1, "length":-1, "components":[]}, {"tag":"GS07__ResponsibleAgencyCode", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"GS08__VersionReleaseIndustryIdentifierCode", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}]}, {"tag":"X12_004010_214", "minOccurances":0, "maxOccurances":1, "segments":[{"code":"ST", "tag":"TransactionSetHeader", "truncatable":true, "minOccurances":0, "maxOccurances":1, "fields":[{"tag":"code", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"ST01__TransactionSetIdentifierCode", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"ST02__TransactionSetControlNumber", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}]}, {"code":"B10", "tag":"BeginningSegmentforTransportationCarrierShipmentStatusMessage", "truncatable":true, "minOccurances":0, "maxOccurances":1, "fields":[{"tag":"code", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"B1001__ReferenceIdentification", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"B1002__ShipmentIdentificationNumber", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"B1003__StandardCarrierAlphaCode", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"B1004__InquiryRequestNumber", "repeat":false, "required":false, "truncatable":true, "dataType":"float", "startIndex":-1, "length":-1, "components":[]}, {"tag":"B1005__ReferenceIdentificationQualifier", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"B1006__ReferenceIdentification", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"B1007__YesNoConditionorResponseCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}]}, {"code":"L11", "tag":"BusinessInstructionsandReferenceNumber", "truncatable":true, "minOccurances":0, "maxOccurances":1, "fields":[{"tag":"code", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"L1101__ReferenceIdentification", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"L1102__ReferenceIdentificationQualifier", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"L1103__Description", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}]}, {"code":"MAN", "tag":"MarksandNumbers", "truncatable":true, "minOccurances":0, "maxOccurances":1, "fields":[{"tag":"code", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"MAN01__MarksandNumbersQualifier", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"MAN02__MarksandNumbers", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"MAN03__MarksandNumbers", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"MAN04__MarksandNumbersQualifier", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"MAN05__MarksandNumbers", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"MAN06__MarksandNumbers", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}]}, {"code":"K1", "tag":"Remarks", "truncatable":true, "minOccurances":0, "maxOccurances":1, "fields":[{"tag":"code", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"K101__Free_FormMessage", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"K102__Free_FormMessage", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}]}, {"tag":"Loop_1_0050", "minOccurances":0, "maxOccurances":1, "segments":[{"code":"N1", "tag":"Name", "truncatable":true, "minOccurances":0, "maxOccurances":1, "fields":[{"tag":"code", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"N101__EntityIdentifierCode", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"N102__Name", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"N103__IdentificationCodeQualifier", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"N104__IdentificationCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"N105__EntityRelationshipCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"N106__EntityIdentifierCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}]}, {"code":"N2", "tag":"AdditionalNameInformation", "truncatable":true, "minOccurances":0, "maxOccurances":1, "fields":[{"tag":"code", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"N201__Name", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"N202__Name", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}]}, {"code":"N3", "tag":"AddressInformation", "truncatable":true, "minOccurances":0, "maxOccurances":1, "fields":[{"tag":"code", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"N301__AddressInformation", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"N302__AddressInformation", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}]}, {"code":"N4", "tag":"GeographicLocation", "truncatable":true, "minOccurances":0, "maxOccurances":1, "fields":[{"tag":"code", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"N401__CityName", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"N402__StateorProvinceCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"N403__PostalCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"N404__CountryCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"N405__LocationQualifier", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"N406__LocationIdentifier", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}]}, {"code":"G61", "tag":"Contact", "truncatable":true, "minOccurances":0, "maxOccurances":1, "fields":[{"tag":"code", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"G6101__ContactFunctionCode", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"G6102__Name", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"G6103__CommunicationNumberQualifier", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"G6104__CommunicationNumber", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"G6105__ContactInquiryReference", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}]}, {"code":"G62", "tag":"DateTime", "truncatable":true, "minOccurances":0, "maxOccurances":1, "fields":[{"tag":"code", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"G6201__DateQualifier", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"G6202__Date", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"G6203__TimeQualifier", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"G6204__Time", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"G6205__TimeCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}]}, {"code":"L11", "tag":"BusinessInstructionsandReferenceNumber", "truncatable":true, "minOccurances":0, "maxOccurances":1, "fields":[{"tag":"code", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"L1101__ReferenceIdentification", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"L1102__ReferenceIdentificationQualifier", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"L1103__Description", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}]}]}, {"code":"MS3", "tag":"InterlineInformation", "truncatable":true, "minOccurances":0, "maxOccurances":1, "fields":[{"tag":"code", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"MS301__StandardCarrierAlphaCode", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"MS302__RoutingSequenceCode", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"MS303__CityName", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"MS304__TransportationMethodTypeCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"MS305__StateorProvinceCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}]}, {"tag":"Loop_1_0130", "minOccurances":0, "maxOccurances":1, "segments":[{"code":"LX", "tag":"AssignedNumber", "truncatable":true, "minOccurances":0, "maxOccurances":1, "fields":[{"tag":"code", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"LX01__AssignedNumber", "repeat":false, "required":true, "truncatable":true, "dataType":"float", "startIndex":-1, "length":-1, "components":[]}]}, {"tag":"Loop_1_0140", "minOccurances":0, "maxOccurances":1, "segments":[{"code":"AT7", "tag":"ShipmentStatusDetails", "truncatable":true, "minOccurances":0, "maxOccurances":1, "fields":[{"tag":"code", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"AT701__ShipmentStatusCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"AT702__ShipmentStatusorAppointmentReasonCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"AT703__ShipmentAppointmentStatusCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"AT704__ShipmentStatusorAppointmentReasonCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"AT705__Date", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"AT706__Time", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"AT707__TimeCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}]}, {"code":"MS1", "tag":"EquipmentShipmentorRealPropertyLocation", "truncatable":true, "minOccurances":0, "maxOccurances":1, "fields":[{"tag":"code", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"MS101__CityName", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"MS102__StateorProvinceCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"MS103__CountryCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"MS104__LongitudeCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"MS105__LatitudeCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"MS106__DirectionIdentifierCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"MS107__DirectionIdentifierCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}]}, {"code":"MS2", "tag":"EquipmentorContainerOwnerandType", "truncatable":true, "minOccurances":0, "maxOccurances":1, "fields":[{"tag":"code", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"MS201__StandardCarrierAlphaCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"MS202__EquipmentNumber", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"MS203__EquipmentDescriptionCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"MS204__EquipmentNumberCheckDigit", "repeat":false, "required":false, "truncatable":true, "dataType":"float", "startIndex":-1, "length":-1, "components":[]}]}]}, {"code":"L11", "tag":"BusinessInstructionsandReferenceNumber", "truncatable":true, "minOccurances":0, "maxOccurances":1, "fields":[{"tag":"code", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"L1101__ReferenceIdentification", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"L1102__ReferenceIdentificationQualifier", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"L1103__Description", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}]}, {"code":"MAN", "tag":"MarksandNumbers", "truncatable":true, "minOccurances":0, "maxOccurances":1, "fields":[{"tag":"code", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"MAN01__MarksandNumbersQualifier", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"MAN02__MarksandNumbers", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"MAN03__MarksandNumbers", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"MAN04__MarksandNumbersQualifier", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"MAN05__MarksandNumbers", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"MAN06__MarksandNumbers", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}]}, {"code":"Q7", "tag":"LadingExceptionCode", "truncatable":true, "minOccurances":0, "maxOccurances":1, "fields":[{"tag":"code", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"Q701__LadingExceptionCode", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"Q702__PackagingFormCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"Q703__LadingQuantity", "repeat":false, "required":false, "truncatable":true, "dataType":"float", "startIndex":-1, "length":-1, "components":[]}]}, {"code":"K1", "tag":"Remarks", "truncatable":true, "minOccurances":0, "maxOccurances":1, "fields":[{"tag":"code", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"K101__Free_FormMessage", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"K102__Free_FormMessage", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}]}, {"code":"AT5", "tag":"BillofLadingHandlingRequirements", "truncatable":true, "minOccurances":0, "maxOccurances":1, "fields":[{"tag":"code", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"AT501__SpecialHandlingCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"AT502__SpecialServicesCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"AT503__SpecialHandlingDescription", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}]}, {"code":"AT8", "tag":"ShipmentWeightPackagingandQuantityData", "truncatable":true, "minOccurances":0, "maxOccurances":1, "fields":[{"tag":"code", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"AT801__WeightQualifier", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"AT802__WeightUnitCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"AT803__Weight", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"AT804__LadingQuantity", "repeat":false, "required":false, "truncatable":true, "dataType":"float", "startIndex":-1, "length":-1, "components":[]}, {"tag":"AT805__LadingQuantity", "repeat":false, "required":false, "truncatable":true, "dataType":"float", "startIndex":-1, "length":-1, "components":[]}, {"tag":"AT806__VolumeUnitQualifier", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"AT807__Volume", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}]}, {"tag":"Loop_1_0210", "minOccurances":0, "maxOccurances":1, "segments":[{"code":"CD3", "tag":"CartonPackageDetail", "truncatable":true, "minOccurances":0, "maxOccurances":1, "fields":[{"tag":"code", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"CD301__WeightQualifier", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"CD302__Weight", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"CD303__Zone", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"CD304__ServiceStandard", "repeat":false, "required":false, "truncatable":true, "dataType":"int", "startIndex":-1, "length":-1, "components":[]}, {"tag":"CD305__ServiceLevelCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"CD306__Pick_uporDeliveryCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"CD307__RateValueQualifier", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"CD308__Charge", "repeat":false, "required":false, "truncatable":true, "dataType":"float", "startIndex":-1, "length":-1, "components":[]}, {"tag":"CD309__RateValueQualifier", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"CD310__Charge", "repeat":false, "required":false, "truncatable":true, "dataType":"float", "startIndex":-1, "length":-1, "components":[]}, {"tag":"CD311__ServiceLevelCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"CD312__ServiceLevelCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"CD313__PaymentMethodCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"CD314__CountryCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}]}, {"code":"L11", "tag":"BusinessInstructionsandReferenceNumber", "truncatable":true, "minOccurances":0, "maxOccurances":1, "fields":[{"tag":"code", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"L1101__ReferenceIdentification", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"L1102__ReferenceIdentificationQualifier", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"L1103__Description", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}]}, {"tag":"Loop_1_0230", "minOccurances":0, "maxOccurances":1, "segments":[{"code":"AT7", "tag":"ShipmentStatusDetails", "truncatable":true, "minOccurances":0, "maxOccurances":1, "fields":[{"tag":"code", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"AT701__ShipmentStatusCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"AT702__ShipmentStatusorAppointmentReasonCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"AT703__ShipmentAppointmentStatusCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"AT704__ShipmentStatusorAppointmentReasonCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"AT705__Date", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"AT706__Time", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"AT707__TimeCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}]}, {"code":"MS1", "tag":"EquipmentShipmentorRealPropertyLocation", "truncatable":true, "minOccurances":0, "maxOccurances":1, "fields":[{"tag":"code", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"MS101__CityName", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"MS102__StateorProvinceCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"MS103__CountryCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"MS104__LongitudeCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"MS105__LatitudeCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"MS106__DirectionIdentifierCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"MS107__DirectionIdentifierCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}]}, {"code":"MS2", "tag":"EquipmentorContainerOwnerandType", "truncatable":true, "minOccurances":0, "maxOccurances":1, "fields":[{"tag":"code", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"MS201__StandardCarrierAlphaCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"MS202__EquipmentNumber", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"MS203__EquipmentDescriptionCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"MS204__EquipmentNumberCheckDigit", "repeat":false, "required":false, "truncatable":true, "dataType":"float", "startIndex":-1, "length":-1, "components":[]}]}]}, {"code":"NM1", "tag":"IndividualorOrganizationalName", "truncatable":true, "minOccurances":0, "maxOccurances":1, "fields":[{"tag":"code", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"NM101__EntityIdentifierCode", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"NM102__EntityTypeQualifier", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"NM103__NameLastorOrganizationName", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"NM104__NameFirst", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"NM105__NameMiddle", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"NM106__NamePrefix", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"NM107__NameSuffix", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"NM108__IdentificationCodeQualifier", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"NM109__IdentificationCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"NM110__EntityRelationshipCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"NM111__EntityIdentifierCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}]}, {"code":"Q7", "tag":"LadingExceptionCode", "truncatable":true, "minOccurances":0, "maxOccurances":1, "fields":[{"tag":"code", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"Q701__LadingExceptionCode", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"Q702__PackagingFormCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"Q703__LadingQuantity", "repeat":false, "required":false, "truncatable":true, "dataType":"float", "startIndex":-1, "length":-1, "components":[]}]}, {"code":"AT8", "tag":"ShipmentWeightPackagingandQuantityData", "truncatable":true, "minOccurances":0, "maxOccurances":1, "fields":[{"tag":"code", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"AT801__WeightQualifier", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"AT802__WeightUnitCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"AT803__Weight", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"AT804__LadingQuantity", "repeat":false, "required":false, "truncatable":true, "dataType":"float", "startIndex":-1, "length":-1, "components":[]}, {"tag":"AT805__LadingQuantity", "repeat":false, "required":false, "truncatable":true, "dataType":"float", "startIndex":-1, "length":-1, "components":[]}, {"tag":"AT806__VolumeUnitQualifier", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"AT807__Volume", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}]}, {"code":"MAN", "tag":"MarksandNumbers", "truncatable":true, "minOccurances":0, "maxOccurances":1, "fields":[{"tag":"code", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"MAN01__MarksandNumbersQualifier", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"MAN02__MarksandNumbers", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"MAN03__MarksandNumbers", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"MAN04__MarksandNumbersQualifier", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"MAN05__MarksandNumbers", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"MAN06__MarksandNumbers", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}]}, {"tag":"Loop_1_0270", "minOccurances":0, "maxOccurances":1, "segments":[{"code":"N1", "tag":"Name", "truncatable":true, "minOccurances":0, "maxOccurances":1, "fields":[{"tag":"code", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"N101__EntityIdentifierCode", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"N102__Name", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"N103__IdentificationCodeQualifier", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"N104__IdentificationCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"N105__EntityRelationshipCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"N106__EntityIdentifierCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}]}, {"code":"N2", "tag":"AdditionalNameInformation", "truncatable":true, "minOccurances":0, "maxOccurances":1, "fields":[{"tag":"code", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"N201__Name", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"N202__Name", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}]}, {"code":"N3", "tag":"AddressInformation", "truncatable":true, "minOccurances":0, "maxOccurances":1, "fields":[{"tag":"code", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"N301__AddressInformation", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"N302__AddressInformation", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}]}, {"code":"N4", "tag":"GeographicLocation", "truncatable":true, "minOccurances":0, "maxOccurances":1, "fields":[{"tag":"code", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"N401__CityName", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"N402__StateorProvinceCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"N403__PostalCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"N404__CountryCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"N405__LocationQualifier", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"N406__LocationIdentifier", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}]}, {"code":"L11", "tag":"BusinessInstructionsandReferenceNumber", "truncatable":true, "minOccurances":0, "maxOccurances":1, "fields":[{"tag":"code", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"L1101__ReferenceIdentification", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"L1102__ReferenceIdentificationQualifier", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"L1103__Description", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}]}]}]}, {"tag":"Loop_1_0320", "minOccurances":0, "maxOccurances":1, "segments":[{"code":"PRF", "tag":"PurchaseOrderReference", "truncatable":true, "minOccurances":0, "maxOccurances":1, "fields":[{"tag":"code", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"PRF01__PurchaseOrderNumber", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"PRF02__ReleaseNumber", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"PRF03__ChangeOrderSequenceNumber", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"PRF04__Date", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"PRF05__AssignedIdentification", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"PRF06__ContractNumber", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"PRF07__PurchaseOrderTypeCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}]}, {"tag":"Loop_1_0330", "minOccurances":0, "maxOccurances":1, "segments":[{"code":"N1", "tag":"Name", "truncatable":true, "minOccurances":0, "maxOccurances":1, "fields":[{"tag":"code", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"N101__EntityIdentifierCode", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"N102__Name", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"N103__IdentificationCodeQualifier", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"N104__IdentificationCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"N105__EntityRelationshipCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"N106__EntityIdentifierCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}]}, {"code":"N2", "tag":"AdditionalNameInformation", "truncatable":true, "minOccurances":0, "maxOccurances":1, "fields":[{"tag":"code", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"N201__Name", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"N202__Name", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}]}, {"code":"N3", "tag":"AddressInformation", "truncatable":true, "minOccurances":0, "maxOccurances":1, "fields":[{"tag":"code", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"N301__AddressInformation", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"N302__AddressInformation", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}]}, {"code":"N4", "tag":"GeographicLocation", "truncatable":true, "minOccurances":0, "maxOccurances":1, "fields":[{"tag":"code", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"N401__CityName", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"N402__StateorProvinceCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"N403__PostalCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"N404__CountryCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"N405__LocationQualifier", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"N406__LocationIdentifier", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}]}, {"code":"L11", "tag":"BusinessInstructionsandReferenceNumber", "truncatable":true, "minOccurances":0, "maxOccurances":1, "fields":[{"tag":"code", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"L1101__ReferenceIdentification", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"L1102__ReferenceIdentificationQualifier", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"L1103__Description", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}]}]}, {"tag":"Loop_1_0380", "minOccurances":0, "maxOccurances":1, "segments":[{"code":"CD3", "tag":"CartonPackageDetail", "truncatable":true, "minOccurances":0, "maxOccurances":1, "fields":[{"tag":"code", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"CD301__WeightQualifier", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"CD302__Weight", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"CD303__Zone", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"CD304__ServiceStandard", "repeat":false, "required":false, "truncatable":true, "dataType":"int", "startIndex":-1, "length":-1, "components":[]}, {"tag":"CD305__ServiceLevelCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"CD306__Pick_uporDeliveryCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"CD307__RateValueQualifier", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"CD308__Charge", "repeat":false, "required":false, "truncatable":true, "dataType":"float", "startIndex":-1, "length":-1, "components":[]}, {"tag":"CD309__RateValueQualifier", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"CD310__Charge", "repeat":false, "required":false, "truncatable":true, "dataType":"float", "startIndex":-1, "length":-1, "components":[]}, {"tag":"CD311__ServiceLevelCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"CD312__ServiceLevelCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"CD313__PaymentMethodCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"CD314__CountryCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}]}, {"code":"L11", "tag":"BusinessInstructionsandReferenceNumber", "truncatable":true, "minOccurances":0, "maxOccurances":1, "fields":[{"tag":"code", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"L1101__ReferenceIdentification", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"L1102__ReferenceIdentificationQualifier", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"L1103__Description", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}]}, {"tag":"Loop_1_0400", "minOccurances":0, "maxOccurances":1, "segments":[{"code":"AT7", "tag":"ShipmentStatusDetails", "truncatable":true, "minOccurances":0, "maxOccurances":1, "fields":[{"tag":"code", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"AT701__ShipmentStatusCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"AT702__ShipmentStatusorAppointmentReasonCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"AT703__ShipmentAppointmentStatusCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"AT704__ShipmentStatusorAppointmentReasonCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"AT705__Date", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"AT706__Time", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"AT707__TimeCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}]}, {"code":"MS1", "tag":"EquipmentShipmentorRealPropertyLocation", "truncatable":true, "minOccurances":0, "maxOccurances":1, "fields":[{"tag":"code", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"MS101__CityName", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"MS102__StateorProvinceCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"MS103__CountryCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"MS104__LongitudeCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"MS105__LatitudeCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"MS106__DirectionIdentifierCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"MS107__DirectionIdentifierCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}]}, {"code":"MS2", "tag":"EquipmentorContainerOwnerandType", "truncatable":true, "minOccurances":0, "maxOccurances":1, "fields":[{"tag":"code", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"MS201__StandardCarrierAlphaCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"MS202__EquipmentNumber", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"MS203__EquipmentDescriptionCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"MS204__EquipmentNumberCheckDigit", "repeat":false, "required":false, "truncatable":true, "dataType":"float", "startIndex":-1, "length":-1, "components":[]}]}]}, {"code":"MAN", "tag":"MarksandNumbers", "truncatable":true, "minOccurances":0, "maxOccurances":1, "fields":[{"tag":"code", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"MAN01__MarksandNumbersQualifier", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"MAN02__MarksandNumbers", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"MAN03__MarksandNumbers", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"MAN04__MarksandNumbersQualifier", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"MAN05__MarksandNumbers", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"MAN06__MarksandNumbers", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}]}]}]}, {"tag":"Loop_1_0410", "minOccurances":0, "maxOccurances":1, "segments":[{"code":"SPO", "tag":"ShipmentPurchaseOrderDetail", "truncatable":true, "minOccurances":0, "maxOccurances":1, "fields":[{"tag":"code", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"SPO01__PurchaseOrderNumber", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"SPO02__ReferenceIdentification", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"SPO03__UnitorBasisforMeasurementCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"SPO04__Quantity", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"SPO05__WeightUnitCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"SPO06__Weight", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"SPO07__ApplicationErrorConditionCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"SPO08__ReferenceIdentification", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}]}, {"code":"SDQ", "tag":"DestinationQuantity", "truncatable":true, "minOccurances":0, "maxOccurances":1, "fields":[{"tag":"code", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"SDQ01__UnitorBasisforMeasurementCode", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"SDQ02__IdentificationCodeQualifier", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"SDQ03__IdentificationCode", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"SDQ04__Quantity", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"SDQ05__IdentificationCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"SDQ06__Quantity", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"SDQ07__IdentificationCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"SDQ08__Quantity", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"SDQ09__IdentificationCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"SDQ10__Quantity", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"SDQ11__IdentificationCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"SDQ12__Quantity", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"SDQ13__IdentificationCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"SDQ14__Quantity", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"SDQ15__IdentificationCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"SDQ16__Quantity", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"SDQ17__IdentificationCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"SDQ18__Quantity", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"SDQ19__IdentificationCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"SDQ20__Quantity", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"SDQ21__IdentificationCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"SDQ22__Quantity", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"SDQ23__LocationIdentifier", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}]}]}, {"tag":"Loop_1_0423", "minOccurances":0, "maxOccurances":1, "segments":[{"code":"EFI", "tag":"ElectronicFormatIdentification", "truncatable":true, "minOccurances":0, "maxOccurances":1, "fields":[{"tag":"code", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"EFI01__SecurityLevelCode", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"EFI02__Free_FormMessageText", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"EFI03__SecurityTechniqueCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"EFI04__VersionIdentifier", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"EFI05__ProgramIdentifier", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"EFI06__VersionIdentifier", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"EFI07__InterchangeFormat", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"EFI08__VersionIdentifier", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"EFI09__CompressionTechnique", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"EFI10__DrawingSheetSizeCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"EFI11__FileName", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"EFI12__BlockType", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"EFI13__RecordLength", "repeat":false, "required":false, "truncatable":true, "dataType":"float", "startIndex":-1, "length":-1, "components":[]}, {"tag":"EFI14__BlockLength", "repeat":false, "required":false, "truncatable":true, "dataType":"float", "startIndex":-1, "length":-1, "components":[]}, {"tag":"EFI15__VersionIdentifier", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"EFI16__FilterIDCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}]}, {"code":"BIN", "tag":"BinaryData", "truncatable":true, "minOccurances":0, "maxOccurances":1, "fields":[{"tag":"code", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"BIN01__LengthofBinaryData", "repeat":false, "required":true, "truncatable":true, "dataType":"float", "startIndex":-1, "length":-1, "components":[]}, {"tag":"BIN02__BinaryData", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}]}]}]}, {"code":"SE", "tag":"TransactionSetTrailer", "truncatable":true, "minOccurances":0, "maxOccurances":1, "fields":[{"tag":"code", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"SE01__NumberofIncludedSegments", "repeat":false, "required":true, "truncatable":true, "dataType":"float", "startIndex":-1, "length":-1, "components":[]}, {"tag":"SE02__TransactionSetControlNumber", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}]}]}, {"code":"GE", "tag":"FunctionalGroupTrailer", "truncatable":true, "minOccurances":0, "maxOccurances":1, "fields":[{"tag":"code", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"GE01__NumberofTransactionSetsIncluded", "repeat":false, "required":true, "truncatable":true, "dataType":"float", "startIndex":-1, "length":-1, "components":[]}, {"tag":"GE02__GroupControlNumber", "repeat":false, "required":true, "truncatable":true, "dataType":"float", "startIndex":-1, "length":-1, "components":[]}]}]}, {"code":"IEA", "tag":"InterchangeControlTrailer", "truncatable":true, "minOccurances":0, "maxOccurances":1, "fields":[{"tag":"code", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"IEA01__NumberofIncludedFunctionalGroups", "repeat":false, "required":true, "truncatable":true, "dataType":"float", "startIndex":-1, "length":-1, "components":[]}, {"tag":"IEA02__InterchangeControlNumber", "repeat":false, "required":true, "truncatable":true, "dataType":"float", "startIndex":-1, "length":-1, "components":[]}]}], "segmentDefinitions":{}};
    
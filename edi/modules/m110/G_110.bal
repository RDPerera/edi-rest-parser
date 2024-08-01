
import ballerina/edi;

# Convert EDI string to Ballerina EDI_110_X12_004010_110 record.
# 
# + ediText - EDI string to be converted
# + return - Ballerina record or error
public isolated function fromEdiString(string ediText) returns EDI_110_X12_004010_110|error {
    edi:EdiSchema ediSchema = check edi:getSchema(schemaJson);
    json dataJson = check edi:fromEdiString(ediText, ediSchema);
    return dataJson.cloneWithType();
}

# Convert Ballerina EDI_110_X12_004010_110 record to EDI string.
# 
# + data - Ballerina record to be converted
# + return - EDI string or error
public isolated function toEdiString(EDI_110_X12_004010_110 data) returns string|error {
    edi:EdiSchema ediSchema = check edi:getSchema(schemaJson);
    return edi:toEdiString(data, ediSchema);    
} 

# Get the EDI schema.
# 
# + return - EDI schema or error
public isolated function getSchema() returns edi:EdiSchema|error {
    return edi:getSchema(schemaJson);
}

# Convert EDI string to Ballerina EDI_110_X12_004010_110 record with schema.
# 
# + ediText - EDI string to be converted
# + schema - EDI schema
# + return - Ballerina record or error
public isolated function fromEdiStringWithSchema(string ediText, edi:EdiSchema schema) returns EDI_110_X12_004010_110|error {
    json dataJson = check edi:fromEdiString(ediText, schema);
    return dataJson.cloneWithType();
}

# Convert Ballerina EDI_110_X12_004010_110 record to EDI string with schema.
# 
# + data - Ballerina record to be converted
# + ediSchema - EDI schema
# + return - EDI string or error
public isolated function toEdiStringWithSchema(EDI_110_X12_004010_110 data, edi:EdiSchema ediSchema) returns string|error {
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

public type BeginningSegmentforCarriersInvoice_Type record {|
   string code = "B3";
   string B301__ShipmentQualifier?;
   string B302__InvoiceNumber;
   string B303__ShipmentIdentificationNumber?;
   string B304__ShipmentMethodofPayment;
   string B305__WeightUnitCode?;
   string B306__Date;
   float B307__NetAmountDue;
   string B308__CorrectionIndicator?;
   string B309__DeliveryDate?;
   string B310__DateTimeQualifier?;
   string B311__StandardCarrierAlphaCode;
   string B312__Date?;
   string B313__TariffServiceCode?;
   string B314__TransportationTermsCode?;
|};

public type InvoiceType_Type record {|
   string code = "B3A";
   string B3A01__TransactionTypeCode;
   float? B3A02__NumberofShipments?;
|};

public type BankID_Type record {|
   string code = "C2";
   string C201__BankClientCode;
   string C202__IdentificationCodeQualifier;
   string C203__IdentificationCode;
   string C204__ClientBankNumber?;
   string C205__BankAccountNumber?;
   string C206__PaymentMethodCode?;
   string C207__Date?;
|};

public type Currency_Type record {|
   string code = "C3";
   string C301__CurrencyCode;
   string C302__ExchangeRate?;
   string C303__CurrencyCode?;
   string C304__CurrencyCode?;
|};

public type TermsofSaleDeferredTermsofSale_Type record {|
   string code = "ITD";
   string ITD01__TermsTypeCode?;
   string ITD02__TermsBasisDateCode?;
   string ITD03__TermsDiscountPercent?;
   string ITD04__TermsDiscountDueDate?;
   float? ITD05__TermsDiscountDaysDue?;
   string ITD06__TermsNetDueDate?;
   float? ITD07__TermsNetDays?;
   float? ITD08__TermsDiscountAmount?;
   string ITD09__TermsDeferredDueDate?;
   float? ITD10__DeferredAmountDue?;
   string ITD11__PercentofInvoicePayable?;
   string ITD12__Description?;
   float? ITD13__DayofMonth?;
   string ITD14__PaymentMethodCode?;
   string ITD15__Percent?;
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

public type N907_ReferenceIdentifier_GType record {|
   string N907_01_ReferenceIdentificationQualifier;
   string N907_02_ReferenceIdentification;
   string N907_03_ReferenceIdentificationQualifier;
   string N907_04_ReferenceIdentification;
   string N907_05_ReferenceIdentificationQualifier;
   string N907_06_ReferenceIdentification;
|};

public type ReferenceIdentification_Type record {|
   string code = "N9";
   string N901__ReferenceIdentificationQualifier;
   string N902__ReferenceIdentification?;
   string N903__Free_formDescription?;
   string N904__Date?;
   string N905__Time?;
   string N906__TimeCode?;
   N907_ReferenceIdentifier_GType? N907_ReferenceIdentifier?;
|};

public type AdministrativeCommunicationsContact_Type record {|
   string code = "PER";
   string PER01__ContactFunctionCode;
   string PER02__Name?;
   string PER03__CommunicationNumberQualifier?;
   string PER04__CommunicationNumber?;
   string PER05__CommunicationNumberQualifier?;
   string PER06__CommunicationNumber?;
   string PER07__CommunicationNumberQualifier?;
   string PER08__CommunicationNumber?;
   string PER09__ContactInquiryReference?;
|};

public type Loop_1_0075_GType record {|
   Name_Type? Name?;
   AdditionalNameInformation_Type? AdditionalNameInformation?;
   AddressInformation_Type? AddressInformation?;
   GeographicLocation_Type? GeographicLocation?;
   ReferenceIdentification_Type? ReferenceIdentification?;
   AdministrativeCommunicationsContact_Type? AdministrativeCommunicationsContact?;
|};

public type AssignedNumber_Type record {|
   string code = "LX";
   float LX01__AssignedNumber;
|};

public type Loop_2_0020_GType record {|
   Name_Type? Name?;
   AdditionalNameInformation_Type? AdditionalNameInformation?;
   AddressInformation_Type? AddressInformation?;
   GeographicLocation_Type? GeographicLocation?;
   ReferenceIdentification_Type? ReferenceIdentification?;
   AdministrativeCommunicationsContact_Type? AdministrativeCommunicationsContact?;
|};

public type Pick_up_Type record {|
   string code = "P1";
   string P101__Pick_uporDeliveryCode?;
   string P102__Pick_upDate;
   string P103__DateTimeQualifier;
   string P104__Pick_upTime?;
   string P105__EquipmentInitial?;
   string P106__EquipmentNumber?;
   float? P107__NumberofShipments?;
|};

public type RouteInformationAir_Type record {|
   string code = "R1";
   string R101__StandardCarrierAlphaCode?;
   string R102__StandardCarrierAlphaCode?;
   string R103__AirportCode;
   string R104__AirCarrierCode;
   string R105__AirportCode;
   string R106__AirCarrierCode?;
   string R107__AirportCode?;
   string R108__AirCarrierCode?;
   string R109__AirportCode?;
   string R110__AirCarrierCode?;
   string R111__AirportCode?;
   string R112__AirCarrierCode?;
   string R113__AirportCode?;
|};

public type ProofofDelivery_Type record {|
   string code = "POD";
   string POD01__Date;
   string POD02__Time?;
   string POD03__Name;
|};

public type EventDetail_Type record {|
   string code = "V9";
   string V901__EventCode;
   string V902__Event?;
   string V903__Date?;
   string V904__Time?;
   string V905__CityName?;
   string V906__StateorProvinceCode?;
   string V907__CountryCode?;
   string V908__StatusReasonCode?;
   string V909__StandardPointLocationCode?;
   string V910__Quantity?;
   string V911__TrainDelayReasonCode?;
   string V912__Free_FormMessage?;
   string V913__TimeCode?;
   string V914__Quantity?;
   string V915__StandardPointLocationCode?;
   float? V916__TotalEquipment?;
   float? V917__TotalEquipment?;
   float? V918__TotalEquipment?;
   string V919__Weight?;
   string V920__Length?;
|};

public type RemittanceAdvice_Type record {|
   string code = "RMT";
   string RMT01__ReferenceIdentificationQualifier;
   string RMT02__ReferenceIdentification;
   string RMT03__MonetaryAmount?;
   string RMT04__MonetaryAmount?;
   string RMT05__MonetaryAmount?;
   string RMT06__MonetaryAmount?;
   string RMT07__MonetaryAmount?;
   string RMT08__MonetaryAmount?;
   string RMT09__AdjustmentReasonCode?;
   string RMT10__Description?;
|};

public type StatementIdentification_Type record {|
   string code = "G47";
   string G4701__Date;
   string G4702__StatementNumber;
|};

public type NoteSpecialInstruction_Type record {|
   string code = "NTE";
   string NTE01__NoteReferenceCode?;
   string NTE02__Description;
|};

public type DescriptionMarksandNumbers_Type record {|
   string code = "L5";
   float? L501__LadingLineItemNumber?;
   string L502__LadingDescription?;
   string L503__CommodityCode?;
   string L504__CommodityCodeQualifier?;
   string L505__PackagingCode?;
   string L506__MarksandNumbers?;
   string L507__MarksandNumbersQualifier?;
   string L508__CommodityCodeQualifier?;
   string L509__CommodityCode?;
   string L510__CompartmentIDCode?;
|};

public type LineItem_QuantityandWeight_Type record {|
   string code = "L0";
   float? L001__LadingLineItemNumber?;
   string L002__BilledRated_asQuantity?;
   string L003__BilledRated_asQualifier?;
   string L004__Weight?;
   string L005__WeightQualifier?;
   string L006__Volume?;
   string L007__VolumeUnitQualifier?;
   float? L008__LadingQuantity?;
   string L009__PackagingFormCode?;
   string L010__DunnageDescription?;
   string L011__WeightUnitCode?;
   string L012__TypeofServiceCode?;
   string L013__Quantity?;
   string L014__PackagingFormCode?;
   string L015__YesNoConditionorResponseCode?;
|};

public type Measurement_Type record {|
   string code = "L4";
   string L401__Length;
   string L402__Width;
   string L403__Height;
   string L404__MeasurementUnitQualifier;
   string L405__Quantity?;
   string L406__IndustryCode?;
|};

public type Weight_Type record {|
   string code = "L10";
   string L1001__Weight;
   string L1002__WeightQualifier;
   string L1003__WeightUnitCode?;
|};

public type TariffReference_Type record {|
   string code = "SL1";
   string SL101__ServiceLevelCode;
   string SL102__TariffNumber?;
   string SL103__CommodityCode?;
   string SL104__Scale?;
   string SL105__Date?;
   string SL106__ServiceLevelCode?;
   string SL107__ShipmentMethodofPayment?;
   string SL108__DataSourceCode?;
   string SL109__InternationalDomesticCode?;
|};

public type RateandCharges_Type record {|
   string code = "L1";
   float? L101__LadingLineItemNumber?;
   string L102__FreightRate?;
   string L103__RateValueQualifier?;
   float? L104__Charge?;
   float? L105__Advances?;
   float? L106__PrepaidAmount?;
   string L107__RateCombinationPointCode?;
   string L108__SpecialChargeorAllowanceCode?;
   string L109__RateClassCode?;
   string L110__EntitlementCode?;
   string L111__ChargeMethodofPayment?;
   string L112__SpecialChargeDescription?;
   string L113__TariffApplicationCode?;
   float? L114__DeclaredValue?;
   string L115__RateValueQualifier?;
   string L116__LadingLiabilityCode?;
   string L117__BilledRated_asQuantity?;
   string L118__BilledRated_asQualifier?;
   string L119__Percent?;
   string L120__CurrencyCode?;
   float? L121__Amount?;
|};

public type Loop_2_0175_GType record {|
   RateandCharges_Type? RateandCharges?;
   Currency_Type? Currency?;
|};

public type Loop_2_0150_GType record {|
   DescriptionMarksandNumbers_Type? DescriptionMarksandNumbers?;
   LineItem_QuantityandWeight_Type? LineItem_QuantityandWeight?;
   Measurement_Type? Measurement?;
   Weight_Type? Weight?;
   TariffReference_Type? TariffReference?;
   Loop_2_0175_GType? Loop_2_0175?;
|};

public type Loop_2_0010_GType record {|
   AssignedNumber_Type? AssignedNumber?;
   Loop_2_0020_GType? Loop_2_0020?;
   Pick_up_Type? Pick_up?;
   RouteInformationAir_Type? RouteInformationAir?;
   ProofofDelivery_Type? ProofofDelivery?;
   EventDetail_Type? EventDetail?;
   RemittanceAdvice_Type? RemittanceAdvice?;
   StatementIdentification_Type? StatementIdentification?;
   NoteSpecialInstruction_Type? NoteSpecialInstruction?;
   Loop_2_0150_GType? Loop_2_0150?;
|};

public type TotalWeightandCharges_Type record {|
   string code = "L3";
   string L301__Weight?;
   string L302__WeightQualifier?;
   string L303__FreightRate?;
   string L304__RateValueQualifier?;
   float? L305__Charge?;
   float? L306__Advances?;
   float? L307__PrepaidAmount?;
   string L308__SpecialChargeorAllowanceCode?;
   string L309__Volume?;
   string L310__VolumeUnitQualifier?;
   float? L311__LadingQuantity?;
   string L312__WeightUnitCode?;
   string L313__TariffNumber?;
   float? L314__DeclaredValue?;
   string L315__RateValueQualifier?;
|};

public type AncillaryCharges_Type record {|
   string code = "ACS";
   float ACS01__Amount;
   string ACS02__SpecialChargeorAllowanceCode;
   string ACS03__Description?;
   string ACS04__ShipmentMethodofPayment?;
|};

public type TransactionSetTrailer_Type record {|
   string code = "SE";
   float SE01__NumberofIncludedSegments;
   string SE02__TransactionSetControlNumber;
|};

public type X12_004010_110_GType record {|
   TransactionSetHeader_Type? TransactionSetHeader?;
   BeginningSegmentforCarriersInvoice_Type? BeginningSegmentforCarriersInvoice?;
   InvoiceType_Type? InvoiceType?;
   BankID_Type? BankID?;
   Currency_Type? Currency?;
   TermsofSaleDeferredTermsofSale_Type? TermsofSaleDeferredTermsofSale?;
   Loop_1_0075_GType? Loop_1_0075?;
   Loop_2_0010_GType? Loop_2_0010?;
   TotalWeightandCharges_Type? TotalWeightandCharges?;
   AncillaryCharges_Type? AncillaryCharges?;
   NoteSpecialInstruction_Type? NoteSpecialInstruction?;
   TransactionSetTrailer_Type? TransactionSetTrailer?;
|};

public type FunctionalGroupTrailer_Type record {|
   string code = "GE";
   float GE01__NumberofTransactionSetsIncluded;
   float GE02__GroupControlNumber;
|};

public type X12_FunctionalGroup_GType record {|
   FunctionalGroupHeader_Type? FunctionalGroupHeader?;
   X12_004010_110_GType? X12_004010_110?;
   FunctionalGroupTrailer_Type? FunctionalGroupTrailer?;
|};

public type InterchangeControlTrailer_Type record {|
   string code = "IEA";
   float IEA01__NumberofIncludedFunctionalGroups;
   float IEA02__InterchangeControlNumber;
|};

public type EDI_110_X12_004010_110 record {|
   InterchangeControlHeader_Type? InterchangeControlHeader?;
   X12_FunctionalGroup_GType? X12_FunctionalGroup?;
   InterchangeControlTrailer_Type? InterchangeControlTrailer?;
|};



final readonly & json schemaJson = {"name":"EDI_110_X12_004010_110", "tag":"X12_004010_110", "delimiters":{"segment":"~", "field":"*", "component":":", "subcomponent":"NOT_USED", "repetition":"NOT_USED"}, "ignoreSegments":[], "preserveEmptyFields":true, "includeSegmentCode":true, "segments":[{"code":"ISA", "tag":"InterchangeControlHeader", "truncatable":true, "minOccurances":0, "maxOccurances":1, "fields":[{"tag":"code", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"ISA01__AuthorizationInformationQualifier", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"ISA02__AuthorizationInformation", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"ISA03__SecurityInformationQualifier", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"ISA04__SecurityInformation", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"ISA05__InterchangeIDQualifier", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"ISA06__InterchangeSenderID", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"ISA07__InterchangeIDQualifier", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"ISA08__InterchangeReceiverID", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"ISA09__InterchangeDate", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"ISA10__InterchangeTime", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"ISA11__InterchangeControlStandardsIdentifier", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"ISA12__InterchangeControlVersionNumber", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"ISA13__InterchangeControlNumber", "repeat":false, "required":true, "truncatable":true, "dataType":"float", "startIndex":-1, "length":-1, "components":[]}, {"tag":"ISA14__AcknowledgmentRequested", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"ISA15__UsageIndicator", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"ISA16__ComponentElementSeparator", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}]}, {"tag":"X12_FunctionalGroup", "minOccurances":0, "maxOccurances":1, "segments":[{"code":"GS", "tag":"FunctionalGroupHeader", "truncatable":true, "minOccurances":0, "maxOccurances":1, "fields":[{"tag":"code", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"GS01__FunctionalIdentifierCode", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"GS02__ApplicationSendersCode", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"GS03__ApplicationReceiversCode", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"GS04__Date", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"GS05__Time", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"GS06__GroupControlNumber", "repeat":false, "required":true, "truncatable":true, "dataType":"float", "startIndex":-1, "length":-1, "components":[]}, {"tag":"GS07__ResponsibleAgencyCode", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"GS08__VersionReleaseIndustryIdentifierCode", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}]}, {"tag":"X12_004010_110", "minOccurances":0, "maxOccurances":1, "segments":[{"code":"ST", "tag":"TransactionSetHeader", "truncatable":true, "minOccurances":0, "maxOccurances":1, "fields":[{"tag":"code", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"ST01__TransactionSetIdentifierCode", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"ST02__TransactionSetControlNumber", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}]}, {"code":"B3", "tag":"BeginningSegmentforCarriersInvoice", "truncatable":true, "minOccurances":0, "maxOccurances":1, "fields":[{"tag":"code", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"B301__ShipmentQualifier", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"B302__InvoiceNumber", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"B303__ShipmentIdentificationNumber", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"B304__ShipmentMethodofPayment", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"B305__WeightUnitCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"B306__Date", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"B307__NetAmountDue", "repeat":false, "required":true, "truncatable":true, "dataType":"float", "startIndex":-1, "length":-1, "components":[]}, {"tag":"B308__CorrectionIndicator", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"B309__DeliveryDate", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"B310__DateTimeQualifier", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"B311__StandardCarrierAlphaCode", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"B312__Date", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"B313__TariffServiceCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"B314__TransportationTermsCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}]}, {"code":"B3A", "tag":"InvoiceType", "truncatable":true, "minOccurances":0, "maxOccurances":1, "fields":[{"tag":"code", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"B3A01__TransactionTypeCode", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"B3A02__NumberofShipments", "repeat":false, "required":false, "truncatable":true, "dataType":"float", "startIndex":-1, "length":-1, "components":[]}]}, {"code":"C2", "tag":"BankID", "truncatable":true, "minOccurances":0, "maxOccurances":1, "fields":[{"tag":"code", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"C201__BankClientCode", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"C202__IdentificationCodeQualifier", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"C203__IdentificationCode", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"C204__ClientBankNumber", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"C205__BankAccountNumber", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"C206__PaymentMethodCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"C207__Date", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}]}, {"code":"C3", "tag":"Currency", "truncatable":true, "minOccurances":0, "maxOccurances":1, "fields":[{"tag":"code", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"C301__CurrencyCode", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"C302__ExchangeRate", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"C303__CurrencyCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"C304__CurrencyCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}]}, {"code":"ITD", "tag":"TermsofSaleDeferredTermsofSale", "truncatable":true, "minOccurances":0, "maxOccurances":1, "fields":[{"tag":"code", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"ITD01__TermsTypeCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"ITD02__TermsBasisDateCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"ITD03__TermsDiscountPercent", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"ITD04__TermsDiscountDueDate", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"ITD05__TermsDiscountDaysDue", "repeat":false, "required":false, "truncatable":true, "dataType":"float", "startIndex":-1, "length":-1, "components":[]}, {"tag":"ITD06__TermsNetDueDate", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"ITD07__TermsNetDays", "repeat":false, "required":false, "truncatable":true, "dataType":"float", "startIndex":-1, "length":-1, "components":[]}, {"tag":"ITD08__TermsDiscountAmount", "repeat":false, "required":false, "truncatable":true, "dataType":"float", "startIndex":-1, "length":-1, "components":[]}, {"tag":"ITD09__TermsDeferredDueDate", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"ITD10__DeferredAmountDue", "repeat":false, "required":false, "truncatable":true, "dataType":"float", "startIndex":-1, "length":-1, "components":[]}, {"tag":"ITD11__PercentofInvoicePayable", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"ITD12__Description", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"ITD13__DayofMonth", "repeat":false, "required":false, "truncatable":true, "dataType":"float", "startIndex":-1, "length":-1, "components":[]}, {"tag":"ITD14__PaymentMethodCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"ITD15__Percent", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}]}, {"tag":"Loop_1_0075", "minOccurances":0, "maxOccurances":1, "segments":[{"code":"N1", "tag":"Name", "truncatable":true, "minOccurances":0, "maxOccurances":1, "fields":[{"tag":"code", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"N101__EntityIdentifierCode", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"N102__Name", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"N103__IdentificationCodeQualifier", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"N104__IdentificationCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"N105__EntityRelationshipCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"N106__EntityIdentifierCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}]}, {"code":"N2", "tag":"AdditionalNameInformation", "truncatable":true, "minOccurances":0, "maxOccurances":1, "fields":[{"tag":"code", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"N201__Name", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"N202__Name", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}]}, {"code":"N3", "tag":"AddressInformation", "truncatable":true, "minOccurances":0, "maxOccurances":1, "fields":[{"tag":"code", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"N301__AddressInformation", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"N302__AddressInformation", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}]}, {"code":"N4", "tag":"GeographicLocation", "truncatable":true, "minOccurances":0, "maxOccurances":1, "fields":[{"tag":"code", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"N401__CityName", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"N402__StateorProvinceCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"N403__PostalCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"N404__CountryCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"N405__LocationQualifier", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"N406__LocationIdentifier", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}]}, {"code":"N9", "tag":"ReferenceIdentification", "truncatable":true, "minOccurances":0, "maxOccurances":1, "fields":[{"tag":"code", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"N901__ReferenceIdentificationQualifier", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"N902__ReferenceIdentification", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"N903__Free_formDescription", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"N904__Date", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"N905__Time", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"N906__TimeCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"N907_ReferenceIdentifier", "repeat":false, "required":false, "truncatable":true, "dataType":"composite", "startIndex":-1, "length":-1, "components":[{"tag":"N907_01_ReferenceIdentificationQualifier", "required":true, "truncatable":true, "dataType":"string", "subcomponents":[]}, {"tag":"N907_02_ReferenceIdentification", "required":true, "truncatable":true, "dataType":"string", "subcomponents":[]}, {"tag":"N907_03_ReferenceIdentificationQualifier", "required":true, "truncatable":true, "dataType":"string", "subcomponents":[]}, {"tag":"N907_04_ReferenceIdentification", "required":true, "truncatable":true, "dataType":"string", "subcomponents":[]}, {"tag":"N907_05_ReferenceIdentificationQualifier", "required":true, "truncatable":true, "dataType":"string", "subcomponents":[]}, {"tag":"N907_06_ReferenceIdentification", "required":true, "truncatable":true, "dataType":"string", "subcomponents":[]}]}]}, {"code":"PER", "tag":"AdministrativeCommunicationsContact", "truncatable":true, "minOccurances":0, "maxOccurances":1, "fields":[{"tag":"code", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"PER01__ContactFunctionCode", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"PER02__Name", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"PER03__CommunicationNumberQualifier", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"PER04__CommunicationNumber", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"PER05__CommunicationNumberQualifier", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"PER06__CommunicationNumber", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"PER07__CommunicationNumberQualifier", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"PER08__CommunicationNumber", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"PER09__ContactInquiryReference", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}]}]}, {"tag":"Loop_2_0010", "minOccurances":0, "maxOccurances":1, "segments":[{"code":"LX", "tag":"AssignedNumber", "truncatable":true, "minOccurances":0, "maxOccurances":1, "fields":[{"tag":"code", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"LX01__AssignedNumber", "repeat":false, "required":true, "truncatable":true, "dataType":"float", "startIndex":-1, "length":-1, "components":[]}]}, {"tag":"Loop_2_0020", "minOccurances":0, "maxOccurances":1, "segments":[{"code":"N1", "tag":"Name", "truncatable":true, "minOccurances":0, "maxOccurances":1, "fields":[{"tag":"code", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"N101__EntityIdentifierCode", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"N102__Name", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"N103__IdentificationCodeQualifier", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"N104__IdentificationCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"N105__EntityRelationshipCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"N106__EntityIdentifierCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}]}, {"code":"N2", "tag":"AdditionalNameInformation", "truncatable":true, "minOccurances":0, "maxOccurances":1, "fields":[{"tag":"code", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"N201__Name", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"N202__Name", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}]}, {"code":"N3", "tag":"AddressInformation", "truncatable":true, "minOccurances":0, "maxOccurances":1, "fields":[{"tag":"code", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"N301__AddressInformation", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"N302__AddressInformation", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}]}, {"code":"N4", "tag":"GeographicLocation", "truncatable":true, "minOccurances":0, "maxOccurances":1, "fields":[{"tag":"code", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"N401__CityName", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"N402__StateorProvinceCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"N403__PostalCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"N404__CountryCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"N405__LocationQualifier", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"N406__LocationIdentifier", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}]}, {"code":"N9", "tag":"ReferenceIdentification", "truncatable":true, "minOccurances":0, "maxOccurances":1, "fields":[{"tag":"code", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"N901__ReferenceIdentificationQualifier", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"N902__ReferenceIdentification", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"N903__Free_formDescription", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"N904__Date", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"N905__Time", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"N906__TimeCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"N907_ReferenceIdentifier", "repeat":false, "required":false, "truncatable":true, "dataType":"composite", "startIndex":-1, "length":-1, "components":[{"tag":"N907_01_ReferenceIdentificationQualifier", "required":true, "truncatable":true, "dataType":"string", "subcomponents":[]}, {"tag":"N907_02_ReferenceIdentification", "required":true, "truncatable":true, "dataType":"string", "subcomponents":[]}, {"tag":"N907_03_ReferenceIdentificationQualifier", "required":true, "truncatable":true, "dataType":"string", "subcomponents":[]}, {"tag":"N907_04_ReferenceIdentification", "required":true, "truncatable":true, "dataType":"string", "subcomponents":[]}, {"tag":"N907_05_ReferenceIdentificationQualifier", "required":true, "truncatable":true, "dataType":"string", "subcomponents":[]}, {"tag":"N907_06_ReferenceIdentification", "required":true, "truncatable":true, "dataType":"string", "subcomponents":[]}]}]}, {"code":"PER", "tag":"AdministrativeCommunicationsContact", "truncatable":true, "minOccurances":0, "maxOccurances":1, "fields":[{"tag":"code", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"PER01__ContactFunctionCode", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"PER02__Name", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"PER03__CommunicationNumberQualifier", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"PER04__CommunicationNumber", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"PER05__CommunicationNumberQualifier", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"PER06__CommunicationNumber", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"PER07__CommunicationNumberQualifier", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"PER08__CommunicationNumber", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"PER09__ContactInquiryReference", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}]}]}, {"code":"P1", "tag":"Pick_up", "truncatable":true, "minOccurances":0, "maxOccurances":1, "fields":[{"tag":"code", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"P101__Pick_uporDeliveryCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"P102__Pick_upDate", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"P103__DateTimeQualifier", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"P104__Pick_upTime", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"P105__EquipmentInitial", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"P106__EquipmentNumber", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"P107__NumberofShipments", "repeat":false, "required":false, "truncatable":true, "dataType":"float", "startIndex":-1, "length":-1, "components":[]}]}, {"code":"R1", "tag":"RouteInformationAir", "truncatable":true, "minOccurances":0, "maxOccurances":1, "fields":[{"tag":"code", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"R101__StandardCarrierAlphaCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"R102__StandardCarrierAlphaCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"R103__AirportCode", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"R104__AirCarrierCode", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"R105__AirportCode", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"R106__AirCarrierCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"R107__AirportCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"R108__AirCarrierCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"R109__AirportCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"R110__AirCarrierCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"R111__AirportCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"R112__AirCarrierCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"R113__AirportCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}]}, {"code":"POD", "tag":"ProofofDelivery", "truncatable":true, "minOccurances":0, "maxOccurances":1, "fields":[{"tag":"code", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"POD01__Date", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"POD02__Time", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"POD03__Name", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}]}, {"code":"V9", "tag":"EventDetail", "truncatable":true, "minOccurances":0, "maxOccurances":1, "fields":[{"tag":"code", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"V901__EventCode", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"V902__Event", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"V903__Date", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"V904__Time", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"V905__CityName", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"V906__StateorProvinceCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"V907__CountryCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"V908__StatusReasonCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"V909__StandardPointLocationCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"V910__Quantity", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"V911__TrainDelayReasonCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"V912__Free_FormMessage", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"V913__TimeCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"V914__Quantity", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"V915__StandardPointLocationCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"V916__TotalEquipment", "repeat":false, "required":false, "truncatable":true, "dataType":"float", "startIndex":-1, "length":-1, "components":[]}, {"tag":"V917__TotalEquipment", "repeat":false, "required":false, "truncatable":true, "dataType":"float", "startIndex":-1, "length":-1, "components":[]}, {"tag":"V918__TotalEquipment", "repeat":false, "required":false, "truncatable":true, "dataType":"float", "startIndex":-1, "length":-1, "components":[]}, {"tag":"V919__Weight", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"V920__Length", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}]}, {"code":"RMT", "tag":"RemittanceAdvice", "truncatable":true, "minOccurances":0, "maxOccurances":1, "fields":[{"tag":"code", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"RMT01__ReferenceIdentificationQualifier", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"RMT02__ReferenceIdentification", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"RMT03__MonetaryAmount", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"RMT04__MonetaryAmount", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"RMT05__MonetaryAmount", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"RMT06__MonetaryAmount", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"RMT07__MonetaryAmount", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"RMT08__MonetaryAmount", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"RMT09__AdjustmentReasonCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"RMT10__Description", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}]}, {"code":"G47", "tag":"StatementIdentification", "truncatable":true, "minOccurances":0, "maxOccurances":1, "fields":[{"tag":"code", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"G4701__Date", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"G4702__StatementNumber", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}]}, {"code":"NTE", "tag":"NoteSpecialInstruction", "truncatable":true, "minOccurances":0, "maxOccurances":1, "fields":[{"tag":"code", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"NTE01__NoteReferenceCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"NTE02__Description", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}]}, {"tag":"Loop_2_0150", "minOccurances":0, "maxOccurances":1, "segments":[{"code":"L5", "tag":"DescriptionMarksandNumbers", "truncatable":true, "minOccurances":0, "maxOccurances":1, "fields":[{"tag":"code", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"L501__LadingLineItemNumber", "repeat":false, "required":false, "truncatable":true, "dataType":"float", "startIndex":-1, "length":-1, "components":[]}, {"tag":"L502__LadingDescription", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"L503__CommodityCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"L504__CommodityCodeQualifier", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"L505__PackagingCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"L506__MarksandNumbers", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"L507__MarksandNumbersQualifier", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"L508__CommodityCodeQualifier", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"L509__CommodityCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"L510__CompartmentIDCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}]}, {"code":"L0", "tag":"LineItem_QuantityandWeight", "truncatable":true, "minOccurances":0, "maxOccurances":1, "fields":[{"tag":"code", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"L001__LadingLineItemNumber", "repeat":false, "required":false, "truncatable":true, "dataType":"float", "startIndex":-1, "length":-1, "components":[]}, {"tag":"L002__BilledRated_asQuantity", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"L003__BilledRated_asQualifier", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"L004__Weight", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"L005__WeightQualifier", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"L006__Volume", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"L007__VolumeUnitQualifier", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"L008__LadingQuantity", "repeat":false, "required":false, "truncatable":true, "dataType":"float", "startIndex":-1, "length":-1, "components":[]}, {"tag":"L009__PackagingFormCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"L010__DunnageDescription", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"L011__WeightUnitCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"L012__TypeofServiceCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"L013__Quantity", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"L014__PackagingFormCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"L015__YesNoConditionorResponseCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}]}, {"code":"L4", "tag":"Measurement", "truncatable":true, "minOccurances":0, "maxOccurances":1, "fields":[{"tag":"code", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"L401__Length", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"L402__Width", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"L403__Height", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"L404__MeasurementUnitQualifier", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"L405__Quantity", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"L406__IndustryCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}]}, {"code":"L10", "tag":"Weight", "truncatable":true, "minOccurances":0, "maxOccurances":1, "fields":[{"tag":"code", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"L1001__Weight", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"L1002__WeightQualifier", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"L1003__WeightUnitCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}]}, {"code":"SL1", "tag":"TariffReference", "truncatable":true, "minOccurances":0, "maxOccurances":1, "fields":[{"tag":"code", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"SL101__ServiceLevelCode", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"SL102__TariffNumber", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"SL103__CommodityCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"SL104__Scale", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"SL105__Date", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"SL106__ServiceLevelCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"SL107__ShipmentMethodofPayment", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"SL108__DataSourceCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"SL109__InternationalDomesticCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}]}, {"tag":"Loop_2_0175", "minOccurances":0, "maxOccurances":1, "segments":[{"code":"L1", "tag":"RateandCharges", "truncatable":true, "minOccurances":0, "maxOccurances":1, "fields":[{"tag":"code", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"L101__LadingLineItemNumber", "repeat":false, "required":false, "truncatable":true, "dataType":"float", "startIndex":-1, "length":-1, "components":[]}, {"tag":"L102__FreightRate", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"L103__RateValueQualifier", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"L104__Charge", "repeat":false, "required":false, "truncatable":true, "dataType":"float", "startIndex":-1, "length":-1, "components":[]}, {"tag":"L105__Advances", "repeat":false, "required":false, "truncatable":true, "dataType":"float", "startIndex":-1, "length":-1, "components":[]}, {"tag":"L106__PrepaidAmount", "repeat":false, "required":false, "truncatable":true, "dataType":"float", "startIndex":-1, "length":-1, "components":[]}, {"tag":"L107__RateCombinationPointCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"L108__SpecialChargeorAllowanceCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"L109__RateClassCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"L110__EntitlementCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"L111__ChargeMethodofPayment", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"L112__SpecialChargeDescription", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"L113__TariffApplicationCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"L114__DeclaredValue", "repeat":false, "required":false, "truncatable":true, "dataType":"float", "startIndex":-1, "length":-1, "components":[]}, {"tag":"L115__RateValueQualifier", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"L116__LadingLiabilityCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"L117__BilledRated_asQuantity", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"L118__BilledRated_asQualifier", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"L119__Percent", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"L120__CurrencyCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"L121__Amount", "repeat":false, "required":false, "truncatable":true, "dataType":"float", "startIndex":-1, "length":-1, "components":[]}]}, {"code":"C3", "tag":"Currency", "truncatable":true, "minOccurances":0, "maxOccurances":1, "fields":[{"tag":"code", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"C301__CurrencyCode", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"C302__ExchangeRate", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"C303__CurrencyCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"C304__CurrencyCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}]}]}]}]}, {"code":"L3", "tag":"TotalWeightandCharges", "truncatable":true, "minOccurances":0, "maxOccurances":1, "fields":[{"tag":"code", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"L301__Weight", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"L302__WeightQualifier", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"L303__FreightRate", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"L304__RateValueQualifier", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"L305__Charge", "repeat":false, "required":false, "truncatable":true, "dataType":"float", "startIndex":-1, "length":-1, "components":[]}, {"tag":"L306__Advances", "repeat":false, "required":false, "truncatable":true, "dataType":"float", "startIndex":-1, "length":-1, "components":[]}, {"tag":"L307__PrepaidAmount", "repeat":false, "required":false, "truncatable":true, "dataType":"float", "startIndex":-1, "length":-1, "components":[]}, {"tag":"L308__SpecialChargeorAllowanceCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"L309__Volume", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"L310__VolumeUnitQualifier", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"L311__LadingQuantity", "repeat":false, "required":false, "truncatable":true, "dataType":"float", "startIndex":-1, "length":-1, "components":[]}, {"tag":"L312__WeightUnitCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"L313__TariffNumber", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"L314__DeclaredValue", "repeat":false, "required":false, "truncatable":true, "dataType":"float", "startIndex":-1, "length":-1, "components":[]}, {"tag":"L315__RateValueQualifier", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}]}, {"code":"ACS", "tag":"AncillaryCharges", "truncatable":true, "minOccurances":0, "maxOccurances":1, "fields":[{"tag":"code", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"ACS01__Amount", "repeat":false, "required":true, "truncatable":true, "dataType":"float", "startIndex":-1, "length":-1, "components":[]}, {"tag":"ACS02__SpecialChargeorAllowanceCode", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"ACS03__Description", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"ACS04__ShipmentMethodofPayment", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}]}, {"code":"NTE", "tag":"NoteSpecialInstruction", "truncatable":true, "minOccurances":0, "maxOccurances":1, "fields":[{"tag":"code", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"NTE01__NoteReferenceCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"NTE02__Description", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}]}, {"code":"SE", "tag":"TransactionSetTrailer", "truncatable":true, "minOccurances":0, "maxOccurances":1, "fields":[{"tag":"code", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"SE01__NumberofIncludedSegments", "repeat":false, "required":true, "truncatable":true, "dataType":"float", "startIndex":-1, "length":-1, "components":[]}, {"tag":"SE02__TransactionSetControlNumber", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}]}]}, {"code":"GE", "tag":"FunctionalGroupTrailer", "truncatable":true, "minOccurances":0, "maxOccurances":1, "fields":[{"tag":"code", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"GE01__NumberofTransactionSetsIncluded", "repeat":false, "required":true, "truncatable":true, "dataType":"float", "startIndex":-1, "length":-1, "components":[]}, {"tag":"GE02__GroupControlNumber", "repeat":false, "required":true, "truncatable":true, "dataType":"float", "startIndex":-1, "length":-1, "components":[]}]}]}, {"code":"IEA", "tag":"InterchangeControlTrailer", "truncatable":true, "minOccurances":0, "maxOccurances":1, "fields":[{"tag":"code", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"IEA01__NumberofIncludedFunctionalGroups", "repeat":false, "required":true, "truncatable":true, "dataType":"float", "startIndex":-1, "length":-1, "components":[]}, {"tag":"IEA02__InterchangeControlNumber", "repeat":false, "required":true, "truncatable":true, "dataType":"float", "startIndex":-1, "length":-1, "components":[]}]}], "segmentDefinitions":{}};
    

import ballerina/edi;

# Convert EDI string to Ballerina EDI_210_X12_004010_210 record.
# 
# + ediText - EDI string to be converted
# + return - Ballerina record or error
public isolated function fromEdiString(string ediText) returns EDI_210_X12_004010_210|error {
    edi:EdiSchema ediSchema = check edi:getSchema(schemaJson);
    json dataJson = check edi:fromEdiString(ediText, ediSchema);
    return dataJson.cloneWithType();
}

# Convert Ballerina EDI_210_X12_004010_210 record to EDI string.
# 
# + data - Ballerina record to be converted
# + return - EDI string or error
public isolated function toEdiString(EDI_210_X12_004010_210 data) returns string|error {
    edi:EdiSchema ediSchema = check edi:getSchema(schemaJson);
    return edi:toEdiString(data, ediSchema);    
} 

# Get the EDI schema.
# 
# + return - EDI schema or error
public isolated function getSchema() returns edi:EdiSchema|error {
    return edi:getSchema(schemaJson);
}

# Convert EDI string to Ballerina EDI_210_X12_004010_210 record with schema.
# 
# + ediText - EDI string to be converted
# + schema - EDI schema
# + return - Ballerina record or error
public isolated function fromEdiStringWithSchema(string ediText, edi:EdiSchema schema) returns EDI_210_X12_004010_210|error {
    json dataJson = check edi:fromEdiString(ediText, schema);
    return dataJson.cloneWithType();
}

# Convert Ballerina EDI_210_X12_004010_210 record to EDI string with schema.
# 
# + data - Ballerina record to be converted
# + ediSchema - EDI schema
# + return - EDI string or error
public isolated function toEdiStringWithSchema(EDI_210_X12_004010_210 data, edi:EdiSchema ediSchema) returns string|error {
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

public type DateTime_Type record {|
   string code = "G62";
   string G6201__DateQualifier?;
   string G6202__Date?;
   string G6203__TimeQualifier?;
   string G6204__Time?;
   string G6205__TimeCode?;
|};

public type RouteInformation_Motor_Type record {|
   string code = "R3";
   string R301__StandardCarrierAlphaCode;
   string R302__RoutingSequenceCode;
   string R303__CityName?;
   string R304__TransportationMethodTypeCode?;
   string R305__StandardPointLocationCode?;
   string R306__InvoiceNumber?;
   string R307__Date?;
   float? R308__Amount?;
   string R309__Free_formDescription?;
   string R310__ServiceLevelCode?;
   string R311__ServiceLevelCode?;
   string R312__ServiceLevelCode?;
|};

public type SpecialHandlingInstructions_Type record {|
   string code = "H3";
   string H301__SpecialHandlingCode?;
   string H302__SpecialHandlingDescription?;
   string H303__ProtectiveServiceCode?;
   string H304__VentInstructionCode?;
   string H305__TariffApplicationCode?;
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

public type Loop_1_0110_GType record {|
   Name_Type? Name?;
   AdditionalNameInformation_Type? AdditionalNameInformation?;
   AddressInformation_Type? AddressInformation?;
   GeographicLocation_Type? GeographicLocation?;
   ReferenceIdentification_Type? ReferenceIdentification?;
|};

public type EquipmentDetails_Type record {|
   string code = "N7";
   string N701__EquipmentInitial?;
   string N702__EquipmentNumber;
   string N703__Weight?;
   string N704__WeightQualifier?;
   float? N705__TareWeight?;
   float? N706__WeightAllowance?;
   float? N707__Dunnage?;
   string N708__Volume?;
   string N709__VolumeUnitQualifier?;
   string N710__OwnershipCode?;
   string N711__EquipmentDescriptionCode?;
   string N712__StandardCarrierAlphaCode?;
   string N713__TemperatureControl?;
   string N714__Position?;
   float? N715__EquipmentLength?;
   string N716__TareQualifierCode?;
   string N717__WeightUnitCode?;
   float? N718__EquipmentNumberCheckDigit?;
   string N719__TypeofServiceCode?;
   string N720__Height?;
   string N721__Width?;
   string N722__EquipmentType?;
   string N723__StandardCarrierAlphaCode?;
   string N724__CarTypeCode?;
|};

public type SealNumbers_Type record {|
   string code = "M7";
   string M701__SealNumber;
   string M702__SealNumber?;
   string M703__SealNumber?;
   string M704__SealNumber?;
   string M705__EntityIdentifierCode?;
|};

public type Loop_1_0160_GType record {|
   EquipmentDetails_Type? EquipmentDetails?;
   SealNumbers_Type? SealNumbers?;
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

public type Loop_1_0180_GType record {|
   ShipmentPurchaseOrderDetail_Type? ShipmentPurchaseOrderDetail?;
   DestinationQuantity_Type? DestinationQuantity?;
|};

public type StopOffDetails_Type record {|
   string code = "S5";
   float S501__StopSequenceNumber;
   string S502__StopReasonCode;
   string S503__Weight?;
   string S504__WeightUnitCode?;
   string S505__NumberofUnitsShipped?;
   string S506__UnitorBasisforMeasurementCode?;
   string S507__Volume?;
   string S508__VolumeUnitQualifier?;
   string S509__Description?;
   string S510__StandardPointLocationCode?;
   string S511__AccomplishCode?;
|};

public type Loop_2_0045_GType record {|
   ShipmentPurchaseOrderDetail_Type? ShipmentPurchaseOrderDetail?;
   DestinationQuantity_Type? DestinationQuantity?;
|};

public type Loop_2_0100_GType record {|
   EquipmentDetails_Type? EquipmentDetails?;
   SealNumbers_Type? SealNumbers?;
|};

public type Loop_2_0050_GType record {|
   Name_Type? Name?;
   AdditionalNameInformation_Type? AdditionalNameInformation?;
   AddressInformation_Type? AddressInformation?;
   GeographicLocation_Type? GeographicLocation?;
   ReferenceIdentification_Type? ReferenceIdentification?;
   Loop_2_0100_GType? Loop_2_0100?;
|};

public type Loop_2_0010_GType record {|
   StopOffDetails_Type? StopOffDetails?;
   ReferenceIdentification_Type? ReferenceIdentification?;
   DateTime_Type? DateTime?;
   SpecialHandlingInstructions_Type? SpecialHandlingInstructions?;
   Loop_2_0045_GType? Loop_2_0045?;
   Loop_2_0050_GType? Loop_2_0050?;
|};

public type AssignedNumber_Type record {|
   string code = "LX";
   float LX01__AssignedNumber;
|};

public type ProofofDelivery_Type record {|
   string code = "POD";
   string POD01__Date;
   string POD02__Time?;
   string POD03__Name;
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

public type HazardousMaterial_Type record {|
   string code = "H1";
   string H101__HazardousMaterialCode;
   string H102__HazardousMaterialClassCode?;
   string H103__HazardousMaterialCodeQualifier?;
   string H104__HazardousMaterialDescription?;
   string H105__HazardousMaterialContact?;
   string H106__HazardousMaterialsPage?;
   float? H107__FlashpointTemperature?;
   string H108__UnitorBasisforMeasurementCode?;
   string H109__PackingGroupCode?;
|};

public type AdditionalHazardousMaterialDescription_Type record {|
   string code = "H2";
   string H201__HazardousMaterialDescription;
   string H202__HazardousMaterialClassification?;
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

public type Measurement_Type record {|
   string code = "L4";
   string L401__Length;
   string L402__Width;
   string L403__Height;
   string L404__MeasurementUnitQualifier;
   string L405__Quantity?;
   string L406__IndustryCode?;
|};

public type TariffReference_Type record {|
   string code = "L7";
   float? L701__LadingLineItemNumber?;
   string L702__TariffAgencyCode?;
   string L703__TariffNumber?;
   string L704__TariffSection?;
   string L705__TariffItemNumber?;
   float? L706__TariffItemPart?;
   string L707__FreightClassCode?;
   string L708__TariffSupplementIdentifier?;
   string L709__ExParte?;
   string L710__Date?;
   string L711__RateBasisNumber?;
   string L712__TariffColumn?;
   float? L713__TariffDistance?;
   string L714__DistanceQualifier?;
   string L715__CityName?;
   string L716__StateorProvinceCode?;
|};

public type Loop_2_0220_GType record {|
   ShipmentPurchaseOrderDetail_Type? ShipmentPurchaseOrderDetail?;
   DestinationQuantity_Type? DestinationQuantity?;
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

public type SpecialServices_Type record {|
   string code = "H6";
   string H601__SpecialServicesCode?;
   string H602__SpecialServicesCode?;
   float? H603__QuantityofPalletsShipped?;
   string H604__PalletExchangeCode?;
   string H605__Weight?;
   string H606__WeightUnitCode?;
   string H607__Pick_uporDeliveryCode?;
|};

public type ChargeDetail_Type record {|
   string code = "L9";
   string L901__SpecialChargeorAllowanceCode;
   string L902__MonetaryAmount;
|};

public type Loop_2_0300_GType record {|
   CartonPackageDetail_Type? CartonPackageDetail?;
   ReferenceIdentification_Type? ReferenceIdentification?;
   SpecialServices_Type? SpecialServices?;
   ChargeDetail_Type? ChargeDetail?;
   ProofofDelivery_Type? ProofofDelivery?;
   DateTime_Type? DateTime?;
|};

public type Loop_2_0350_GType record {|
   ShipmentPurchaseOrderDetail_Type? ShipmentPurchaseOrderDetail?;
   DestinationQuantity_Type? DestinationQuantity?;
|};

public type Loop_2_0240_GType record {|
   Name_Type? Name?;
   AdditionalNameInformation_Type? AdditionalNameInformation?;
   AddressInformation_Type? AddressInformation?;
   GeographicLocation_Type? GeographicLocation?;
   ReferenceIdentification_Type? ReferenceIdentification?;
   Loop_2_0300_GType? Loop_2_0300?;
   Loop_2_0350_GType? Loop_2_0350?;
|};

public type Loop_2_0120_GType record {|
   AssignedNumber_Type? AssignedNumber?;
   ReferenceIdentification_Type? ReferenceIdentification?;
   ProofofDelivery_Type? ProofofDelivery?;
   DescriptionMarksandNumbers_Type? DescriptionMarksandNumbers?;
   HazardousMaterial_Type? HazardousMaterial?;
   AdditionalHazardousMaterialDescription_Type? AdditionalHazardousMaterialDescription?;
   LineItem_QuantityandWeight_Type? LineItem_QuantityandWeight?;
   RateandCharges_Type? RateandCharges?;
   Measurement_Type? Measurement?;
   TariffReference_Type? TariffReference?;
   Remarks_Type? Remarks?;
   Loop_2_0220_GType? Loop_2_0220?;
   Loop_2_0240_GType? Loop_2_0240?;
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

public type TransactionSetTrailer_Type record {|
   string code = "SE";
   float SE01__NumberofIncludedSegments;
   string SE02__TransactionSetControlNumber;
|};

public type X12_004010_210_GType record {|
   TransactionSetHeader_Type? TransactionSetHeader?;
   BeginningSegmentforCarriersInvoice_Type? BeginningSegmentforCarriersInvoice?;
   BankID_Type? BankID?;
   Currency_Type? Currency?;
   TermsofSaleDeferredTermsofSale_Type? TermsofSaleDeferredTermsofSale?;
   ReferenceIdentification_Type? ReferenceIdentification?;
   DateTime_Type? DateTime?;
   RouteInformation_Motor_Type? RouteInformation_Motor?;
   SpecialHandlingInstructions_Type? SpecialHandlingInstructions?;
   Remarks_Type? Remarks?;
   Loop_1_0110_GType? Loop_1_0110?;
   Loop_1_0160_GType? Loop_1_0160?;
   Loop_1_0180_GType? Loop_1_0180?;
   Loop_2_0010_GType? Loop_2_0010?;
   Loop_2_0120_GType? Loop_2_0120?;
   TotalWeightandCharges_Type? TotalWeightandCharges?;
   TransactionSetTrailer_Type? TransactionSetTrailer?;
|};

public type FunctionalGroupTrailer_Type record {|
   string code = "GE";
   float GE01__NumberofTransactionSetsIncluded;
   float GE02__GroupControlNumber;
|};

public type X12_FunctionalGroup_GType record {|
   FunctionalGroupHeader_Type? FunctionalGroupHeader?;
   X12_004010_210_GType? X12_004010_210?;
   FunctionalGroupTrailer_Type? FunctionalGroupTrailer?;
|};

public type InterchangeControlTrailer_Type record {|
   string code = "IEA";
   float IEA01__NumberofIncludedFunctionalGroups;
   float IEA02__InterchangeControlNumber;
|};

public type EDI_210_X12_004010_210 record {|
   InterchangeControlHeader_Type? InterchangeControlHeader?;
   X12_FunctionalGroup_GType? X12_FunctionalGroup?;
   InterchangeControlTrailer_Type? InterchangeControlTrailer?;
|};



final readonly & json schemaJson = {"name":"EDI_210_X12_004010_210", "tag":"X12_004010_210", "delimiters":{"segment":"~", "field":"*", "component":":", "subcomponent":"NOT_USED", "repetition":"NOT_USED"}, "ignoreSegments":[], "preserveEmptyFields":true, "includeSegmentCode":true, "segments":[{"code":"ISA", "tag":"InterchangeControlHeader", "truncatable":true, "minOccurances":0, "maxOccurances":1, "fields":[{"tag":"code", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"ISA01__AuthorizationInformationQualifier", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"ISA02__AuthorizationInformation", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"ISA03__SecurityInformationQualifier", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"ISA04__SecurityInformation", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"ISA05__InterchangeIDQualifier", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"ISA06__InterchangeSenderID", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"ISA07__InterchangeIDQualifier", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"ISA08__InterchangeReceiverID", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"ISA09__InterchangeDate", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"ISA10__InterchangeTime", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"ISA11__InterchangeControlStandardsIdentifier", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"ISA12__InterchangeControlVersionNumber", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"ISA13__InterchangeControlNumber", "repeat":false, "required":true, "truncatable":true, "dataType":"float", "startIndex":-1, "length":-1, "components":[]}, {"tag":"ISA14__AcknowledgmentRequested", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"ISA15__UsageIndicator", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"ISA16__ComponentElementSeparator", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}]}, {"tag":"X12_FunctionalGroup", "minOccurances":0, "maxOccurances":1, "segments":[{"code":"GS", "tag":"FunctionalGroupHeader", "truncatable":true, "minOccurances":0, "maxOccurances":1, "fields":[{"tag":"code", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"GS01__FunctionalIdentifierCode", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"GS02__ApplicationSendersCode", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"GS03__ApplicationReceiversCode", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"GS04__Date", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"GS05__Time", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"GS06__GroupControlNumber", "repeat":false, "required":true, "truncatable":true, "dataType":"float", "startIndex":-1, "length":-1, "components":[]}, {"tag":"GS07__ResponsibleAgencyCode", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"GS08__VersionReleaseIndustryIdentifierCode", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}]}, {"tag":"X12_004010_210", "minOccurances":0, "maxOccurances":1, "segments":[{"code":"ST", "tag":"TransactionSetHeader", "truncatable":true, "minOccurances":0, "maxOccurances":1, "fields":[{"tag":"code", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"ST01__TransactionSetIdentifierCode", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"ST02__TransactionSetControlNumber", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}]}, {"code":"B3", "tag":"BeginningSegmentforCarriersInvoice", "truncatable":true, "minOccurances":0, "maxOccurances":1, "fields":[{"tag":"code", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"B301__ShipmentQualifier", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"B302__InvoiceNumber", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"B303__ShipmentIdentificationNumber", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"B304__ShipmentMethodofPayment", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"B305__WeightUnitCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"B306__Date", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"B307__NetAmountDue", "repeat":false, "required":true, "truncatable":true, "dataType":"float", "startIndex":-1, "length":-1, "components":[]}, {"tag":"B308__CorrectionIndicator", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"B309__DeliveryDate", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"B310__DateTimeQualifier", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"B311__StandardCarrierAlphaCode", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"B312__Date", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"B313__TariffServiceCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"B314__TransportationTermsCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}]}, {"code":"C2", "tag":"BankID", "truncatable":true, "minOccurances":0, "maxOccurances":1, "fields":[{"tag":"code", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"C201__BankClientCode", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"C202__IdentificationCodeQualifier", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"C203__IdentificationCode", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"C204__ClientBankNumber", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"C205__BankAccountNumber", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"C206__PaymentMethodCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"C207__Date", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}]}, {"code":"C3", "tag":"Currency", "truncatable":true, "minOccurances":0, "maxOccurances":1, "fields":[{"tag":"code", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"C301__CurrencyCode", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"C302__ExchangeRate", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"C303__CurrencyCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"C304__CurrencyCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}]}, {"code":"ITD", "tag":"TermsofSaleDeferredTermsofSale", "truncatable":true, "minOccurances":0, "maxOccurances":1, "fields":[{"tag":"code", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"ITD01__TermsTypeCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"ITD02__TermsBasisDateCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"ITD03__TermsDiscountPercent", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"ITD04__TermsDiscountDueDate", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"ITD05__TermsDiscountDaysDue", "repeat":false, "required":false, "truncatable":true, "dataType":"float", "startIndex":-1, "length":-1, "components":[]}, {"tag":"ITD06__TermsNetDueDate", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"ITD07__TermsNetDays", "repeat":false, "required":false, "truncatable":true, "dataType":"float", "startIndex":-1, "length":-1, "components":[]}, {"tag":"ITD08__TermsDiscountAmount", "repeat":false, "required":false, "truncatable":true, "dataType":"float", "startIndex":-1, "length":-1, "components":[]}, {"tag":"ITD09__TermsDeferredDueDate", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"ITD10__DeferredAmountDue", "repeat":false, "required":false, "truncatable":true, "dataType":"float", "startIndex":-1, "length":-1, "components":[]}, {"tag":"ITD11__PercentofInvoicePayable", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"ITD12__Description", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"ITD13__DayofMonth", "repeat":false, "required":false, "truncatable":true, "dataType":"float", "startIndex":-1, "length":-1, "components":[]}, {"tag":"ITD14__PaymentMethodCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"ITD15__Percent", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}]}, {"code":"N9", "tag":"ReferenceIdentification", "truncatable":true, "minOccurances":0, "maxOccurances":1, "fields":[{"tag":"code", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"N901__ReferenceIdentificationQualifier", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"N902__ReferenceIdentification", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"N903__Free_formDescription", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"N904__Date", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"N905__Time", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"N906__TimeCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"N907_ReferenceIdentifier", "repeat":false, "required":false, "truncatable":true, "dataType":"composite", "startIndex":-1, "length":-1, "components":[{"tag":"N907_01_ReferenceIdentificationQualifier", "required":true, "truncatable":true, "dataType":"string", "subcomponents":[]}, {"tag":"N907_02_ReferenceIdentification", "required":true, "truncatable":true, "dataType":"string", "subcomponents":[]}, {"tag":"N907_03_ReferenceIdentificationQualifier", "required":true, "truncatable":true, "dataType":"string", "subcomponents":[]}, {"tag":"N907_04_ReferenceIdentification", "required":true, "truncatable":true, "dataType":"string", "subcomponents":[]}, {"tag":"N907_05_ReferenceIdentificationQualifier", "required":true, "truncatable":true, "dataType":"string", "subcomponents":[]}, {"tag":"N907_06_ReferenceIdentification", "required":true, "truncatable":true, "dataType":"string", "subcomponents":[]}]}]}, {"code":"G62", "tag":"DateTime", "truncatable":true, "minOccurances":0, "maxOccurances":1, "fields":[{"tag":"code", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"G6201__DateQualifier", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"G6202__Date", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"G6203__TimeQualifier", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"G6204__Time", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"G6205__TimeCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}]}, {"code":"R3", "tag":"RouteInformation_Motor", "truncatable":true, "minOccurances":0, "maxOccurances":1, "fields":[{"tag":"code", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"R301__StandardCarrierAlphaCode", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"R302__RoutingSequenceCode", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"R303__CityName", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"R304__TransportationMethodTypeCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"R305__StandardPointLocationCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"R306__InvoiceNumber", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"R307__Date", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"R308__Amount", "repeat":false, "required":false, "truncatable":true, "dataType":"float", "startIndex":-1, "length":-1, "components":[]}, {"tag":"R309__Free_formDescription", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"R310__ServiceLevelCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"R311__ServiceLevelCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"R312__ServiceLevelCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}]}, {"code":"H3", "tag":"SpecialHandlingInstructions", "truncatable":true, "minOccurances":0, "maxOccurances":1, "fields":[{"tag":"code", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"H301__SpecialHandlingCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"H302__SpecialHandlingDescription", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"H303__ProtectiveServiceCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"H304__VentInstructionCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"H305__TariffApplicationCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}]}, {"code":"K1", "tag":"Remarks", "truncatable":true, "minOccurances":0, "maxOccurances":1, "fields":[{"tag":"code", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"K101__Free_FormMessage", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"K102__Free_FormMessage", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}]}, {"tag":"Loop_1_0110", "minOccurances":0, "maxOccurances":1, "segments":[{"code":"N1", "tag":"Name", "truncatable":true, "minOccurances":0, "maxOccurances":1, "fields":[{"tag":"code", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"N101__EntityIdentifierCode", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"N102__Name", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"N103__IdentificationCodeQualifier", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"N104__IdentificationCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"N105__EntityRelationshipCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"N106__EntityIdentifierCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}]}, {"code":"N2", "tag":"AdditionalNameInformation", "truncatable":true, "minOccurances":0, "maxOccurances":1, "fields":[{"tag":"code", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"N201__Name", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"N202__Name", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}]}, {"code":"N3", "tag":"AddressInformation", "truncatable":true, "minOccurances":0, "maxOccurances":1, "fields":[{"tag":"code", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"N301__AddressInformation", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"N302__AddressInformation", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}]}, {"code":"N4", "tag":"GeographicLocation", "truncatable":true, "minOccurances":0, "maxOccurances":1, "fields":[{"tag":"code", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"N401__CityName", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"N402__StateorProvinceCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"N403__PostalCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"N404__CountryCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"N405__LocationQualifier", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"N406__LocationIdentifier", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}]}, {"code":"N9", "tag":"ReferenceIdentification", "truncatable":true, "minOccurances":0, "maxOccurances":1, "fields":[{"tag":"code", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"N901__ReferenceIdentificationQualifier", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"N902__ReferenceIdentification", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"N903__Free_formDescription", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"N904__Date", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"N905__Time", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"N906__TimeCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"N907_ReferenceIdentifier", "repeat":false, "required":false, "truncatable":true, "dataType":"composite", "startIndex":-1, "length":-1, "components":[{"tag":"N907_01_ReferenceIdentificationQualifier", "required":true, "truncatable":true, "dataType":"string", "subcomponents":[]}, {"tag":"N907_02_ReferenceIdentification", "required":true, "truncatable":true, "dataType":"string", "subcomponents":[]}, {"tag":"N907_03_ReferenceIdentificationQualifier", "required":true, "truncatable":true, "dataType":"string", "subcomponents":[]}, {"tag":"N907_04_ReferenceIdentification", "required":true, "truncatable":true, "dataType":"string", "subcomponents":[]}, {"tag":"N907_05_ReferenceIdentificationQualifier", "required":true, "truncatable":true, "dataType":"string", "subcomponents":[]}, {"tag":"N907_06_ReferenceIdentification", "required":true, "truncatable":true, "dataType":"string", "subcomponents":[]}]}]}]}, {"tag":"Loop_1_0160", "minOccurances":0, "maxOccurances":1, "segments":[{"code":"N7", "tag":"EquipmentDetails", "truncatable":true, "minOccurances":0, "maxOccurances":1, "fields":[{"tag":"code", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"N701__EquipmentInitial", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"N702__EquipmentNumber", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"N703__Weight", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"N704__WeightQualifier", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"N705__TareWeight", "repeat":false, "required":false, "truncatable":true, "dataType":"float", "startIndex":-1, "length":-1, "components":[]}, {"tag":"N706__WeightAllowance", "repeat":false, "required":false, "truncatable":true, "dataType":"float", "startIndex":-1, "length":-1, "components":[]}, {"tag":"N707__Dunnage", "repeat":false, "required":false, "truncatable":true, "dataType":"float", "startIndex":-1, "length":-1, "components":[]}, {"tag":"N708__Volume", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"N709__VolumeUnitQualifier", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"N710__OwnershipCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"N711__EquipmentDescriptionCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"N712__StandardCarrierAlphaCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"N713__TemperatureControl", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"N714__Position", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"N715__EquipmentLength", "repeat":false, "required":false, "truncatable":true, "dataType":"float", "startIndex":-1, "length":-1, "components":[]}, {"tag":"N716__TareQualifierCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"N717__WeightUnitCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"N718__EquipmentNumberCheckDigit", "repeat":false, "required":false, "truncatable":true, "dataType":"float", "startIndex":-1, "length":-1, "components":[]}, {"tag":"N719__TypeofServiceCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"N720__Height", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"N721__Width", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"N722__EquipmentType", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"N723__StandardCarrierAlphaCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"N724__CarTypeCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}]}, {"code":"M7", "tag":"SealNumbers", "truncatable":true, "minOccurances":0, "maxOccurances":1, "fields":[{"tag":"code", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"M701__SealNumber", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"M702__SealNumber", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"M703__SealNumber", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"M704__SealNumber", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"M705__EntityIdentifierCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}]}]}, {"tag":"Loop_1_0180", "minOccurances":0, "maxOccurances":1, "segments":[{"code":"SPO", "tag":"ShipmentPurchaseOrderDetail", "truncatable":true, "minOccurances":0, "maxOccurances":1, "fields":[{"tag":"code", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"SPO01__PurchaseOrderNumber", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"SPO02__ReferenceIdentification", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"SPO03__UnitorBasisforMeasurementCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"SPO04__Quantity", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"SPO05__WeightUnitCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"SPO06__Weight", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"SPO07__ApplicationErrorConditionCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"SPO08__ReferenceIdentification", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}]}, {"code":"SDQ", "tag":"DestinationQuantity", "truncatable":true, "minOccurances":0, "maxOccurances":1, "fields":[{"tag":"code", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"SDQ01__UnitorBasisforMeasurementCode", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"SDQ02__IdentificationCodeQualifier", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"SDQ03__IdentificationCode", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"SDQ04__Quantity", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"SDQ05__IdentificationCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"SDQ06__Quantity", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"SDQ07__IdentificationCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"SDQ08__Quantity", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"SDQ09__IdentificationCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"SDQ10__Quantity", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"SDQ11__IdentificationCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"SDQ12__Quantity", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"SDQ13__IdentificationCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"SDQ14__Quantity", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"SDQ15__IdentificationCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"SDQ16__Quantity", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"SDQ17__IdentificationCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"SDQ18__Quantity", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"SDQ19__IdentificationCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"SDQ20__Quantity", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"SDQ21__IdentificationCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"SDQ22__Quantity", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"SDQ23__LocationIdentifier", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}]}]}, {"tag":"Loop_2_0010", "minOccurances":0, "maxOccurances":1, "segments":[{"code":"S5", "tag":"StopOffDetails", "truncatable":true, "minOccurances":0, "maxOccurances":1, "fields":[{"tag":"code", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"S501__StopSequenceNumber", "repeat":false, "required":true, "truncatable":true, "dataType":"float", "startIndex":-1, "length":-1, "components":[]}, {"tag":"S502__StopReasonCode", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"S503__Weight", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"S504__WeightUnitCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"S505__NumberofUnitsShipped", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"S506__UnitorBasisforMeasurementCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"S507__Volume", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"S508__VolumeUnitQualifier", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"S509__Description", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"S510__StandardPointLocationCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"S511__AccomplishCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}]}, {"code":"N9", "tag":"ReferenceIdentification", "truncatable":true, "minOccurances":0, "maxOccurances":1, "fields":[{"tag":"code", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"N901__ReferenceIdentificationQualifier", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"N902__ReferenceIdentification", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"N903__Free_formDescription", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"N904__Date", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"N905__Time", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"N906__TimeCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"N907_ReferenceIdentifier", "repeat":false, "required":false, "truncatable":true, "dataType":"composite", "startIndex":-1, "length":-1, "components":[{"tag":"N907_01_ReferenceIdentificationQualifier", "required":true, "truncatable":true, "dataType":"string", "subcomponents":[]}, {"tag":"N907_02_ReferenceIdentification", "required":true, "truncatable":true, "dataType":"string", "subcomponents":[]}, {"tag":"N907_03_ReferenceIdentificationQualifier", "required":true, "truncatable":true, "dataType":"string", "subcomponents":[]}, {"tag":"N907_04_ReferenceIdentification", "required":true, "truncatable":true, "dataType":"string", "subcomponents":[]}, {"tag":"N907_05_ReferenceIdentificationQualifier", "required":true, "truncatable":true, "dataType":"string", "subcomponents":[]}, {"tag":"N907_06_ReferenceIdentification", "required":true, "truncatable":true, "dataType":"string", "subcomponents":[]}]}]}, {"code":"G62", "tag":"DateTime", "truncatable":true, "minOccurances":0, "maxOccurances":1, "fields":[{"tag":"code", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"G6201__DateQualifier", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"G6202__Date", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"G6203__TimeQualifier", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"G6204__Time", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"G6205__TimeCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}]}, {"code":"H3", "tag":"SpecialHandlingInstructions", "truncatable":true, "minOccurances":0, "maxOccurances":1, "fields":[{"tag":"code", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"H301__SpecialHandlingCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"H302__SpecialHandlingDescription", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"H303__ProtectiveServiceCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"H304__VentInstructionCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"H305__TariffApplicationCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}]}, {"tag":"Loop_2_0045", "minOccurances":0, "maxOccurances":1, "segments":[{"code":"SPO", "tag":"ShipmentPurchaseOrderDetail", "truncatable":true, "minOccurances":0, "maxOccurances":1, "fields":[{"tag":"code", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"SPO01__PurchaseOrderNumber", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"SPO02__ReferenceIdentification", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"SPO03__UnitorBasisforMeasurementCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"SPO04__Quantity", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"SPO05__WeightUnitCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"SPO06__Weight", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"SPO07__ApplicationErrorConditionCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"SPO08__ReferenceIdentification", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}]}, {"code":"SDQ", "tag":"DestinationQuantity", "truncatable":true, "minOccurances":0, "maxOccurances":1, "fields":[{"tag":"code", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"SDQ01__UnitorBasisforMeasurementCode", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"SDQ02__IdentificationCodeQualifier", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"SDQ03__IdentificationCode", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"SDQ04__Quantity", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"SDQ05__IdentificationCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"SDQ06__Quantity", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"SDQ07__IdentificationCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"SDQ08__Quantity", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"SDQ09__IdentificationCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"SDQ10__Quantity", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"SDQ11__IdentificationCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"SDQ12__Quantity", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"SDQ13__IdentificationCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"SDQ14__Quantity", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"SDQ15__IdentificationCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"SDQ16__Quantity", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"SDQ17__IdentificationCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"SDQ18__Quantity", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"SDQ19__IdentificationCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"SDQ20__Quantity", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"SDQ21__IdentificationCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"SDQ22__Quantity", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"SDQ23__LocationIdentifier", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}]}]}, {"tag":"Loop_2_0050", "minOccurances":0, "maxOccurances":1, "segments":[{"code":"N1", "tag":"Name", "truncatable":true, "minOccurances":0, "maxOccurances":1, "fields":[{"tag":"code", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"N101__EntityIdentifierCode", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"N102__Name", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"N103__IdentificationCodeQualifier", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"N104__IdentificationCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"N105__EntityRelationshipCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"N106__EntityIdentifierCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}]}, {"code":"N2", "tag":"AdditionalNameInformation", "truncatable":true, "minOccurances":0, "maxOccurances":1, "fields":[{"tag":"code", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"N201__Name", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"N202__Name", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}]}, {"code":"N3", "tag":"AddressInformation", "truncatable":true, "minOccurances":0, "maxOccurances":1, "fields":[{"tag":"code", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"N301__AddressInformation", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"N302__AddressInformation", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}]}, {"code":"N4", "tag":"GeographicLocation", "truncatable":true, "minOccurances":0, "maxOccurances":1, "fields":[{"tag":"code", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"N401__CityName", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"N402__StateorProvinceCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"N403__PostalCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"N404__CountryCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"N405__LocationQualifier", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"N406__LocationIdentifier", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}]}, {"code":"N9", "tag":"ReferenceIdentification", "truncatable":true, "minOccurances":0, "maxOccurances":1, "fields":[{"tag":"code", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"N901__ReferenceIdentificationQualifier", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"N902__ReferenceIdentification", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"N903__Free_formDescription", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"N904__Date", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"N905__Time", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"N906__TimeCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"N907_ReferenceIdentifier", "repeat":false, "required":false, "truncatable":true, "dataType":"composite", "startIndex":-1, "length":-1, "components":[{"tag":"N907_01_ReferenceIdentificationQualifier", "required":true, "truncatable":true, "dataType":"string", "subcomponents":[]}, {"tag":"N907_02_ReferenceIdentification", "required":true, "truncatable":true, "dataType":"string", "subcomponents":[]}, {"tag":"N907_03_ReferenceIdentificationQualifier", "required":true, "truncatable":true, "dataType":"string", "subcomponents":[]}, {"tag":"N907_04_ReferenceIdentification", "required":true, "truncatable":true, "dataType":"string", "subcomponents":[]}, {"tag":"N907_05_ReferenceIdentificationQualifier", "required":true, "truncatable":true, "dataType":"string", "subcomponents":[]}, {"tag":"N907_06_ReferenceIdentification", "required":true, "truncatable":true, "dataType":"string", "subcomponents":[]}]}]}, {"tag":"Loop_2_0100", "minOccurances":0, "maxOccurances":1, "segments":[{"code":"N7", "tag":"EquipmentDetails", "truncatable":true, "minOccurances":0, "maxOccurances":1, "fields":[{"tag":"code", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"N701__EquipmentInitial", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"N702__EquipmentNumber", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"N703__Weight", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"N704__WeightQualifier", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"N705__TareWeight", "repeat":false, "required":false, "truncatable":true, "dataType":"float", "startIndex":-1, "length":-1, "components":[]}, {"tag":"N706__WeightAllowance", "repeat":false, "required":false, "truncatable":true, "dataType":"float", "startIndex":-1, "length":-1, "components":[]}, {"tag":"N707__Dunnage", "repeat":false, "required":false, "truncatable":true, "dataType":"float", "startIndex":-1, "length":-1, "components":[]}, {"tag":"N708__Volume", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"N709__VolumeUnitQualifier", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"N710__OwnershipCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"N711__EquipmentDescriptionCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"N712__StandardCarrierAlphaCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"N713__TemperatureControl", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"N714__Position", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"N715__EquipmentLength", "repeat":false, "required":false, "truncatable":true, "dataType":"float", "startIndex":-1, "length":-1, "components":[]}, {"tag":"N716__TareQualifierCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"N717__WeightUnitCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"N718__EquipmentNumberCheckDigit", "repeat":false, "required":false, "truncatable":true, "dataType":"float", "startIndex":-1, "length":-1, "components":[]}, {"tag":"N719__TypeofServiceCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"N720__Height", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"N721__Width", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"N722__EquipmentType", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"N723__StandardCarrierAlphaCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"N724__CarTypeCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}]}, {"code":"M7", "tag":"SealNumbers", "truncatable":true, "minOccurances":0, "maxOccurances":1, "fields":[{"tag":"code", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"M701__SealNumber", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"M702__SealNumber", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"M703__SealNumber", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"M704__SealNumber", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"M705__EntityIdentifierCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}]}]}]}]}, {"tag":"Loop_2_0120", "minOccurances":0, "maxOccurances":1, "segments":[{"code":"LX", "tag":"AssignedNumber", "truncatable":true, "minOccurances":0, "maxOccurances":1, "fields":[{"tag":"code", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"LX01__AssignedNumber", "repeat":false, "required":true, "truncatable":true, "dataType":"float", "startIndex":-1, "length":-1, "components":[]}]}, {"code":"N9", "tag":"ReferenceIdentification", "truncatable":true, "minOccurances":0, "maxOccurances":1, "fields":[{"tag":"code", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"N901__ReferenceIdentificationQualifier", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"N902__ReferenceIdentification", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"N903__Free_formDescription", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"N904__Date", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"N905__Time", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"N906__TimeCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"N907_ReferenceIdentifier", "repeat":false, "required":false, "truncatable":true, "dataType":"composite", "startIndex":-1, "length":-1, "components":[{"tag":"N907_01_ReferenceIdentificationQualifier", "required":true, "truncatable":true, "dataType":"string", "subcomponents":[]}, {"tag":"N907_02_ReferenceIdentification", "required":true, "truncatable":true, "dataType":"string", "subcomponents":[]}, {"tag":"N907_03_ReferenceIdentificationQualifier", "required":true, "truncatable":true, "dataType":"string", "subcomponents":[]}, {"tag":"N907_04_ReferenceIdentification", "required":true, "truncatable":true, "dataType":"string", "subcomponents":[]}, {"tag":"N907_05_ReferenceIdentificationQualifier", "required":true, "truncatable":true, "dataType":"string", "subcomponents":[]}, {"tag":"N907_06_ReferenceIdentification", "required":true, "truncatable":true, "dataType":"string", "subcomponents":[]}]}]}, {"code":"POD", "tag":"ProofofDelivery", "truncatable":true, "minOccurances":0, "maxOccurances":1, "fields":[{"tag":"code", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"POD01__Date", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"POD02__Time", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"POD03__Name", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}]}, {"code":"L5", "tag":"DescriptionMarksandNumbers", "truncatable":true, "minOccurances":0, "maxOccurances":1, "fields":[{"tag":"code", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"L501__LadingLineItemNumber", "repeat":false, "required":false, "truncatable":true, "dataType":"float", "startIndex":-1, "length":-1, "components":[]}, {"tag":"L502__LadingDescription", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"L503__CommodityCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"L504__CommodityCodeQualifier", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"L505__PackagingCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"L506__MarksandNumbers", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"L507__MarksandNumbersQualifier", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"L508__CommodityCodeQualifier", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"L509__CommodityCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"L510__CompartmentIDCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}]}, {"code":"H1", "tag":"HazardousMaterial", "truncatable":true, "minOccurances":0, "maxOccurances":1, "fields":[{"tag":"code", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"H101__HazardousMaterialCode", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"H102__HazardousMaterialClassCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"H103__HazardousMaterialCodeQualifier", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"H104__HazardousMaterialDescription", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"H105__HazardousMaterialContact", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"H106__HazardousMaterialsPage", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"H107__FlashpointTemperature", "repeat":false, "required":false, "truncatable":true, "dataType":"float", "startIndex":-1, "length":-1, "components":[]}, {"tag":"H108__UnitorBasisforMeasurementCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"H109__PackingGroupCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}]}, {"code":"H2", "tag":"AdditionalHazardousMaterialDescription", "truncatable":true, "minOccurances":0, "maxOccurances":1, "fields":[{"tag":"code", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"H201__HazardousMaterialDescription", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"H202__HazardousMaterialClassification", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}]}, {"code":"L0", "tag":"LineItem_QuantityandWeight", "truncatable":true, "minOccurances":0, "maxOccurances":1, "fields":[{"tag":"code", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"L001__LadingLineItemNumber", "repeat":false, "required":false, "truncatable":true, "dataType":"float", "startIndex":-1, "length":-1, "components":[]}, {"tag":"L002__BilledRated_asQuantity", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"L003__BilledRated_asQualifier", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"L004__Weight", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"L005__WeightQualifier", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"L006__Volume", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"L007__VolumeUnitQualifier", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"L008__LadingQuantity", "repeat":false, "required":false, "truncatable":true, "dataType":"float", "startIndex":-1, "length":-1, "components":[]}, {"tag":"L009__PackagingFormCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"L010__DunnageDescription", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"L011__WeightUnitCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"L012__TypeofServiceCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"L013__Quantity", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"L014__PackagingFormCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"L015__YesNoConditionorResponseCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}]}, {"code":"L1", "tag":"RateandCharges", "truncatable":true, "minOccurances":0, "maxOccurances":1, "fields":[{"tag":"code", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"L101__LadingLineItemNumber", "repeat":false, "required":false, "truncatable":true, "dataType":"float", "startIndex":-1, "length":-1, "components":[]}, {"tag":"L102__FreightRate", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"L103__RateValueQualifier", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"L104__Charge", "repeat":false, "required":false, "truncatable":true, "dataType":"float", "startIndex":-1, "length":-1, "components":[]}, {"tag":"L105__Advances", "repeat":false, "required":false, "truncatable":true, "dataType":"float", "startIndex":-1, "length":-1, "components":[]}, {"tag":"L106__PrepaidAmount", "repeat":false, "required":false, "truncatable":true, "dataType":"float", "startIndex":-1, "length":-1, "components":[]}, {"tag":"L107__RateCombinationPointCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"L108__SpecialChargeorAllowanceCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"L109__RateClassCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"L110__EntitlementCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"L111__ChargeMethodofPayment", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"L112__SpecialChargeDescription", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"L113__TariffApplicationCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"L114__DeclaredValue", "repeat":false, "required":false, "truncatable":true, "dataType":"float", "startIndex":-1, "length":-1, "components":[]}, {"tag":"L115__RateValueQualifier", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"L116__LadingLiabilityCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"L117__BilledRated_asQuantity", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"L118__BilledRated_asQualifier", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"L119__Percent", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"L120__CurrencyCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"L121__Amount", "repeat":false, "required":false, "truncatable":true, "dataType":"float", "startIndex":-1, "length":-1, "components":[]}]}, {"code":"L4", "tag":"Measurement", "truncatable":true, "minOccurances":0, "maxOccurances":1, "fields":[{"tag":"code", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"L401__Length", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"L402__Width", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"L403__Height", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"L404__MeasurementUnitQualifier", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"L405__Quantity", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"L406__IndustryCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}]}, {"code":"L7", "tag":"TariffReference", "truncatable":true, "minOccurances":0, "maxOccurances":1, "fields":[{"tag":"code", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"L701__LadingLineItemNumber", "repeat":false, "required":false, "truncatable":true, "dataType":"float", "startIndex":-1, "length":-1, "components":[]}, {"tag":"L702__TariffAgencyCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"L703__TariffNumber", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"L704__TariffSection", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"L705__TariffItemNumber", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"L706__TariffItemPart", "repeat":false, "required":false, "truncatable":true, "dataType":"float", "startIndex":-1, "length":-1, "components":[]}, {"tag":"L707__FreightClassCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"L708__TariffSupplementIdentifier", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"L709__ExParte", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"L710__Date", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"L711__RateBasisNumber", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"L712__TariffColumn", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"L713__TariffDistance", "repeat":false, "required":false, "truncatable":true, "dataType":"float", "startIndex":-1, "length":-1, "components":[]}, {"tag":"L714__DistanceQualifier", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"L715__CityName", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"L716__StateorProvinceCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}]}, {"code":"K1", "tag":"Remarks", "truncatable":true, "minOccurances":0, "maxOccurances":1, "fields":[{"tag":"code", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"K101__Free_FormMessage", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"K102__Free_FormMessage", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}]}, {"tag":"Loop_2_0220", "minOccurances":0, "maxOccurances":1, "segments":[{"code":"SPO", "tag":"ShipmentPurchaseOrderDetail", "truncatable":true, "minOccurances":0, "maxOccurances":1, "fields":[{"tag":"code", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"SPO01__PurchaseOrderNumber", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"SPO02__ReferenceIdentification", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"SPO03__UnitorBasisforMeasurementCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"SPO04__Quantity", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"SPO05__WeightUnitCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"SPO06__Weight", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"SPO07__ApplicationErrorConditionCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"SPO08__ReferenceIdentification", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}]}, {"code":"SDQ", "tag":"DestinationQuantity", "truncatable":true, "minOccurances":0, "maxOccurances":1, "fields":[{"tag":"code", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"SDQ01__UnitorBasisforMeasurementCode", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"SDQ02__IdentificationCodeQualifier", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"SDQ03__IdentificationCode", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"SDQ04__Quantity", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"SDQ05__IdentificationCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"SDQ06__Quantity", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"SDQ07__IdentificationCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"SDQ08__Quantity", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"SDQ09__IdentificationCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"SDQ10__Quantity", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"SDQ11__IdentificationCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"SDQ12__Quantity", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"SDQ13__IdentificationCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"SDQ14__Quantity", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"SDQ15__IdentificationCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"SDQ16__Quantity", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"SDQ17__IdentificationCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"SDQ18__Quantity", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"SDQ19__IdentificationCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"SDQ20__Quantity", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"SDQ21__IdentificationCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"SDQ22__Quantity", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"SDQ23__LocationIdentifier", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}]}]}, {"tag":"Loop_2_0240", "minOccurances":0, "maxOccurances":1, "segments":[{"code":"N1", "tag":"Name", "truncatable":true, "minOccurances":0, "maxOccurances":1, "fields":[{"tag":"code", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"N101__EntityIdentifierCode", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"N102__Name", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"N103__IdentificationCodeQualifier", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"N104__IdentificationCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"N105__EntityRelationshipCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"N106__EntityIdentifierCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}]}, {"code":"N2", "tag":"AdditionalNameInformation", "truncatable":true, "minOccurances":0, "maxOccurances":1, "fields":[{"tag":"code", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"N201__Name", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"N202__Name", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}]}, {"code":"N3", "tag":"AddressInformation", "truncatable":true, "minOccurances":0, "maxOccurances":1, "fields":[{"tag":"code", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"N301__AddressInformation", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"N302__AddressInformation", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}]}, {"code":"N4", "tag":"GeographicLocation", "truncatable":true, "minOccurances":0, "maxOccurances":1, "fields":[{"tag":"code", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"N401__CityName", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"N402__StateorProvinceCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"N403__PostalCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"N404__CountryCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"N405__LocationQualifier", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"N406__LocationIdentifier", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}]}, {"code":"N9", "tag":"ReferenceIdentification", "truncatable":true, "minOccurances":0, "maxOccurances":1, "fields":[{"tag":"code", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"N901__ReferenceIdentificationQualifier", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"N902__ReferenceIdentification", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"N903__Free_formDescription", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"N904__Date", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"N905__Time", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"N906__TimeCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"N907_ReferenceIdentifier", "repeat":false, "required":false, "truncatable":true, "dataType":"composite", "startIndex":-1, "length":-1, "components":[{"tag":"N907_01_ReferenceIdentificationQualifier", "required":true, "truncatable":true, "dataType":"string", "subcomponents":[]}, {"tag":"N907_02_ReferenceIdentification", "required":true, "truncatable":true, "dataType":"string", "subcomponents":[]}, {"tag":"N907_03_ReferenceIdentificationQualifier", "required":true, "truncatable":true, "dataType":"string", "subcomponents":[]}, {"tag":"N907_04_ReferenceIdentification", "required":true, "truncatable":true, "dataType":"string", "subcomponents":[]}, {"tag":"N907_05_ReferenceIdentificationQualifier", "required":true, "truncatable":true, "dataType":"string", "subcomponents":[]}, {"tag":"N907_06_ReferenceIdentification", "required":true, "truncatable":true, "dataType":"string", "subcomponents":[]}]}]}, {"tag":"Loop_2_0300", "minOccurances":0, "maxOccurances":1, "segments":[{"code":"CD3", "tag":"CartonPackageDetail", "truncatable":true, "minOccurances":0, "maxOccurances":1, "fields":[{"tag":"code", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"CD301__WeightQualifier", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"CD302__Weight", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"CD303__Zone", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"CD304__ServiceStandard", "repeat":false, "required":false, "truncatable":true, "dataType":"int", "startIndex":-1, "length":-1, "components":[]}, {"tag":"CD305__ServiceLevelCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"CD306__Pick_uporDeliveryCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"CD307__RateValueQualifier", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"CD308__Charge", "repeat":false, "required":false, "truncatable":true, "dataType":"float", "startIndex":-1, "length":-1, "components":[]}, {"tag":"CD309__RateValueQualifier", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"CD310__Charge", "repeat":false, "required":false, "truncatable":true, "dataType":"float", "startIndex":-1, "length":-1, "components":[]}, {"tag":"CD311__ServiceLevelCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"CD312__ServiceLevelCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"CD313__PaymentMethodCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"CD314__CountryCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}]}, {"code":"N9", "tag":"ReferenceIdentification", "truncatable":true, "minOccurances":0, "maxOccurances":1, "fields":[{"tag":"code", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"N901__ReferenceIdentificationQualifier", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"N902__ReferenceIdentification", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"N903__Free_formDescription", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"N904__Date", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"N905__Time", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"N906__TimeCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"N907_ReferenceIdentifier", "repeat":false, "required":false, "truncatable":true, "dataType":"composite", "startIndex":-1, "length":-1, "components":[{"tag":"N907_01_ReferenceIdentificationQualifier", "required":true, "truncatable":true, "dataType":"string", "subcomponents":[]}, {"tag":"N907_02_ReferenceIdentification", "required":true, "truncatable":true, "dataType":"string", "subcomponents":[]}, {"tag":"N907_03_ReferenceIdentificationQualifier", "required":true, "truncatable":true, "dataType":"string", "subcomponents":[]}, {"tag":"N907_04_ReferenceIdentification", "required":true, "truncatable":true, "dataType":"string", "subcomponents":[]}, {"tag":"N907_05_ReferenceIdentificationQualifier", "required":true, "truncatable":true, "dataType":"string", "subcomponents":[]}, {"tag":"N907_06_ReferenceIdentification", "required":true, "truncatable":true, "dataType":"string", "subcomponents":[]}]}]}, {"code":"H6", "tag":"SpecialServices", "truncatable":true, "minOccurances":0, "maxOccurances":1, "fields":[{"tag":"code", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"H601__SpecialServicesCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"H602__SpecialServicesCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"H603__QuantityofPalletsShipped", "repeat":false, "required":false, "truncatable":true, "dataType":"float", "startIndex":-1, "length":-1, "components":[]}, {"tag":"H604__PalletExchangeCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"H605__Weight", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"H606__WeightUnitCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"H607__Pick_uporDeliveryCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}]}, {"code":"L9", "tag":"ChargeDetail", "truncatable":true, "minOccurances":0, "maxOccurances":1, "fields":[{"tag":"code", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"L901__SpecialChargeorAllowanceCode", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"L902__MonetaryAmount", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}]}, {"code":"POD", "tag":"ProofofDelivery", "truncatable":true, "minOccurances":0, "maxOccurances":1, "fields":[{"tag":"code", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"POD01__Date", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"POD02__Time", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"POD03__Name", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}]}, {"code":"G62", "tag":"DateTime", "truncatable":true, "minOccurances":0, "maxOccurances":1, "fields":[{"tag":"code", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"G6201__DateQualifier", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"G6202__Date", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"G6203__TimeQualifier", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"G6204__Time", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"G6205__TimeCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}]}]}, {"tag":"Loop_2_0350", "minOccurances":0, "maxOccurances":1, "segments":[{"code":"SPO", "tag":"ShipmentPurchaseOrderDetail", "truncatable":true, "minOccurances":0, "maxOccurances":1, "fields":[{"tag":"code", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"SPO01__PurchaseOrderNumber", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"SPO02__ReferenceIdentification", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"SPO03__UnitorBasisforMeasurementCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"SPO04__Quantity", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"SPO05__WeightUnitCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"SPO06__Weight", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"SPO07__ApplicationErrorConditionCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"SPO08__ReferenceIdentification", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}]}, {"code":"SDQ", "tag":"DestinationQuantity", "truncatable":true, "minOccurances":0, "maxOccurances":1, "fields":[{"tag":"code", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"SDQ01__UnitorBasisforMeasurementCode", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"SDQ02__IdentificationCodeQualifier", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"SDQ03__IdentificationCode", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"SDQ04__Quantity", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"SDQ05__IdentificationCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"SDQ06__Quantity", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"SDQ07__IdentificationCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"SDQ08__Quantity", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"SDQ09__IdentificationCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"SDQ10__Quantity", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"SDQ11__IdentificationCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"SDQ12__Quantity", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"SDQ13__IdentificationCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"SDQ14__Quantity", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"SDQ15__IdentificationCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"SDQ16__Quantity", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"SDQ17__IdentificationCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"SDQ18__Quantity", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"SDQ19__IdentificationCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"SDQ20__Quantity", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"SDQ21__IdentificationCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"SDQ22__Quantity", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"SDQ23__LocationIdentifier", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}]}]}]}]}, {"code":"L3", "tag":"TotalWeightandCharges", "truncatable":true, "minOccurances":0, "maxOccurances":1, "fields":[{"tag":"code", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"L301__Weight", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"L302__WeightQualifier", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"L303__FreightRate", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"L304__RateValueQualifier", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"L305__Charge", "repeat":false, "required":false, "truncatable":true, "dataType":"float", "startIndex":-1, "length":-1, "components":[]}, {"tag":"L306__Advances", "repeat":false, "required":false, "truncatable":true, "dataType":"float", "startIndex":-1, "length":-1, "components":[]}, {"tag":"L307__PrepaidAmount", "repeat":false, "required":false, "truncatable":true, "dataType":"float", "startIndex":-1, "length":-1, "components":[]}, {"tag":"L308__SpecialChargeorAllowanceCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"L309__Volume", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"L310__VolumeUnitQualifier", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"L311__LadingQuantity", "repeat":false, "required":false, "truncatable":true, "dataType":"float", "startIndex":-1, "length":-1, "components":[]}, {"tag":"L312__WeightUnitCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"L313__TariffNumber", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"L314__DeclaredValue", "repeat":false, "required":false, "truncatable":true, "dataType":"float", "startIndex":-1, "length":-1, "components":[]}, {"tag":"L315__RateValueQualifier", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}]}, {"code":"SE", "tag":"TransactionSetTrailer", "truncatable":true, "minOccurances":0, "maxOccurances":1, "fields":[{"tag":"code", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"SE01__NumberofIncludedSegments", "repeat":false, "required":true, "truncatable":true, "dataType":"float", "startIndex":-1, "length":-1, "components":[]}, {"tag":"SE02__TransactionSetControlNumber", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}]}]}, {"code":"GE", "tag":"FunctionalGroupTrailer", "truncatable":true, "minOccurances":0, "maxOccurances":1, "fields":[{"tag":"code", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"GE01__NumberofTransactionSetsIncluded", "repeat":false, "required":true, "truncatable":true, "dataType":"float", "startIndex":-1, "length":-1, "components":[]}, {"tag":"GE02__GroupControlNumber", "repeat":false, "required":true, "truncatable":true, "dataType":"float", "startIndex":-1, "length":-1, "components":[]}]}]}, {"code":"IEA", "tag":"InterchangeControlTrailer", "truncatable":true, "minOccurances":0, "maxOccurances":1, "fields":[{"tag":"code", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"IEA01__NumberofIncludedFunctionalGroups", "repeat":false, "required":true, "truncatable":true, "dataType":"float", "startIndex":-1, "length":-1, "components":[]}, {"tag":"IEA02__InterchangeControlNumber", "repeat":false, "required":true, "truncatable":true, "dataType":"float", "startIndex":-1, "length":-1, "components":[]}]}], "segmentDefinitions":{}};
    

import ballerina/edi;

# Convert EDI string to Ballerina EDI_310_X12_004010_310 record.
# 
# + ediText - EDI string to be converted
# + return - Ballerina record or error
public isolated function fromEdiString(string ediText) returns EDI_310_X12_004010_310|error {
    edi:EdiSchema ediSchema = check edi:getSchema(schemaJson);
    json dataJson = check edi:fromEdiString(ediText, ediSchema);
    return dataJson.cloneWithType();
}

# Convert Ballerina EDI_310_X12_004010_310 record to EDI string.
# 
# + data - Ballerina record to be converted
# + return - EDI string or error
public isolated function toEdiString(EDI_310_X12_004010_310 data) returns string|error {
    edi:EdiSchema ediSchema = check edi:getSchema(schemaJson);
    return edi:toEdiString(data, ediSchema);    
} 

# Get the EDI schema.
# 
# + return - EDI schema or error
public isolated function getSchema() returns edi:EdiSchema|error {
    return edi:getSchema(schemaJson);
}

# Convert EDI string to Ballerina EDI_310_X12_004010_310 record with schema.
# 
# + ediText - EDI string to be converted
# + schema - EDI schema
# + return - Ballerina record or error
public isolated function fromEdiStringWithSchema(string ediText, edi:EdiSchema schema) returns EDI_310_X12_004010_310|error {
    json dataJson = check edi:fromEdiString(ediText, schema);
    return dataJson.cloneWithType();
}

# Convert Ballerina EDI_310_X12_004010_310 record to EDI string with schema.
# 
# + data - Ballerina record to be converted
# + ediSchema - EDI schema
# + return - EDI string or error
public isolated function toEdiStringWithSchema(EDI_310_X12_004010_310 data, edi:EdiSchema ediSchema) returns string|error {
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

public type SetPurpose_Type record {|
   string code = "B2A";
   string B2A01__TransactionSetPurposeCode;
   string B2A02__ApplicationType?;
|};

public type Authentication_Type record {|
   string code = "Y6";
   string Y601__AuthorityIdentifierCode?;
   string Y602__Authority;
   string Y603__AuthorizationDate;
|};

public type CompensationInformation_Type record {|
   string code = "G3";
   string G301__CompensationPaid?;
   float G302__TotalCompensationAmount;
   string G303__Name?;
   string G304__BusinessTransactionStatus?;
   string G305__MonetaryAmount?;
   string G306__CompensationQualifier?;
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

public type VesselIdentification_Type record {|
   string code = "V1";
   string V101__VesselCode?;
   string V102__VesselName?;
   string V103__CountryCode?;
   string V104__FlightVoyageNumber?;
   string V105__StandardCarrierAlphaCode?;
   string V106__VesselRequirementCode?;
   string V107__VesselTypeCode?;
   string V108__VesselCodeQualifier?;
   string V109__TransportationMethodTypeCode?;
|};

public type LetterofCreditReference_Type record {|
   string code = "M0";
   string M001__LetterofCreditNumber;
   string M002__Date?;
   string M003__Date?;
   string M004__Date?;
|};

public type Insurance_Type record {|
   string code = "M1";
   string M101__CountryCode;
   float? M102__CarriageValue?;
   float? M103__DeclaredValue?;
   string M104__RateValueQualifier?;
   string M105__EntityIdentifierCode?;
   string M106__Free_FormMessage?;
   string M107__RateValueQualifier?;
   string M108__MonetaryAmount?;
   string M109__PercentQualifier?;
   string M110__Percent?;
   string M111__PercentQualifier?;
   string M112__Percent?;
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

public type ContainerDetails_Type record {|
   string code = "Y2";
   float Y201__NumberofContainers;
   string Y202__ContainerTypeRequestCode?;
   string Y203__TypeofServiceCode?;
   string Y204__EquipmentType;
   string Y205__TransportationMethodTypeCode?;
   string Y206__IntermodalServiceCode?;
   string Y207__StandardCarrierAlphaCode?;
   string Y208__ContainerTermsCode?;
   string Y209__ContainerTermsCodeQualifier?;
   float? Y210__TotalStopoffs?;
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

public type Loop_1_0130_GType record {|
   Name_Type? Name?;
   AdditionalNameInformation_Type? AdditionalNameInformation?;
   AddressInformation_Type? AddressInformation?;
   GeographicLocation_Type? GeographicLocation?;
|};

public type Contact_Type record {|
   string code = "G61";
   string G6101__ContactFunctionCode;
   string G6102__Name;
   string G6103__CommunicationNumberQualifier?;
   string G6104__CommunicationNumber?;
   string G6105__ContactInquiryReference?;
|};

public type PortorTerminal_Type record {|
   string code = "R4";
   string R401__PortorTerminalFunctionCode;
   string R402__LocationQualifier?;
   string R403__LocationIdentifier?;
   string R404__PortName?;
   string R405__CountryCode?;
   string R406__TerminalName?;
   string R407__PierNumber?;
   string R408__StateorProvinceCode?;
|};

public type DateTimeReference_Type record {|
   string code = "DTM";
   string DTM01__DateTimeQualifier;
   string DTM02__Date?;
   string DTM03__Time?;
   string DTM04__TimeCode?;
   string DTM05__DateTimePeriodFormatQualifier?;
   string DTM06__DateTimePeriod?;
|};

public type Loop_1_0180_GType record {|
   PortorTerminal_Type? PortorTerminal?;
   DateTimeReference_Type? DateTimeReference?;
|};

public type RouteInformationwithPreference_Type record {|
   string code = "R2A";
   string R2A01__RoutingSequenceCode;
   string R2A02__Preference;
   string R2A03__TransportationMethodTypeCode?;
   string R2A04__StandardCarrierAlphaCode?;
   string R2A05__LocationQualifier?;
   string R2A06__LocationIdentifier?;
   string R2A07__TypeofServiceCode?;
   string R2A08__RouteCode?;
   string R2A09__RouteDescription?;
   string R2A10__EntityIdentifierCode?;
|};

public type RouteInformation_Type record {|
   string code = "R2";
   string R201__StandardCarrierAlphaCode;
   string R202__RoutingSequenceCode;
   string R203__CityName?;
   string R204__StandardPointLocationCode?;
   string R205__IntermodalServiceCode?;
   string R206__TransportationMethodTypeCode?;
   string R207__IntermediateSwitchCarrier?;
   string R208__IntermediateSwitchCarrier?;
   string R209__InvoiceNumber?;
   string R210__Date?;
   string R211__Free_formDescription?;
   string R212__TypeofServiceCode?;
   string R213__RouteDescription?;
|};

public type Remarks_Type record {|
   string code = "K1";
   string K101__Free_FormMessage;
   string K102__Free_FormMessage?;
|};

public type SpecialHandlingInstructions_Type record {|
   string code = "H3";
   string H301__SpecialHandlingCode?;
   string H302__SpecialHandlingDescription?;
   string H303__ProtectiveServiceCode?;
   string H304__VentInstructionCode?;
   string H305__TariffApplicationCode?;
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

public type CertificationsandClauses_Type record {|
   string code = "C8";
   float? C801__LadingLineItemNumber?;
   string C802__CertificationClauseCode?;
   string C803__CertificationClauseText?;
   string C804__ShippersExportDeclarationRequirements?;
|};

public type CertificationsClausesContinuation_Type record {|
   string code = "C8C";
   string C8C01__CertificationClauseText;
   string C8C02__CertificationClauseText?;
   string C8C03__CertificationClauseText?;
|};

public type Loop_1_0240_GType record {|
   CertificationsandClauses_Type? CertificationsandClauses?;
   CertificationsClausesContinuation_Type? CertificationsClausesContinuation?;
|};

public type AssignedNumber_Type record {|
   string code = "LX";
   float LX01__AssignedNumber;
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

public type QTY03_CompositeUnitofMeasure_GType record {|
   string QTY03_01_UnitorBasisforMeasurementCode;
   string QTY03_02_Exponent?;
   string QTY03_03_Multiplier?;
   string QTY03_04_UnitorBasisforMeasurementCode?;
   string QTY03_05_Exponent?;
   string QTY03_06_Multiplier?;
   string QTY03_07_UnitorBasisforMeasurementCode?;
   string QTY03_08_Exponent?;
   string QTY03_09_Multiplier?;
   string QTY03_10_UnitorBasisforMeasurementCode?;
   string QTY03_11_Exponent?;
   string QTY03_12_Multiplier?;
   string QTY03_13_UnitorBasisforMeasurementCode?;
   string QTY03_14_Exponent?;
   string QTY03_15_Multiplier?;
|};

public type Quantity_Type record {|
   string code = "QTY";
   string QTY01__QuantityQualifier;
   string QTY02__Quantity?;
   QTY03_CompositeUnitofMeasure_GType? QTY03_CompositeUnitofMeasure?;
   string QTY04__Free_FormMessage?;
|};

public type CargoLocationReference_Type record {|
   string code = "V4";
   string V401__VesselStowageLocation;
|};

public type N1202_CompositeUnitofMeasure_GType record {|
   string N1202_01_UnitorBasisforMeasurementCode;
   string N1202_02_Exponent?;
   string N1202_03_Multiplier?;
   string N1202_04_UnitorBasisforMeasurementCode?;
   string N1202_05_Exponent?;
   string N1202_06_Multiplier?;
   string N1202_07_UnitorBasisforMeasurementCode?;
   string N1202_08_Exponent?;
   string N1202_09_Multiplier?;
   string N1202_10_UnitorBasisforMeasurementCode?;
   string N1202_11_Exponent?;
   string N1202_12_Multiplier?;
   string N1202_13_UnitorBasisforMeasurementCode?;
   string N1202_14_Exponent?;
   string N1202_15_Multiplier?;
|};

public type EquipmentEnvironment_Type record {|
   string code = "N12";
   string N1201__FuelType;
   N1202_CompositeUnitofMeasure_GType N1202_CompositeUnitofMeasure;
|};

public type SealNumbers_Type record {|
   string code = "M7";
   string M701__SealNumber;
   string M702__SealNumber?;
   string M703__SealNumber?;
   string M704__SealNumber?;
   string M705__EntityIdentifierCode?;
|};

public type EquipmentandTemperature_Type record {|
   string code = "W09";
   string W0901__EquipmentDescriptionCode;
   string W0902__Temperature?;
   string W0903__UnitorBasisforMeasurementCode?;
   string W0904__Temperature?;
   string W0905__UnitorBasisforMeasurementCode?;
   string W0906__FreeFormMessage?;
   string W0907__VentSettingCode?;
   float? W0908__Percent?;
   string W0909__Quantity?;
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

public type Loop_2_0070_GType record {|
   RateandCharges_Type? RateandCharges?;
   Currency_Type? Currency?;
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

public type ExportLicense_Type record {|
   string code = "X1";
   string X101__LicensingAgencyCode?;
   string X102__ExportLicenseNumber?;
   string X103__ExportLicenseStatusCode?;
   string X104__Date?;
   string X105__ExportLicenseSymbolCode?;
   string X106__ExportLicenseControlCode?;
   string X107__CountryCode?;
   string X108__ScheduleBCode?;
   string X109__InternationalDomesticCode?;
   float? X110__LadingQuantity?;
   string X111__LadingValue?;
   string X112__ExportFilingKeyCode?;
   string X113__UnitorBasisforMeasurementCode?;
   string X114__UnitPrice?;
   string X115__USGovernmentLicenseType?;
   string X116__IdentificationCode?;
|};

public type ImportLicense_Type record {|
   string code = "X2";
   string X201__ImportLicenseNumber;
   string X202__Date?;
   string X203__Date?;
   string X204__ImportLicenseNumber?;
   string X205__Date?;
   string X206__Date?;
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

public type Loop_2_0130_GType record {|
   HazardousMaterial_Type? HazardousMaterial?;
   AdditionalHazardousMaterialDescription_Type? AdditionalHazardousMaterialDescription?;
|};

public type Loop_2_0020_GType record {|
   EquipmentDetails_Type? EquipmentDetails?;
   Quantity_Type? Quantity?;
   CargoLocationReference_Type? CargoLocationReference?;
   EquipmentEnvironment_Type? EquipmentEnvironment?;
   SealNumbers_Type? SealNumbers?;
   EquipmentandTemperature_Type? EquipmentandTemperature?;
   Loop_2_0070_GType? Loop_2_0070?;
   TariffReference_Type? TariffReference?;
   ExportLicense_Type? ExportLicense?;
   ImportLicense_Type? ImportLicense?;
   ReferenceIdentification_Type? ReferenceIdentification?;
   Loop_2_0130_GType? Loop_2_0130?;
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

public type Loop_2_0170_GType record {|
   RateandCharges_Type? RateandCharges?;
   Currency_Type? Currency?;
|};

public type Loop_2_0220_GType record {|
   CertificationsandClauses_Type? CertificationsandClauses?;
   CertificationsClausesContinuation_Type? CertificationsClausesContinuation?;
|};

public type Loop_2_0230_GType record {|
   HazardousMaterial_Type? HazardousMaterial?;
   AdditionalHazardousMaterialDescription_Type? AdditionalHazardousMaterialDescription?;
|};

public type Loop_2_0150_GType record {|
   LineItem_QuantityandWeight_Type? LineItem_QuantityandWeight?;
   DescriptionMarksandNumbers_Type? DescriptionMarksandNumbers?;
   Loop_2_0170_GType? Loop_2_0170?;
   TariffReference_Type? TariffReference?;
   ExportLicense_Type? ExportLicense?;
   ImportLicense_Type? ImportLicense?;
   Loop_2_0220_GType? Loop_2_0220?;
   Loop_2_0230_GType? Loop_2_0230?;
|};

public type Loop_2_0010_GType record {|
   AssignedNumber_Type? AssignedNumber?;
   Loop_2_0020_GType? Loop_2_0020?;
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

public type PWK08_ActionsIndicated_GType record {|
   string PWK08_01_PaperworkReportActionCode;
   string PWK08_02_PaperworkReportActionCode?;
   string PWK08_03_PaperworkReportActionCode?;
   string PWK08_04_PaperworkReportActionCode?;
   string PWK08_05_PaperworkReportActionCode?;
|};

public type Paperwork_Type record {|
   string code = "PWK";
   string PWK01__ReportTypeCode;
   string PWK02__ReportTransmissionCode?;
   float? PWK03__ReportCopiesNeeded?;
   string PWK04__EntityIdentifierCode?;
   string PWK05__IdentificationCodeQualifier?;
   string PWK06__IdentificationCode?;
   string PWK07__Description?;
   PWK08_ActionsIndicated_GType? PWK08_ActionsIndicated?;
   string PWK09__RequestCategoryCode?;
|};

public type Loop_3_0030_GType record {|
   RateandCharges_Type? RateandCharges?;
   Currency_Type? Currency?;
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

public type BusinessInstructionsandReferenceNumber_Type record {|
   string code = "L11";
   string L1101__ReferenceIdentification?;
   string L1102__ReferenceIdentificationQualifier?;
   string L1103__Description?;
|};

public type TransactionSetTrailer_Type record {|
   string code = "SE";
   float SE01__NumberofIncludedSegments;
   string SE02__TransactionSetControlNumber;
|};

public type X12_004010_310_GType record {|
   TransactionSetHeader_Type? TransactionSetHeader?;
   BeginningSegmentforCarriersInvoice_Type? BeginningSegmentforCarriersInvoice?;
   SetPurpose_Type? SetPurpose?;
   Authentication_Type? Authentication?;
   CompensationInformation_Type? CompensationInformation?;
   ReferenceIdentification_Type? ReferenceIdentification?;
   VesselIdentification_Type? VesselIdentification?;
   LetterofCreditReference_Type? LetterofCreditReference?;
   Insurance_Type? Insurance?;
   BankID_Type? BankID?;
   Currency_Type? Currency?;
   ContainerDetails_Type? ContainerDetails?;
   Loop_1_0130_GType? Loop_1_0130?;
   Contact_Type? Contact?;
   Loop_1_0180_GType? Loop_1_0180?;
   RouteInformationwithPreference_Type? RouteInformationwithPreference?;
   RouteInformation_Type? RouteInformation?;
   Remarks_Type? Remarks?;
   SpecialHandlingInstructions_Type? SpecialHandlingInstructions?;
   DescriptionMarksandNumbers_Type? DescriptionMarksandNumbers?;
   Loop_1_0240_GType? Loop_1_0240?;
   Loop_2_0010_GType? Loop_2_0010?;
   TotalWeightandCharges_Type? TotalWeightandCharges?;
   Paperwork_Type? Paperwork?;
   Loop_3_0030_GType? Loop_3_0030?;
   EventDetail_Type? EventDetail?;
   CertificationsandClauses_Type? CertificationsandClauses?;
   BusinessInstructionsandReferenceNumber_Type? BusinessInstructionsandReferenceNumber?;
   TransactionSetTrailer_Type? TransactionSetTrailer?;
|};

public type FunctionalGroupTrailer_Type record {|
   string code = "GE";
   float GE01__NumberofTransactionSetsIncluded;
   float GE02__GroupControlNumber;
|};

public type X12_FunctionalGroup_GType record {|
   FunctionalGroupHeader_Type? FunctionalGroupHeader?;
   X12_004010_310_GType? X12_004010_310?;
   FunctionalGroupTrailer_Type? FunctionalGroupTrailer?;
|};

public type InterchangeControlTrailer_Type record {|
   string code = "IEA";
   float IEA01__NumberofIncludedFunctionalGroups;
   float IEA02__InterchangeControlNumber;
|};

public type EDI_310_X12_004010_310 record {|
   InterchangeControlHeader_Type? InterchangeControlHeader?;
   X12_FunctionalGroup_GType? X12_FunctionalGroup?;
   InterchangeControlTrailer_Type? InterchangeControlTrailer?;
|};



final readonly & json schemaJson = {"name":"EDI_310_X12_004010_310", "tag":"X12_004010_310", "delimiters":{"segment":"~", "field":"*", "component":":", "subcomponent":"NOT_USED", "repetition":"NOT_USED"}, "ignoreSegments":[], "preserveEmptyFields":true, "includeSegmentCode":true, "segments":[{"code":"ISA", "tag":"InterchangeControlHeader", "truncatable":true, "minOccurances":0, "maxOccurances":1, "fields":[{"tag":"code", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"ISA01__AuthorizationInformationQualifier", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"ISA02__AuthorizationInformation", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"ISA03__SecurityInformationQualifier", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"ISA04__SecurityInformation", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"ISA05__InterchangeIDQualifier", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"ISA06__InterchangeSenderID", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"ISA07__InterchangeIDQualifier", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"ISA08__InterchangeReceiverID", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"ISA09__InterchangeDate", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"ISA10__InterchangeTime", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"ISA11__InterchangeControlStandardsIdentifier", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"ISA12__InterchangeControlVersionNumber", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"ISA13__InterchangeControlNumber", "repeat":false, "required":true, "truncatable":true, "dataType":"float", "startIndex":-1, "length":-1, "components":[]}, {"tag":"ISA14__AcknowledgmentRequested", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"ISA15__UsageIndicator", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"ISA16__ComponentElementSeparator", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}]}, {"tag":"X12_FunctionalGroup", "minOccurances":0, "maxOccurances":1, "segments":[{"code":"GS", "tag":"FunctionalGroupHeader", "truncatable":true, "minOccurances":0, "maxOccurances":1, "fields":[{"tag":"code", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"GS01__FunctionalIdentifierCode", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"GS02__ApplicationSendersCode", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"GS03__ApplicationReceiversCode", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"GS04__Date", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"GS05__Time", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"GS06__GroupControlNumber", "repeat":false, "required":true, "truncatable":true, "dataType":"float", "startIndex":-1, "length":-1, "components":[]}, {"tag":"GS07__ResponsibleAgencyCode", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"GS08__VersionReleaseIndustryIdentifierCode", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}]}, {"tag":"X12_004010_310", "minOccurances":0, "maxOccurances":1, "segments":[{"code":"ST", "tag":"TransactionSetHeader", "truncatable":true, "minOccurances":0, "maxOccurances":1, "fields":[{"tag":"code", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"ST01__TransactionSetIdentifierCode", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"ST02__TransactionSetControlNumber", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}]}, {"code":"B3", "tag":"BeginningSegmentforCarriersInvoice", "truncatable":true, "minOccurances":0, "maxOccurances":1, "fields":[{"tag":"code", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"B301__ShipmentQualifier", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"B302__InvoiceNumber", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"B303__ShipmentIdentificationNumber", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"B304__ShipmentMethodofPayment", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"B305__WeightUnitCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"B306__Date", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"B307__NetAmountDue", "repeat":false, "required":true, "truncatable":true, "dataType":"float", "startIndex":-1, "length":-1, "components":[]}, {"tag":"B308__CorrectionIndicator", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"B309__DeliveryDate", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"B310__DateTimeQualifier", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"B311__StandardCarrierAlphaCode", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"B312__Date", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"B313__TariffServiceCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"B314__TransportationTermsCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}]}, {"code":"B2A", "tag":"SetPurpose", "truncatable":true, "minOccurances":0, "maxOccurances":1, "fields":[{"tag":"code", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"B2A01__TransactionSetPurposeCode", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"B2A02__ApplicationType", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}]}, {"code":"Y6", "tag":"Authentication", "truncatable":true, "minOccurances":0, "maxOccurances":1, "fields":[{"tag":"code", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"Y601__AuthorityIdentifierCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"Y602__Authority", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"Y603__AuthorizationDate", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}]}, {"code":"G3", "tag":"CompensationInformation", "truncatable":true, "minOccurances":0, "maxOccurances":1, "fields":[{"tag":"code", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"G301__CompensationPaid", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"G302__TotalCompensationAmount", "repeat":false, "required":true, "truncatable":true, "dataType":"float", "startIndex":-1, "length":-1, "components":[]}, {"tag":"G303__Name", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"G304__BusinessTransactionStatus", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"G305__MonetaryAmount", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"G306__CompensationQualifier", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}]}, {"code":"N9", "tag":"ReferenceIdentification", "truncatable":true, "minOccurances":0, "maxOccurances":1, "fields":[{"tag":"code", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"N901__ReferenceIdentificationQualifier", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"N902__ReferenceIdentification", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"N903__Free_formDescription", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"N904__Date", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"N905__Time", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"N906__TimeCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"N907_ReferenceIdentifier", "repeat":false, "required":false, "truncatable":true, "dataType":"composite", "startIndex":-1, "length":-1, "components":[{"tag":"N907_01_ReferenceIdentificationQualifier", "required":true, "truncatable":true, "dataType":"string", "subcomponents":[]}, {"tag":"N907_02_ReferenceIdentification", "required":true, "truncatable":true, "dataType":"string", "subcomponents":[]}, {"tag":"N907_03_ReferenceIdentificationQualifier", "required":true, "truncatable":true, "dataType":"string", "subcomponents":[]}, {"tag":"N907_04_ReferenceIdentification", "required":true, "truncatable":true, "dataType":"string", "subcomponents":[]}, {"tag":"N907_05_ReferenceIdentificationQualifier", "required":true, "truncatable":true, "dataType":"string", "subcomponents":[]}, {"tag":"N907_06_ReferenceIdentification", "required":true, "truncatable":true, "dataType":"string", "subcomponents":[]}]}]}, {"code":"V1", "tag":"VesselIdentification", "truncatable":true, "minOccurances":0, "maxOccurances":1, "fields":[{"tag":"code", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"V101__VesselCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"V102__VesselName", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"V103__CountryCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"V104__FlightVoyageNumber", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"V105__StandardCarrierAlphaCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"V106__VesselRequirementCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"V107__VesselTypeCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"V108__VesselCodeQualifier", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"V109__TransportationMethodTypeCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}]}, {"code":"M0", "tag":"LetterofCreditReference", "truncatable":true, "minOccurances":0, "maxOccurances":1, "fields":[{"tag":"code", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"M001__LetterofCreditNumber", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"M002__Date", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"M003__Date", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"M004__Date", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}]}, {"code":"M1", "tag":"Insurance", "truncatable":true, "minOccurances":0, "maxOccurances":1, "fields":[{"tag":"code", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"M101__CountryCode", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"M102__CarriageValue", "repeat":false, "required":false, "truncatable":true, "dataType":"float", "startIndex":-1, "length":-1, "components":[]}, {"tag":"M103__DeclaredValue", "repeat":false, "required":false, "truncatable":true, "dataType":"float", "startIndex":-1, "length":-1, "components":[]}, {"tag":"M104__RateValueQualifier", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"M105__EntityIdentifierCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"M106__Free_FormMessage", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"M107__RateValueQualifier", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"M108__MonetaryAmount", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"M109__PercentQualifier", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"M110__Percent", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"M111__PercentQualifier", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"M112__Percent", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}]}, {"code":"C2", "tag":"BankID", "truncatable":true, "minOccurances":0, "maxOccurances":1, "fields":[{"tag":"code", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"C201__BankClientCode", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"C202__IdentificationCodeQualifier", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"C203__IdentificationCode", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"C204__ClientBankNumber", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"C205__BankAccountNumber", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"C206__PaymentMethodCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"C207__Date", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}]}, {"code":"C3", "tag":"Currency", "truncatable":true, "minOccurances":0, "maxOccurances":1, "fields":[{"tag":"code", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"C301__CurrencyCode", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"C302__ExchangeRate", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"C303__CurrencyCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"C304__CurrencyCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}]}, {"code":"Y2", "tag":"ContainerDetails", "truncatable":true, "minOccurances":0, "maxOccurances":1, "fields":[{"tag":"code", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"Y201__NumberofContainers", "repeat":false, "required":true, "truncatable":true, "dataType":"float", "startIndex":-1, "length":-1, "components":[]}, {"tag":"Y202__ContainerTypeRequestCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"Y203__TypeofServiceCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"Y204__EquipmentType", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"Y205__TransportationMethodTypeCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"Y206__IntermodalServiceCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"Y207__StandardCarrierAlphaCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"Y208__ContainerTermsCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"Y209__ContainerTermsCodeQualifier", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"Y210__TotalStopoffs", "repeat":false, "required":false, "truncatable":true, "dataType":"float", "startIndex":-1, "length":-1, "components":[]}]}, {"tag":"Loop_1_0130", "minOccurances":0, "maxOccurances":1, "segments":[{"code":"N1", "tag":"Name", "truncatable":true, "minOccurances":0, "maxOccurances":1, "fields":[{"tag":"code", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"N101__EntityIdentifierCode", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"N102__Name", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"N103__IdentificationCodeQualifier", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"N104__IdentificationCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"N105__EntityRelationshipCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"N106__EntityIdentifierCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}]}, {"code":"N2", "tag":"AdditionalNameInformation", "truncatable":true, "minOccurances":0, "maxOccurances":1, "fields":[{"tag":"code", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"N201__Name", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"N202__Name", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}]}, {"code":"N3", "tag":"AddressInformation", "truncatable":true, "minOccurances":0, "maxOccurances":1, "fields":[{"tag":"code", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"N301__AddressInformation", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"N302__AddressInformation", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}]}, {"code":"N4", "tag":"GeographicLocation", "truncatable":true, "minOccurances":0, "maxOccurances":1, "fields":[{"tag":"code", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"N401__CityName", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"N402__StateorProvinceCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"N403__PostalCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"N404__CountryCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"N405__LocationQualifier", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"N406__LocationIdentifier", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}]}]}, {"code":"G61", "tag":"Contact", "truncatable":true, "minOccurances":0, "maxOccurances":1, "fields":[{"tag":"code", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"G6101__ContactFunctionCode", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"G6102__Name", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"G6103__CommunicationNumberQualifier", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"G6104__CommunicationNumber", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"G6105__ContactInquiryReference", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}]}, {"tag":"Loop_1_0180", "minOccurances":0, "maxOccurances":1, "segments":[{"code":"R4", "tag":"PortorTerminal", "truncatable":true, "minOccurances":0, "maxOccurances":1, "fields":[{"tag":"code", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"R401__PortorTerminalFunctionCode", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"R402__LocationQualifier", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"R403__LocationIdentifier", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"R404__PortName", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"R405__CountryCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"R406__TerminalName", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"R407__PierNumber", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"R408__StateorProvinceCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}]}, {"code":"DTM", "tag":"DateTimeReference", "truncatable":true, "minOccurances":0, "maxOccurances":1, "fields":[{"tag":"code", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"DTM01__DateTimeQualifier", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"DTM02__Date", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"DTM03__Time", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"DTM04__TimeCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"DTM05__DateTimePeriodFormatQualifier", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"DTM06__DateTimePeriod", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}]}]}, {"code":"R2A", "tag":"RouteInformationwithPreference", "truncatable":true, "minOccurances":0, "maxOccurances":1, "fields":[{"tag":"code", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"R2A01__RoutingSequenceCode", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"R2A02__Preference", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"R2A03__TransportationMethodTypeCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"R2A04__StandardCarrierAlphaCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"R2A05__LocationQualifier", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"R2A06__LocationIdentifier", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"R2A07__TypeofServiceCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"R2A08__RouteCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"R2A09__RouteDescription", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"R2A10__EntityIdentifierCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}]}, {"code":"R2", "tag":"RouteInformation", "truncatable":true, "minOccurances":0, "maxOccurances":1, "fields":[{"tag":"code", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"R201__StandardCarrierAlphaCode", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"R202__RoutingSequenceCode", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"R203__CityName", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"R204__StandardPointLocationCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"R205__IntermodalServiceCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"R206__TransportationMethodTypeCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"R207__IntermediateSwitchCarrier", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"R208__IntermediateSwitchCarrier", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"R209__InvoiceNumber", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"R210__Date", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"R211__Free_formDescription", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"R212__TypeofServiceCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"R213__RouteDescription", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}]}, {"code":"K1", "tag":"Remarks", "truncatable":true, "minOccurances":0, "maxOccurances":1, "fields":[{"tag":"code", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"K101__Free_FormMessage", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"K102__Free_FormMessage", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}]}, {"code":"H3", "tag":"SpecialHandlingInstructions", "truncatable":true, "minOccurances":0, "maxOccurances":1, "fields":[{"tag":"code", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"H301__SpecialHandlingCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"H302__SpecialHandlingDescription", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"H303__ProtectiveServiceCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"H304__VentInstructionCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"H305__TariffApplicationCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}]}, {"code":"L5", "tag":"DescriptionMarksandNumbers", "truncatable":true, "minOccurances":0, "maxOccurances":1, "fields":[{"tag":"code", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"L501__LadingLineItemNumber", "repeat":false, "required":false, "truncatable":true, "dataType":"float", "startIndex":-1, "length":-1, "components":[]}, {"tag":"L502__LadingDescription", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"L503__CommodityCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"L504__CommodityCodeQualifier", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"L505__PackagingCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"L506__MarksandNumbers", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"L507__MarksandNumbersQualifier", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"L508__CommodityCodeQualifier", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"L509__CommodityCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"L510__CompartmentIDCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}]}, {"tag":"Loop_1_0240", "minOccurances":0, "maxOccurances":1, "segments":[{"code":"C8", "tag":"CertificationsandClauses", "truncatable":true, "minOccurances":0, "maxOccurances":1, "fields":[{"tag":"code", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"C801__LadingLineItemNumber", "repeat":false, "required":false, "truncatable":true, "dataType":"float", "startIndex":-1, "length":-1, "components":[]}, {"tag":"C802__CertificationClauseCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"C803__CertificationClauseText", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"C804__ShippersExportDeclarationRequirements", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}]}, {"code":"C8C", "tag":"CertificationsClausesContinuation", "truncatable":true, "minOccurances":0, "maxOccurances":1, "fields":[{"tag":"code", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"C8C01__CertificationClauseText", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"C8C02__CertificationClauseText", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"C8C03__CertificationClauseText", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}]}]}, {"tag":"Loop_2_0010", "minOccurances":0, "maxOccurances":1, "segments":[{"code":"LX", "tag":"AssignedNumber", "truncatable":true, "minOccurances":0, "maxOccurances":1, "fields":[{"tag":"code", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"LX01__AssignedNumber", "repeat":false, "required":true, "truncatable":true, "dataType":"float", "startIndex":-1, "length":-1, "components":[]}]}, {"tag":"Loop_2_0020", "minOccurances":0, "maxOccurances":1, "segments":[{"code":"N7", "tag":"EquipmentDetails", "truncatable":true, "minOccurances":0, "maxOccurances":1, "fields":[{"tag":"code", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"N701__EquipmentInitial", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"N702__EquipmentNumber", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"N703__Weight", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"N704__WeightQualifier", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"N705__TareWeight", "repeat":false, "required":false, "truncatable":true, "dataType":"float", "startIndex":-1, "length":-1, "components":[]}, {"tag":"N706__WeightAllowance", "repeat":false, "required":false, "truncatable":true, "dataType":"float", "startIndex":-1, "length":-1, "components":[]}, {"tag":"N707__Dunnage", "repeat":false, "required":false, "truncatable":true, "dataType":"float", "startIndex":-1, "length":-1, "components":[]}, {"tag":"N708__Volume", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"N709__VolumeUnitQualifier", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"N710__OwnershipCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"N711__EquipmentDescriptionCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"N712__StandardCarrierAlphaCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"N713__TemperatureControl", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"N714__Position", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"N715__EquipmentLength", "repeat":false, "required":false, "truncatable":true, "dataType":"float", "startIndex":-1, "length":-1, "components":[]}, {"tag":"N716__TareQualifierCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"N717__WeightUnitCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"N718__EquipmentNumberCheckDigit", "repeat":false, "required":false, "truncatable":true, "dataType":"float", "startIndex":-1, "length":-1, "components":[]}, {"tag":"N719__TypeofServiceCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"N720__Height", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"N721__Width", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"N722__EquipmentType", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"N723__StandardCarrierAlphaCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"N724__CarTypeCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}]}, {"code":"QTY", "tag":"Quantity", "truncatable":true, "minOccurances":0, "maxOccurances":1, "fields":[{"tag":"code", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"QTY01__QuantityQualifier", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"QTY02__Quantity", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"QTY03_CompositeUnitofMeasure", "repeat":false, "required":false, "truncatable":true, "dataType":"composite", "startIndex":-1, "length":-1, "components":[{"tag":"QTY03_01_UnitorBasisforMeasurementCode", "required":true, "truncatable":true, "dataType":"string", "subcomponents":[]}, {"tag":"QTY03_02_Exponent", "required":false, "truncatable":true, "dataType":"string", "subcomponents":[]}, {"tag":"QTY03_03_Multiplier", "required":false, "truncatable":true, "dataType":"string", "subcomponents":[]}, {"tag":"QTY03_04_UnitorBasisforMeasurementCode", "required":false, "truncatable":true, "dataType":"string", "subcomponents":[]}, {"tag":"QTY03_05_Exponent", "required":false, "truncatable":true, "dataType":"string", "subcomponents":[]}, {"tag":"QTY03_06_Multiplier", "required":false, "truncatable":true, "dataType":"string", "subcomponents":[]}, {"tag":"QTY03_07_UnitorBasisforMeasurementCode", "required":false, "truncatable":true, "dataType":"string", "subcomponents":[]}, {"tag":"QTY03_08_Exponent", "required":false, "truncatable":true, "dataType":"string", "subcomponents":[]}, {"tag":"QTY03_09_Multiplier", "required":false, "truncatable":true, "dataType":"string", "subcomponents":[]}, {"tag":"QTY03_10_UnitorBasisforMeasurementCode", "required":false, "truncatable":true, "dataType":"string", "subcomponents":[]}, {"tag":"QTY03_11_Exponent", "required":false, "truncatable":true, "dataType":"string", "subcomponents":[]}, {"tag":"QTY03_12_Multiplier", "required":false, "truncatable":true, "dataType":"string", "subcomponents":[]}, {"tag":"QTY03_13_UnitorBasisforMeasurementCode", "required":false, "truncatable":true, "dataType":"string", "subcomponents":[]}, {"tag":"QTY03_14_Exponent", "required":false, "truncatable":true, "dataType":"string", "subcomponents":[]}, {"tag":"QTY03_15_Multiplier", "required":false, "truncatable":true, "dataType":"string", "subcomponents":[]}]}, {"tag":"QTY04__Free_FormMessage", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}]}, {"code":"V4", "tag":"CargoLocationReference", "truncatable":true, "minOccurances":0, "maxOccurances":1, "fields":[{"tag":"code", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"V401__VesselStowageLocation", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}]}, {"code":"N12", "tag":"EquipmentEnvironment", "truncatable":true, "minOccurances":0, "maxOccurances":1, "fields":[{"tag":"code", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"N1201__FuelType", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"N1202_CompositeUnitofMeasure", "repeat":false, "required":true, "truncatable":true, "dataType":"composite", "startIndex":-1, "length":-1, "components":[{"tag":"N1202_01_UnitorBasisforMeasurementCode", "required":true, "truncatable":true, "dataType":"string", "subcomponents":[]}, {"tag":"N1202_02_Exponent", "required":false, "truncatable":true, "dataType":"string", "subcomponents":[]}, {"tag":"N1202_03_Multiplier", "required":false, "truncatable":true, "dataType":"string", "subcomponents":[]}, {"tag":"N1202_04_UnitorBasisforMeasurementCode", "required":false, "truncatable":true, "dataType":"string", "subcomponents":[]}, {"tag":"N1202_05_Exponent", "required":false, "truncatable":true, "dataType":"string", "subcomponents":[]}, {"tag":"N1202_06_Multiplier", "required":false, "truncatable":true, "dataType":"string", "subcomponents":[]}, {"tag":"N1202_07_UnitorBasisforMeasurementCode", "required":false, "truncatable":true, "dataType":"string", "subcomponents":[]}, {"tag":"N1202_08_Exponent", "required":false, "truncatable":true, "dataType":"string", "subcomponents":[]}, {"tag":"N1202_09_Multiplier", "required":false, "truncatable":true, "dataType":"string", "subcomponents":[]}, {"tag":"N1202_10_UnitorBasisforMeasurementCode", "required":false, "truncatable":true, "dataType":"string", "subcomponents":[]}, {"tag":"N1202_11_Exponent", "required":false, "truncatable":true, "dataType":"string", "subcomponents":[]}, {"tag":"N1202_12_Multiplier", "required":false, "truncatable":true, "dataType":"string", "subcomponents":[]}, {"tag":"N1202_13_UnitorBasisforMeasurementCode", "required":false, "truncatable":true, "dataType":"string", "subcomponents":[]}, {"tag":"N1202_14_Exponent", "required":false, "truncatable":true, "dataType":"string", "subcomponents":[]}, {"tag":"N1202_15_Multiplier", "required":false, "truncatable":true, "dataType":"string", "subcomponents":[]}]}]}, {"code":"M7", "tag":"SealNumbers", "truncatable":true, "minOccurances":0, "maxOccurances":1, "fields":[{"tag":"code", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"M701__SealNumber", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"M702__SealNumber", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"M703__SealNumber", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"M704__SealNumber", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"M705__EntityIdentifierCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}]}, {"code":"W09", "tag":"EquipmentandTemperature", "truncatable":true, "minOccurances":0, "maxOccurances":1, "fields":[{"tag":"code", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"W0901__EquipmentDescriptionCode", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"W0902__Temperature", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"W0903__UnitorBasisforMeasurementCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"W0904__Temperature", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"W0905__UnitorBasisforMeasurementCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"W0906__FreeFormMessage", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"W0907__VentSettingCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"W0908__Percent", "repeat":false, "required":false, "truncatable":true, "dataType":"float", "startIndex":-1, "length":-1, "components":[]}, {"tag":"W0909__Quantity", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}]}, {"tag":"Loop_2_0070", "minOccurances":0, "maxOccurances":1, "segments":[{"code":"L1", "tag":"RateandCharges", "truncatable":true, "minOccurances":0, "maxOccurances":1, "fields":[{"tag":"code", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"L101__LadingLineItemNumber", "repeat":false, "required":false, "truncatable":true, "dataType":"float", "startIndex":-1, "length":-1, "components":[]}, {"tag":"L102__FreightRate", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"L103__RateValueQualifier", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"L104__Charge", "repeat":false, "required":false, "truncatable":true, "dataType":"float", "startIndex":-1, "length":-1, "components":[]}, {"tag":"L105__Advances", "repeat":false, "required":false, "truncatable":true, "dataType":"float", "startIndex":-1, "length":-1, "components":[]}, {"tag":"L106__PrepaidAmount", "repeat":false, "required":false, "truncatable":true, "dataType":"float", "startIndex":-1, "length":-1, "components":[]}, {"tag":"L107__RateCombinationPointCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"L108__SpecialChargeorAllowanceCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"L109__RateClassCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"L110__EntitlementCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"L111__ChargeMethodofPayment", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"L112__SpecialChargeDescription", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"L113__TariffApplicationCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"L114__DeclaredValue", "repeat":false, "required":false, "truncatable":true, "dataType":"float", "startIndex":-1, "length":-1, "components":[]}, {"tag":"L115__RateValueQualifier", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"L116__LadingLiabilityCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"L117__BilledRated_asQuantity", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"L118__BilledRated_asQualifier", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"L119__Percent", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"L120__CurrencyCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"L121__Amount", "repeat":false, "required":false, "truncatable":true, "dataType":"float", "startIndex":-1, "length":-1, "components":[]}]}, {"code":"C3", "tag":"Currency", "truncatable":true, "minOccurances":0, "maxOccurances":1, "fields":[{"tag":"code", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"C301__CurrencyCode", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"C302__ExchangeRate", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"C303__CurrencyCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"C304__CurrencyCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}]}]}, {"code":"L7", "tag":"TariffReference", "truncatable":true, "minOccurances":0, "maxOccurances":1, "fields":[{"tag":"code", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"L701__LadingLineItemNumber", "repeat":false, "required":false, "truncatable":true, "dataType":"float", "startIndex":-1, "length":-1, "components":[]}, {"tag":"L702__TariffAgencyCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"L703__TariffNumber", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"L704__TariffSection", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"L705__TariffItemNumber", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"L706__TariffItemPart", "repeat":false, "required":false, "truncatable":true, "dataType":"float", "startIndex":-1, "length":-1, "components":[]}, {"tag":"L707__FreightClassCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"L708__TariffSupplementIdentifier", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"L709__ExParte", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"L710__Date", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"L711__RateBasisNumber", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"L712__TariffColumn", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"L713__TariffDistance", "repeat":false, "required":false, "truncatable":true, "dataType":"float", "startIndex":-1, "length":-1, "components":[]}, {"tag":"L714__DistanceQualifier", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"L715__CityName", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"L716__StateorProvinceCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}]}, {"code":"X1", "tag":"ExportLicense", "truncatable":true, "minOccurances":0, "maxOccurances":1, "fields":[{"tag":"code", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"X101__LicensingAgencyCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"X102__ExportLicenseNumber", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"X103__ExportLicenseStatusCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"X104__Date", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"X105__ExportLicenseSymbolCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"X106__ExportLicenseControlCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"X107__CountryCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"X108__ScheduleBCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"X109__InternationalDomesticCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"X110__LadingQuantity", "repeat":false, "required":false, "truncatable":true, "dataType":"float", "startIndex":-1, "length":-1, "components":[]}, {"tag":"X111__LadingValue", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"X112__ExportFilingKeyCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"X113__UnitorBasisforMeasurementCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"X114__UnitPrice", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"X115__USGovernmentLicenseType", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"X116__IdentificationCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}]}, {"code":"X2", "tag":"ImportLicense", "truncatable":true, "minOccurances":0, "maxOccurances":1, "fields":[{"tag":"code", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"X201__ImportLicenseNumber", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"X202__Date", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"X203__Date", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"X204__ImportLicenseNumber", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"X205__Date", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"X206__Date", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}]}, {"code":"N9", "tag":"ReferenceIdentification", "truncatable":true, "minOccurances":0, "maxOccurances":1, "fields":[{"tag":"code", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"N901__ReferenceIdentificationQualifier", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"N902__ReferenceIdentification", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"N903__Free_formDescription", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"N904__Date", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"N905__Time", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"N906__TimeCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"N907_ReferenceIdentifier", "repeat":false, "required":false, "truncatable":true, "dataType":"composite", "startIndex":-1, "length":-1, "components":[{"tag":"N907_01_ReferenceIdentificationQualifier", "required":true, "truncatable":true, "dataType":"string", "subcomponents":[]}, {"tag":"N907_02_ReferenceIdentification", "required":true, "truncatable":true, "dataType":"string", "subcomponents":[]}, {"tag":"N907_03_ReferenceIdentificationQualifier", "required":true, "truncatable":true, "dataType":"string", "subcomponents":[]}, {"tag":"N907_04_ReferenceIdentification", "required":true, "truncatable":true, "dataType":"string", "subcomponents":[]}, {"tag":"N907_05_ReferenceIdentificationQualifier", "required":true, "truncatable":true, "dataType":"string", "subcomponents":[]}, {"tag":"N907_06_ReferenceIdentification", "required":true, "truncatable":true, "dataType":"string", "subcomponents":[]}]}]}, {"tag":"Loop_2_0130", "minOccurances":0, "maxOccurances":1, "segments":[{"code":"H1", "tag":"HazardousMaterial", "truncatable":true, "minOccurances":0, "maxOccurances":1, "fields":[{"tag":"code", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"H101__HazardousMaterialCode", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"H102__HazardousMaterialClassCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"H103__HazardousMaterialCodeQualifier", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"H104__HazardousMaterialDescription", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"H105__HazardousMaterialContact", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"H106__HazardousMaterialsPage", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"H107__FlashpointTemperature", "repeat":false, "required":false, "truncatable":true, "dataType":"float", "startIndex":-1, "length":-1, "components":[]}, {"tag":"H108__UnitorBasisforMeasurementCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"H109__PackingGroupCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}]}, {"code":"H2", "tag":"AdditionalHazardousMaterialDescription", "truncatable":true, "minOccurances":0, "maxOccurances":1, "fields":[{"tag":"code", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"H201__HazardousMaterialDescription", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"H202__HazardousMaterialClassification", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}]}]}]}, {"tag":"Loop_2_0150", "minOccurances":0, "maxOccurances":1, "segments":[{"code":"L0", "tag":"LineItem_QuantityandWeight", "truncatable":true, "minOccurances":0, "maxOccurances":1, "fields":[{"tag":"code", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"L001__LadingLineItemNumber", "repeat":false, "required":false, "truncatable":true, "dataType":"float", "startIndex":-1, "length":-1, "components":[]}, {"tag":"L002__BilledRated_asQuantity", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"L003__BilledRated_asQualifier", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"L004__Weight", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"L005__WeightQualifier", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"L006__Volume", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"L007__VolumeUnitQualifier", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"L008__LadingQuantity", "repeat":false, "required":false, "truncatable":true, "dataType":"float", "startIndex":-1, "length":-1, "components":[]}, {"tag":"L009__PackagingFormCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"L010__DunnageDescription", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"L011__WeightUnitCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"L012__TypeofServiceCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"L013__Quantity", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"L014__PackagingFormCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"L015__YesNoConditionorResponseCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}]}, {"code":"L5", "tag":"DescriptionMarksandNumbers", "truncatable":true, "minOccurances":0, "maxOccurances":1, "fields":[{"tag":"code", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"L501__LadingLineItemNumber", "repeat":false, "required":false, "truncatable":true, "dataType":"float", "startIndex":-1, "length":-1, "components":[]}, {"tag":"L502__LadingDescription", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"L503__CommodityCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"L504__CommodityCodeQualifier", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"L505__PackagingCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"L506__MarksandNumbers", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"L507__MarksandNumbersQualifier", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"L508__CommodityCodeQualifier", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"L509__CommodityCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"L510__CompartmentIDCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}]}, {"tag":"Loop_2_0170", "minOccurances":0, "maxOccurances":1, "segments":[{"code":"L1", "tag":"RateandCharges", "truncatable":true, "minOccurances":0, "maxOccurances":1, "fields":[{"tag":"code", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"L101__LadingLineItemNumber", "repeat":false, "required":false, "truncatable":true, "dataType":"float", "startIndex":-1, "length":-1, "components":[]}, {"tag":"L102__FreightRate", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"L103__RateValueQualifier", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"L104__Charge", "repeat":false, "required":false, "truncatable":true, "dataType":"float", "startIndex":-1, "length":-1, "components":[]}, {"tag":"L105__Advances", "repeat":false, "required":false, "truncatable":true, "dataType":"float", "startIndex":-1, "length":-1, "components":[]}, {"tag":"L106__PrepaidAmount", "repeat":false, "required":false, "truncatable":true, "dataType":"float", "startIndex":-1, "length":-1, "components":[]}, {"tag":"L107__RateCombinationPointCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"L108__SpecialChargeorAllowanceCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"L109__RateClassCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"L110__EntitlementCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"L111__ChargeMethodofPayment", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"L112__SpecialChargeDescription", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"L113__TariffApplicationCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"L114__DeclaredValue", "repeat":false, "required":false, "truncatable":true, "dataType":"float", "startIndex":-1, "length":-1, "components":[]}, {"tag":"L115__RateValueQualifier", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"L116__LadingLiabilityCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"L117__BilledRated_asQuantity", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"L118__BilledRated_asQualifier", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"L119__Percent", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"L120__CurrencyCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"L121__Amount", "repeat":false, "required":false, "truncatable":true, "dataType":"float", "startIndex":-1, "length":-1, "components":[]}]}, {"code":"C3", "tag":"Currency", "truncatable":true, "minOccurances":0, "maxOccurances":1, "fields":[{"tag":"code", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"C301__CurrencyCode", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"C302__ExchangeRate", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"C303__CurrencyCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"C304__CurrencyCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}]}]}, {"code":"L7", "tag":"TariffReference", "truncatable":true, "minOccurances":0, "maxOccurances":1, "fields":[{"tag":"code", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"L701__LadingLineItemNumber", "repeat":false, "required":false, "truncatable":true, "dataType":"float", "startIndex":-1, "length":-1, "components":[]}, {"tag":"L702__TariffAgencyCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"L703__TariffNumber", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"L704__TariffSection", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"L705__TariffItemNumber", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"L706__TariffItemPart", "repeat":false, "required":false, "truncatable":true, "dataType":"float", "startIndex":-1, "length":-1, "components":[]}, {"tag":"L707__FreightClassCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"L708__TariffSupplementIdentifier", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"L709__ExParte", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"L710__Date", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"L711__RateBasisNumber", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"L712__TariffColumn", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"L713__TariffDistance", "repeat":false, "required":false, "truncatable":true, "dataType":"float", "startIndex":-1, "length":-1, "components":[]}, {"tag":"L714__DistanceQualifier", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"L715__CityName", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"L716__StateorProvinceCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}]}, {"code":"X1", "tag":"ExportLicense", "truncatable":true, "minOccurances":0, "maxOccurances":1, "fields":[{"tag":"code", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"X101__LicensingAgencyCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"X102__ExportLicenseNumber", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"X103__ExportLicenseStatusCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"X104__Date", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"X105__ExportLicenseSymbolCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"X106__ExportLicenseControlCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"X107__CountryCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"X108__ScheduleBCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"X109__InternationalDomesticCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"X110__LadingQuantity", "repeat":false, "required":false, "truncatable":true, "dataType":"float", "startIndex":-1, "length":-1, "components":[]}, {"tag":"X111__LadingValue", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"X112__ExportFilingKeyCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"X113__UnitorBasisforMeasurementCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"X114__UnitPrice", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"X115__USGovernmentLicenseType", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"X116__IdentificationCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}]}, {"code":"X2", "tag":"ImportLicense", "truncatable":true, "minOccurances":0, "maxOccurances":1, "fields":[{"tag":"code", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"X201__ImportLicenseNumber", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"X202__Date", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"X203__Date", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"X204__ImportLicenseNumber", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"X205__Date", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"X206__Date", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}]}, {"tag":"Loop_2_0220", "minOccurances":0, "maxOccurances":1, "segments":[{"code":"C8", "tag":"CertificationsandClauses", "truncatable":true, "minOccurances":0, "maxOccurances":1, "fields":[{"tag":"code", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"C801__LadingLineItemNumber", "repeat":false, "required":false, "truncatable":true, "dataType":"float", "startIndex":-1, "length":-1, "components":[]}, {"tag":"C802__CertificationClauseCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"C803__CertificationClauseText", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"C804__ShippersExportDeclarationRequirements", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}]}, {"code":"C8C", "tag":"CertificationsClausesContinuation", "truncatable":true, "minOccurances":0, "maxOccurances":1, "fields":[{"tag":"code", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"C8C01__CertificationClauseText", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"C8C02__CertificationClauseText", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"C8C03__CertificationClauseText", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}]}]}, {"tag":"Loop_2_0230", "minOccurances":0, "maxOccurances":1, "segments":[{"code":"H1", "tag":"HazardousMaterial", "truncatable":true, "minOccurances":0, "maxOccurances":1, "fields":[{"tag":"code", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"H101__HazardousMaterialCode", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"H102__HazardousMaterialClassCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"H103__HazardousMaterialCodeQualifier", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"H104__HazardousMaterialDescription", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"H105__HazardousMaterialContact", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"H106__HazardousMaterialsPage", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"H107__FlashpointTemperature", "repeat":false, "required":false, "truncatable":true, "dataType":"float", "startIndex":-1, "length":-1, "components":[]}, {"tag":"H108__UnitorBasisforMeasurementCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"H109__PackingGroupCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}]}, {"code":"H2", "tag":"AdditionalHazardousMaterialDescription", "truncatable":true, "minOccurances":0, "maxOccurances":1, "fields":[{"tag":"code", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"H201__HazardousMaterialDescription", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"H202__HazardousMaterialClassification", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}]}]}]}]}, {"code":"L3", "tag":"TotalWeightandCharges", "truncatable":true, "minOccurances":0, "maxOccurances":1, "fields":[{"tag":"code", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"L301__Weight", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"L302__WeightQualifier", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"L303__FreightRate", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"L304__RateValueQualifier", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"L305__Charge", "repeat":false, "required":false, "truncatable":true, "dataType":"float", "startIndex":-1, "length":-1, "components":[]}, {"tag":"L306__Advances", "repeat":false, "required":false, "truncatable":true, "dataType":"float", "startIndex":-1, "length":-1, "components":[]}, {"tag":"L307__PrepaidAmount", "repeat":false, "required":false, "truncatable":true, "dataType":"float", "startIndex":-1, "length":-1, "components":[]}, {"tag":"L308__SpecialChargeorAllowanceCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"L309__Volume", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"L310__VolumeUnitQualifier", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"L311__LadingQuantity", "repeat":false, "required":false, "truncatable":true, "dataType":"float", "startIndex":-1, "length":-1, "components":[]}, {"tag":"L312__WeightUnitCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"L313__TariffNumber", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"L314__DeclaredValue", "repeat":false, "required":false, "truncatable":true, "dataType":"float", "startIndex":-1, "length":-1, "components":[]}, {"tag":"L315__RateValueQualifier", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}]}, {"code":"PWK", "tag":"Paperwork", "truncatable":true, "minOccurances":0, "maxOccurances":1, "fields":[{"tag":"code", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"PWK01__ReportTypeCode", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"PWK02__ReportTransmissionCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"PWK03__ReportCopiesNeeded", "repeat":false, "required":false, "truncatable":true, "dataType":"float", "startIndex":-1, "length":-1, "components":[]}, {"tag":"PWK04__EntityIdentifierCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"PWK05__IdentificationCodeQualifier", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"PWK06__IdentificationCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"PWK07__Description", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"PWK08_ActionsIndicated", "repeat":false, "required":false, "truncatable":true, "dataType":"composite", "startIndex":-1, "length":-1, "components":[{"tag":"PWK08_01_PaperworkReportActionCode", "required":true, "truncatable":true, "dataType":"string", "subcomponents":[]}, {"tag":"PWK08_02_PaperworkReportActionCode", "required":false, "truncatable":true, "dataType":"string", "subcomponents":[]}, {"tag":"PWK08_03_PaperworkReportActionCode", "required":false, "truncatable":true, "dataType":"string", "subcomponents":[]}, {"tag":"PWK08_04_PaperworkReportActionCode", "required":false, "truncatable":true, "dataType":"string", "subcomponents":[]}, {"tag":"PWK08_05_PaperworkReportActionCode", "required":false, "truncatable":true, "dataType":"string", "subcomponents":[]}]}, {"tag":"PWK09__RequestCategoryCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}]}, {"tag":"Loop_3_0030", "minOccurances":0, "maxOccurances":1, "segments":[{"code":"L1", "tag":"RateandCharges", "truncatable":true, "minOccurances":0, "maxOccurances":1, "fields":[{"tag":"code", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"L101__LadingLineItemNumber", "repeat":false, "required":false, "truncatable":true, "dataType":"float", "startIndex":-1, "length":-1, "components":[]}, {"tag":"L102__FreightRate", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"L103__RateValueQualifier", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"L104__Charge", "repeat":false, "required":false, "truncatable":true, "dataType":"float", "startIndex":-1, "length":-1, "components":[]}, {"tag":"L105__Advances", "repeat":false, "required":false, "truncatable":true, "dataType":"float", "startIndex":-1, "length":-1, "components":[]}, {"tag":"L106__PrepaidAmount", "repeat":false, "required":false, "truncatable":true, "dataType":"float", "startIndex":-1, "length":-1, "components":[]}, {"tag":"L107__RateCombinationPointCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"L108__SpecialChargeorAllowanceCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"L109__RateClassCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"L110__EntitlementCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"L111__ChargeMethodofPayment", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"L112__SpecialChargeDescription", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"L113__TariffApplicationCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"L114__DeclaredValue", "repeat":false, "required":false, "truncatable":true, "dataType":"float", "startIndex":-1, "length":-1, "components":[]}, {"tag":"L115__RateValueQualifier", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"L116__LadingLiabilityCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"L117__BilledRated_asQuantity", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"L118__BilledRated_asQualifier", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"L119__Percent", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"L120__CurrencyCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"L121__Amount", "repeat":false, "required":false, "truncatable":true, "dataType":"float", "startIndex":-1, "length":-1, "components":[]}]}, {"code":"C3", "tag":"Currency", "truncatable":true, "minOccurances":0, "maxOccurances":1, "fields":[{"tag":"code", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"C301__CurrencyCode", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"C302__ExchangeRate", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"C303__CurrencyCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"C304__CurrencyCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}]}]}, {"code":"V9", "tag":"EventDetail", "truncatable":true, "minOccurances":0, "maxOccurances":1, "fields":[{"tag":"code", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"V901__EventCode", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"V902__Event", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"V903__Date", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"V904__Time", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"V905__CityName", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"V906__StateorProvinceCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"V907__CountryCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"V908__StatusReasonCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"V909__StandardPointLocationCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"V910__Quantity", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"V911__TrainDelayReasonCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"V912__Free_FormMessage", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"V913__TimeCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"V914__Quantity", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"V915__StandardPointLocationCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"V916__TotalEquipment", "repeat":false, "required":false, "truncatable":true, "dataType":"float", "startIndex":-1, "length":-1, "components":[]}, {"tag":"V917__TotalEquipment", "repeat":false, "required":false, "truncatable":true, "dataType":"float", "startIndex":-1, "length":-1, "components":[]}, {"tag":"V918__TotalEquipment", "repeat":false, "required":false, "truncatable":true, "dataType":"float", "startIndex":-1, "length":-1, "components":[]}, {"tag":"V919__Weight", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"V920__Length", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}]}, {"code":"C8", "tag":"CertificationsandClauses", "truncatable":true, "minOccurances":0, "maxOccurances":1, "fields":[{"tag":"code", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"C801__LadingLineItemNumber", "repeat":false, "required":false, "truncatable":true, "dataType":"float", "startIndex":-1, "length":-1, "components":[]}, {"tag":"C802__CertificationClauseCode", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"C803__CertificationClauseText", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"C804__ShippersExportDeclarationRequirements", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}]}, {"code":"L11", "tag":"BusinessInstructionsandReferenceNumber", "truncatable":true, "minOccurances":0, "maxOccurances":1, "fields":[{"tag":"code", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"L1101__ReferenceIdentification", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"L1102__ReferenceIdentificationQualifier", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"L1103__Description", "repeat":false, "required":false, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}]}, {"code":"SE", "tag":"TransactionSetTrailer", "truncatable":true, "minOccurances":0, "maxOccurances":1, "fields":[{"tag":"code", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"SE01__NumberofIncludedSegments", "repeat":false, "required":true, "truncatable":true, "dataType":"float", "startIndex":-1, "length":-1, "components":[]}, {"tag":"SE02__TransactionSetControlNumber", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}]}]}, {"code":"GE", "tag":"FunctionalGroupTrailer", "truncatable":true, "minOccurances":0, "maxOccurances":1, "fields":[{"tag":"code", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"GE01__NumberofTransactionSetsIncluded", "repeat":false, "required":true, "truncatable":true, "dataType":"float", "startIndex":-1, "length":-1, "components":[]}, {"tag":"GE02__GroupControlNumber", "repeat":false, "required":true, "truncatable":true, "dataType":"float", "startIndex":-1, "length":-1, "components":[]}]}]}, {"code":"IEA", "tag":"InterchangeControlTrailer", "truncatable":true, "minOccurances":0, "maxOccurances":1, "fields":[{"tag":"code", "repeat":false, "required":true, "truncatable":true, "dataType":"string", "startIndex":-1, "length":-1, "components":[]}, {"tag":"IEA01__NumberofIncludedFunctionalGroups", "repeat":false, "required":true, "truncatable":true, "dataType":"float", "startIndex":-1, "length":-1, "components":[]}, {"tag":"IEA02__InterchangeControlNumber", "repeat":false, "required":true, "truncatable":true, "dataType":"float", "startIndex":-1, "length":-1, "components":[]}]}], "segmentDefinitions":{}};
    
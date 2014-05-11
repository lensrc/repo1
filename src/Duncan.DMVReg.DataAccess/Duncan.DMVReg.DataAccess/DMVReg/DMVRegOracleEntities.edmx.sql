-- --------------------------------------------------
-- Entity Designer DDL Script for Oracle database
-- --------------------------------------------------
-- Date Created: 2014/5/9 21:56:28
-- Generated from EDMX file: C:\Users\WU\Documents\Ting\biubiu\my\Duncan.DMVReg.DataAccess\Duncan.DMVReg.DataAccess\DMVReg\DMVRegOracleEntities.edmx
-- --------------------------------------------------

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------

-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'ActionParams'
CREATE TABLE "SYSTEM"."ActionParams" (
   "ActionParamsId" NUMBER(10,0) NOT NULL,
   "ActionTypeId" NUMBER(10,0) NOT NULL,
   "ParamTypeId" NUMBER(10,0) NOT NULL,
   "Order" NUMBER(10,0) NOT NULL,
   "Description" VARCHAR2(255 CHAR) 
);

-- Creating table 'ActionTypes'
CREATE TABLE "SYSTEM"."ActionTypes" (
   "ActionTypeId" NUMBER(10,0) NOT NULL,
   "Name" VARCHAR2(32 CHAR) NOT NULL,
   "Description" VARCHAR2(255 CHAR) 
);

-- Creating table 'Addresses'
CREATE TABLE "SYSTEM"."Addresses" (
   "AddressId" NUMBER(10,0) NOT NULL,
   "Address1" VARCHAR2(255 CHAR) ,
   "Address2" VARCHAR2(255 CHAR) ,
   "City" VARCHAR2(255 CHAR) ,
   "State" VARCHAR2(255 CHAR) ,
   "Country" VARCHAR2(255 CHAR) ,
   "PostalCode" VARCHAR2(16 CHAR) ,
   "CreatedOn" TIMESTAMP NOT NULL,
   "CreatedBy" NUMBER(10,0) NOT NULL,
   "IsValid" NUMBER(1,0) 
);

-- Creating table 'AddressTypes'
CREATE TABLE "SYSTEM"."AddressTypes" (
   "AddressTypeId" NUMBER(10,0) NOT NULL,
   "Name" VARCHAR2(32 CHAR) NOT NULL,
   "Description" VARCHAR2(255 CHAR) 
);

-- Creating table 'Audits'
CREATE TABLE "SYSTEM"."Audits" (
   "AuditId" NUMBER(10,0) NOT NULL,
   "TableName" VARCHAR2(255 CHAR) NOT NULL,
   "TableColumn" VARCHAR2(255 CHAR) NOT NULL,
   "OriginalData" VARCHAR2(255 CHAR) ,
   "NewData" VARCHAR2(255 CHAR) ,
   "UpdatedOn" TIMESTAMP NOT NULL,
   "UpdatedBy" NUMBER(10,0) NOT NULL
);

-- Creating table 'BatchResponseFormatTypes'
CREATE TABLE "SYSTEM"."BatchResponseFormatTypes" (
   "BatchResponseFormatTypeId" NUMBER(10,0) NOT NULL,
   "Name" VARCHAR2(32 CHAR) NOT NULL,
   "Description" VARCHAR2(255 CHAR) 
);

-- Creating table 'BatchRuleTypes'
CREATE TABLE "SYSTEM"."BatchRuleTypes" (
   "BatchRuleTypeId" NUMBER(10,0) NOT NULL,
   "Name" VARCHAR2(32 CHAR) NOT NULL,
   "Description" VARCHAR2(255 CHAR) NOT NULL
);

-- Creating table 'BatchStatusClientRqsts'
CREATE TABLE "SYSTEM"."BatchStatusClientRqsts" (
   "BatchStatusClientRqstId" NUMBER(10,0) NOT NULL,
   "Name" VARCHAR2(32 CHAR) NOT NULL,
   "Display" VARCHAR2(32 CHAR) ,
   "Description" VARCHAR2(255 CHAR) NOT NULL
);

-- Creating table 'BatchStatusClientRsps'
CREATE TABLE "SYSTEM"."BatchStatusClientRsps" (
   "BatchStatusClientRspId" NUMBER(10,0) NOT NULL,
   "Name" VARCHAR2(32 CHAR) NOT NULL,
   "Display" VARCHAR2(32 CHAR) ,
   "Description" VARCHAR2(255 CHAR) NOT NULL
);

-- Creating table 'BatchStatusDataSrcRqsts'
CREATE TABLE "SYSTEM"."BatchStatusDataSrcRqsts" (
   "BatchStatusDataSrcRqstId" NUMBER(10,0) NOT NULL,
   "Name" VARCHAR2(32 CHAR) NOT NULL,
   "Display" VARCHAR2(32 CHAR) ,
   "Description" VARCHAR2(255 CHAR) NOT NULL
);

-- Creating table 'BatchStatusDataSrcRsps'
CREATE TABLE "SYSTEM"."BatchStatusDataSrcRsps" (
   "BatchStatusDataSrcRspId" NUMBER(10,0) NOT NULL,
   "Name" VARCHAR2(32 CHAR) NOT NULL,
   "Display" VARCHAR2(32 CHAR) ,
   "Description" VARCHAR2(255 CHAR) NOT NULL
);

-- Creating table 'BatchTypes'
CREATE TABLE "SYSTEM"."BatchTypes" (
   "BatchTypeId" NUMBER(10,0) NOT NULL,
   "Name" VARCHAR2(32 CHAR) NOT NULL,
   "Description" VARCHAR2(255 CHAR) NOT NULL
);

-- Creating table 'ChargeTypes'
CREATE TABLE "SYSTEM"."ChargeTypes" (
   "ChargeTypeId" NUMBER(10,0) NOT NULL,
   "Name" VARCHAR2(32 CHAR) NOT NULL,
   "Description" VARCHAR2(255 CHAR) NOT NULL
);

-- Creating table 'Clients'
CREATE TABLE "SYSTEM"."Clients" (
   "ClientId" NUMBER(10,0) NOT NULL,
   "ParentClientId" NUMBER(10,0) ,
   "ClientTypeId" NUMBER(10,0) NOT NULL,
   "LongName" VARCHAR2(255 CHAR) NOT NULL,
   "ShortName" VARCHAR2(32 CHAR) NOT NULL,
   "StatusId" NUMBER(10,0) NOT NULL,
   "RequestProcessEnabled" NUMBER(1,0) ,
   "ResponseProcessEnabled" NUMBER(1,0) ,
   "BatchMaxCost" NUMBER(18,2) ,
   "RequestMaxCost" NUMBER(18,2) ,
   "ChargeTypeId" NUMBER(10,0) ,
   "TimeZoneId" NUMBER(10,0) ,
   "NLETSId" VARCHAR2(9 CHAR) ,
   "NLETSTypeId" NUMBER(10,0) ,
   "HomeStateId" NUMBER(10,0) ,
   "IsSkipTrace" NUMBER(1,0) ,
   "EnableTicketValidation" NUMBER(1,0) ,
   "EnableMakeMatch" NUMBER(1,0) ,
   "SendEnableDays" NUMBER(10,0) ,
   "LastBatchReceivedOn" TIMESTAMP ,
   "LastBatchSentOn" TIMESTAMP ,
   "ModifiedOn" TIMESTAMP ,
   "ModifiedBy" NUMBER(10,0) ,
   "CreatedOn" TIMESTAMP NOT NULL,
   "CreatedBy" NUMBER(10,0) NOT NULL
);

-- Creating table 'ClientContacts'
CREATE TABLE "SYSTEM"."ClientContacts" (
   "ClientContactId" NUMBER(10,0) NOT NULL,
   "ClientId" NUMBER(10,0) NOT NULL,
   "ContactId" NUMBER(10,0) NOT NULL,
   "ContactTypeId" NUMBER(10,0) NOT NULL,
   "ValidFrom" TIMESTAMP NOT NULL,
   "ValidTo" TIMESTAMP ,
   "CreatedOn" TIMESTAMP NOT NULL,
   "CreatedBy" NUMBER(10,0) NOT NULL
);

-- Creating table 'ClientContracts'
CREATE TABLE "SYSTEM"."ClientContracts" (
   "ClientContractId" NUMBER(10,0) NOT NULL,
   "ClientId" NUMBER(10,0) NOT NULL,
   "ContractNumber" VARCHAR2(32 CHAR) NOT NULL,
   "ContractDate" TIMESTAMP NOT NULL
);

-- Creating table 'ClientDataSrcOrders'
CREATE TABLE "SYSTEM"."ClientDataSrcOrders" (
   "ClientDataSrcOrderId" NUMBER(10,0) NOT NULL,
   "ClientId" NUMBER(10,0) NOT NULL,
   "StateId" NUMBER(10,0) NOT NULL,
   "DataSrcId" NUMBER(10,0) NOT NULL,
   "Precedence" NUMBER(10,0) NOT NULL,
   "ModifiedBy" NUMBER(10,0) ,
   "ModifiedOn" TIMESTAMP ,
   "CreatedOn" TIMESTAMP NOT NULL,
   "CreatedBy" NUMBER(10,0) NOT NULL
);

-- Creating table 'ClientDataSrcStatus'
CREATE TABLE "SYSTEM"."ClientDataSrcStatus" (
   "ClientDataSrcStatusId" NUMBER(10,0) NOT NULL,
   "Name" VARCHAR2(32 CHAR) NOT NULL,
   "Description" VARCHAR2(255 CHAR) 
);

-- Creating table 'ClientDateTimeFormats'
CREATE TABLE "SYSTEM"."ClientDateTimeFormats" (
   "ClientDateTimeFormatId" NUMBER(10,0) NOT NULL,
   "ClientId" NUMBER(10,0) ,
   "StatusId" NUMBER(10,0) NOT NULL,
   "DirectionId" NUMBER(10,0) NOT NULL,
   "DateTimeFormatTypeId" NUMBER(10,0) NOT NULL,
   "FormatString" VARCHAR2(32 CHAR) NOT NULL,
   "ModifiedOn" TIMESTAMP ,
   "ModifiedBy" NUMBER(10,0) ,
   "CreatedOn" TIMESTAMP NOT NULL,
   "CreatedBy" NUMBER(10,0) NOT NULL
);

-- Creating table 'ClientDocuments'
CREATE TABLE "SYSTEM"."ClientDocuments" (
   "ClientDocumentId" NUMBER(10,0) NOT NULL,
   "ClientId" NUMBER(10,0) NOT NULL,
   "DocumentTypeId" NUMBER(10,0) NOT NULL,
   "DocumentId" NUMBER(10,0) NOT NULL,
   "ValidFrom" TIMESTAMP NOT NULL,
   "ValidTo" TIMESTAMP ,
   "CreatedOn" TIMESTAMP NOT NULL,
   "CreatedBy" NUMBER(10,0) NOT NULL
);

-- Creating table 'ClientExtractSets'
CREATE TABLE "SYSTEM"."ClientExtractSets" (
   "ClientExtractSetId" NUMBER(10,0) NOT NULL,
   "ClientId" NUMBER(10,0) NOT NULL,
   "ExtractSetId" NUMBER(10,0) NOT NULL,
   "StatusId" NUMBER(10,0) NOT NULL,
   "ModifiedOn" TIMESTAMP ,
   "ModifiedBy" NUMBER(10,0) ,
   "CreatedBy" NUMBER(10,0) NOT NULL,
   "CreatedOn" TIMESTAMP NOT NULL
);

-- Creating table 'ClientInvoices'
CREATE TABLE "SYSTEM"."ClientInvoices" (
   "ClientInvoiceId" NUMBER(10,0) NOT NULL,
   "ClientId" NUMBER(10,0) NOT NULL,
   "InvoiceNumber" VARCHAR2(32 CHAR) NOT NULL,
   "InvoiceDate" TIMESTAMP NOT NULL,
   "DocumentId" NUMBER(10,0) ,
   "CreatedOn" TIMESTAMP NOT NULL,
   "CreatedBy" NUMBER(10,0) NOT NULL
);

-- Creating table 'ClientMakeFamilies'
CREATE TABLE "SYSTEM"."ClientMakeFamilies" (
   "ClientMakeFamilyId" NUMBER(10,0) NOT NULL,
   "ClientId" NUMBER(10,0) ,
   "Name" VARCHAR2(32 CHAR) NOT NULL,
   "Description" VARCHAR2(255 CHAR) ,
   "CreatedOn" TIMESTAMP NOT NULL,
   "CreatedBy" NUMBER(10,0) NOT NULL
);

-- Creating table 'ClientMakeFamilyMakes'
CREATE TABLE "SYSTEM"."ClientMakeFamilyMakes" (
   "ClientMakeFamilyMakeId" NUMBER(10,0) NOT NULL,
   "ClientMakeFamilyId" NUMBER(10,0) NOT NULL,
   "VehicleMakeId" NUMBER(10,0) NOT NULL,
   "Precedence" NUMBER(10,0) NOT NULL,
   "CreatedOn" TIMESTAMP NOT NULL,
   "CreatedBy" NUMBER(10,0) NOT NULL
);

-- Creating table 'ClientMakeFamilyMembers'
CREATE TABLE "SYSTEM"."ClientMakeFamilyMembers" (
   "ClientMakeFamilyMemberId" NUMBER(10,0) NOT NULL,
   "ClientMakeFamilyId" NUMBER(10,0) NOT NULL,
   "Make" VARCHAR2(128 CHAR) NOT NULL,
   "StatusId" NUMBER(10,0) NOT NULL,
   "ModifiedOn" TIMESTAMP ,
   "ModifiedBy" NUMBER(10,0) ,
   "CreatedOn" TIMESTAMP NOT NULL,
   "CreatedBy" NUMBER(10,0) NOT NULL
);

-- Creating table 'ClientNotes'
CREATE TABLE "SYSTEM"."ClientNotes" (
   "ClientNotesId" NUMBER(10,0) NOT NULL,
   "ClientId" NUMBER(10,0) NOT NULL,
   "NotesId" NUMBER(10,0) NOT NULL,
   "NotesTypeId" NUMBER(10,0) NOT NULL,
   "CreatedOn" TIMESTAMP NOT NULL,
   "CreatedBy" NUMBER(10,0) NOT NULL
);

-- Creating table 'ClientParseSets'
CREATE TABLE "SYSTEM"."ClientParseSets" (
   "ClientParseSetId" NUMBER(10,0) NOT NULL,
   "ClientId" NUMBER(10,0) NOT NULL,
   "ParseSetId" NUMBER(10,0) NOT NULL,
   "StatusId" NUMBER(10,0) NOT NULL,
   "ModifiedOn" TIMESTAMP ,
   "ModifiedBy" NUMBER(10,0) ,
   "CreatedBy" NUMBER(10,0) NOT NULL,
   "CreatedOn" TIMESTAMP NOT NULL
);

-- Creating table 'ClientRequestBatches'
CREATE TABLE "SYSTEM"."ClientRequestBatches" (
   "ClientRequestBatchId" NUMBER(10,0) NOT NULL,
   "ClientId" NUMBER(10,0) NOT NULL,
   "RequestBatchTypeId" NUMBER(10,0) NOT NULL,
   "FilePath" VARCHAR2(260 CHAR) NOT NULL,
   "FileName" VARCHAR2(260 CHAR) NOT NULL,
   "BatchStatusClientRqstId" NUMBER(10,0) ,
   "BatchStatusDate" TIMESTAMP ,
   "ClientRequestBatchStateId" NUMBER(10,0) ,
   "RequestsTotal" NUMBER(10,0) NOT NULL,
   "RequestsDuplicates" NUMBER(10,0) NOT NULL,
   "RequestsFailed" NUMBER(10,0) NOT NULL,
   "RequestsSent" NUMBER(10,0) NOT NULL,
   "RequestsSent2" NUMBER(10,0) NOT NULL,
   "RequestsSent3" NUMBER(10,0) NOT NULL,
   "RequestsSent4" NUMBER(10,0) NOT NULL,
   "SingleHitCount" NUMBER(10,0) NOT NULL,
   "MultiHitCount" NUMBER(10,0) NOT NULL,
   "NoHitCount" NUMBER(10,0) NOT NULL,
   "InProcess" NUMBER(1,0) NOT NULL,
   "BatchIdentifier" VARCHAR2(32 CHAR) ,
   "ParseSetId" NUMBER(10,0) ,
   "LastValidationCheck" TIMESTAMP ,
   "LastRequestSent" TIMESTAMP ,
   "LastResponseReceived" TIMESTAMP ,
   "ModifiedOn" TIMESTAMP ,
   "ModifiedBy" NUMBER(10,0) ,
   "CreatedOn" TIMESTAMP NOT NULL,
   "CreatedBy" NUMBER(10,0) NOT NULL,
   "TimeStamp" RAW(8) 
);

-- Creating table 'ClientRequestBatchRecords'
CREATE TABLE "SYSTEM"."ClientRequestBatchRecords" (
   "ClientRequestBatchRecordId" NUMBER(10,0) NOT NULL,
   "ClientRequestBatchId" NUMBER(10,0) NOT NULL,
   "RequestRecordId" NUMBER(10,0) NOT NULL,
   "RawRecordId" NUMBER(10,0) NOT NULL,
   "ExtractSetId" NUMBER(10,0) ,
   "ValidationSetId" NUMBER(10,0) ,
   "SequenceNumber" NUMBER(10,0) 
);

-- Creating table 'ClientRequestBatchStates'
CREATE TABLE "SYSTEM"."ClientRequestBatchStates" (
   "ClientRequestBatchStateId" NUMBER(10,0) NOT NULL,
   "Name" VARCHAR2(32 CHAR) NOT NULL,
   "Description" VARCHAR2(255 CHAR) 
);

-- Creating table 'ClientRequestBatchStatus'
CREATE TABLE "SYSTEM"."ClientRequestBatchStatus" (
   "ClientRequestBatchStatusId" NUMBER(10,0) NOT NULL,
   "ClientRequestBatchId" NUMBER(10,0) NOT NULL,
   "BatchStatusClientRqstId" NUMBER(10,0) NOT NULL,
   "Notes" VARCHAR2(255 CHAR) ,
   "CreatedOn" TIMESTAMP NOT NULL,
   "CreatedBy" NUMBER(10,0) NOT NULL
);

-- Creating table 'ClientRequestStatus'
CREATE TABLE "SYSTEM"."ClientRequestStatus" (
   "ClientRequestStatusId" NUMBER(10,0) NOT NULL,
   "Name" VARCHAR2(32 CHAR) NOT NULL,
   "Description" VARCHAR2(255 CHAR) NOT NULL
);

-- Creating table 'ClientResponseBatches'
CREATE TABLE "SYSTEM"."ClientResponseBatches" (
   "ClientResponseBatchId" NUMBER(10,0) NOT NULL,
   "ClientId" NUMBER(10,0) NOT NULL,
   "FilePath" VARCHAR2(260 CHAR) NOT NULL,
   "FileName" VARCHAR2(260 CHAR) NOT NULL,
   "ResponsesTotal" NUMBER(10,0) NOT NULL,
   "HitCount" NUMBER(10,0) NOT NULL,
   "BatchStatusClientRspId" NUMBER(10,0) ,
   "BatchStatusDate" TIMESTAMP 
);

-- Creating table 'ClientResponseBatchRecords'
CREATE TABLE "SYSTEM"."ClientResponseBatchRecords" (
   "ClientResponseBatchRecordId" NUMBER(10,0) NOT NULL,
   "ClientResponseBatchId" NUMBER(10,0) NOT NULL,
   "RequestRecordId" NUMBER(10,0) NOT NULL,
   "ResponseFormatSetId" NUMBER(10,0) ,
   "RawRecordId" NUMBER(10,0) ,
   "SequenceNumber" NUMBER(10,0) 
);

-- Creating table 'ClientResponseBatchStatus'
CREATE TABLE "SYSTEM"."ClientResponseBatchStatus" (
   "ClientResponseBatchStatusId" NUMBER(10,0) NOT NULL,
   "ClientResponseBatchId" NUMBER(10,0) NOT NULL,
   "BatchStatusClientRspId" NUMBER(10,0) NOT NULL,
   "Notes" VARCHAR2(255 CHAR) ,
   "CreatedOn" TIMESTAMP NOT NULL,
   "CreatedBy" NUMBER(10,0) NOT NULL
);

-- Creating table 'ClientResponseControls'
CREATE TABLE "SYSTEM"."ClientResponseControls" (
   "ClientResponseControlId" NUMBER(10,0) NOT NULL,
   "ClientId" NUMBER(10,0) NOT NULL,
   "MinimumRecords" NUMBER(10,0) ,
   "MaximumRecords" NUMBER(10,0) ,
   "MaximumHoldDays" NUMBER(10,0) 
);

-- Creating table 'ClientResponseFormatSets'
CREATE TABLE "SYSTEM"."ClientResponseFormatSets" (
   "ClientResponseFormatSetId" NUMBER(10,0) NOT NULL,
   "ClientId" NUMBER(10,0) NOT NULL,
   "ResponseFormatSetId" NUMBER(10,0) NOT NULL,
   "StatusId" NUMBER(10,0) NOT NULL,
   "ModifiedOn" TIMESTAMP ,
   "ModifiedBy" NUMBER(10,0) ,
   "CreatedBy" NUMBER(10,0) NOT NULL,
   "CreatedOn" TIMESTAMP NOT NULL
);

-- Creating table 'ClientResponseReports'
CREATE TABLE "SYSTEM"."ClientResponseReports" (
   "ClientResponseReportId" NUMBER(10,0) NOT NULL,
   "ClientId" NUMBER(10,0) NOT NULL,
   "BK1" NUMBER(1,0) NOT NULL,
   "BK2" NUMBER(1,0) NOT NULL,
   "BK3" NUMBER(1,0) NOT NULL
);

-- Creating table 'ClientStates'
CREATE TABLE "SYSTEM"."ClientStates" (
   "ClientStateId" NUMBER(10,0) NOT NULL,
   "ClientId" NUMBER(10,0) NOT NULL,
   "StateId" NUMBER(10,0) NOT NULL,
   "Enabled" NUMBER(1,0) NOT NULL,
   "RequestUserId" VARCHAR2(32 CHAR) ,
   "RequestUserPwd" VARCHAR2(32 CHAR) ,
   "ValidFrom" TIMESTAMP ,
   "ValidTo" TIMESTAMP ,
   "ModifiedBy" NUMBER(10,0) ,
   "ModifiedOn" TIMESTAMP ,
   "CreatedBy" NUMBER(10,0) NOT NULL,
   "CreatedOn" TIMESTAMP NOT NULL
);

-- Creating table 'ClientStatisticsDefaults'
CREATE TABLE "SYSTEM"."ClientStatisticsDefaults" (
   "ClientStatisticsDefaultsId" NUMBER(10,0) NOT NULL,
   "ClientId" NUMBER(10,0) NOT NULL,
   "AveragePerBatch" NUMBER(10,0) NOT NULL,
   "RequestLengthMin" NUMBER(10,0) ,
   "RequestLengthMax" NUMBER(10,0) 
);

-- Creating table 'ClientStatus'
CREATE TABLE "SYSTEM"."ClientStatus" (
   "ClientStatusId" NUMBER(10,0) NOT NULL,
   "ClientId" NUMBER(10,0) NOT NULL,
   "StatusId" NUMBER(10,0) NOT NULL,
   "Notes" VARCHAR2(255 CHAR) ,
   "CreatedOn" TIMESTAMP NOT NULL,
   "CreatedBy" NUMBER(10,0) NOT NULL
);

-- Creating table 'ClientTypes'
CREATE TABLE "SYSTEM"."ClientTypes" (
   "ClientTypeId" NUMBER(10,0) NOT NULL,
   "Name" VARCHAR2(32 CHAR) NOT NULL,
   "Description" VARCHAR2(255 CHAR) 
);

-- Creating table 'ClientValidationSets'
CREATE TABLE "SYSTEM"."ClientValidationSets" (
   "ClientValidationSetId" NUMBER(10,0) NOT NULL,
   "ClientId" NUMBER(10,0) NOT NULL,
   "ValidationSetId" NUMBER(10,0) NOT NULL,
   "StatusId" NUMBER(10,0) NOT NULL,
   "ModifiedOn" TIMESTAMP ,
   "ModifiedBy" NUMBER(10,0) ,
   "CreatedBy" NUMBER(10,0) NOT NULL,
   "CreatedOn" TIMESTAMP NOT NULL
);

-- Creating table 'Contacts'
CREATE TABLE "SYSTEM"."Contacts" (
   "ContactId" NUMBER(10,0) NOT NULL,
   "FirstName" VARCHAR2(32 CHAR) ,
   "MiddleName" VARCHAR2(32 CHAR) ,
   "LastName" VARCHAR2(32 CHAR) 
);

-- Creating table 'ContactAddresses'
CREATE TABLE "SYSTEM"."ContactAddresses" (
   "ContactAddressId" NUMBER(10,0) NOT NULL,
   "ContactId" NUMBER(10,0) NOT NULL,
   "AddressId" NUMBER(10,0) NOT NULL,
   "AddressTypeId" NUMBER(10,0) NOT NULL,
   "ValidFrom" TIMESTAMP NOT NULL,
   "ValidTo" TIMESTAMP NOT NULL,
   "CreatedOn" TIMESTAMP NOT NULL,
   "CreatedBy" NUMBER(10,0) NOT NULL
);

-- Creating table 'ContactEMails'
CREATE TABLE "SYSTEM"."ContactEMails" (
   "ContactEMailId" NUMBER(10,0) NOT NULL,
   "ContactId" NUMBER(10,0) NOT NULL,
   "EMailId" NUMBER(10,0) NOT NULL,
   "EMailTypeId" NUMBER(10,0) NOT NULL,
   "CreatedOn" TIMESTAMP NOT NULL,
   "CreatedBy" NUMBER(10,0) NOT NULL
);

-- Creating table 'ContactPhoneNumbers'
CREATE TABLE "SYSTEM"."ContactPhoneNumbers" (
   "ContactPhoneNumberId" NUMBER(10,0) NOT NULL,
   "ContactId" NUMBER(10,0) NOT NULL,
   "PhoneNumberId" NUMBER(10,0) NOT NULL,
   "PhoneNumberTypeId" NUMBER(10,0) NOT NULL,
   "CreatedOn" TIMESTAMP NOT NULL,
   "CreatedBy" NUMBER(10,0) NOT NULL
);

-- Creating table 'ContactTypes'
CREATE TABLE "SYSTEM"."ContactTypes" (
   "ContactTypeId" NUMBER(10,0) NOT NULL,
   "Name" VARCHAR2(32 CHAR) NOT NULL,
   "Description" VARCHAR2(255 CHAR) 
);

-- Creating table 'CostingUnits'
CREATE TABLE "SYSTEM"."CostingUnits" (
   "CostingUnitId" NUMBER(10,0) NOT NULL,
   "Name" VARCHAR2(32 CHAR) NOT NULL,
   "Description" VARCHAR2(255 CHAR) NOT NULL
);

-- Creating table 'Countries'
CREATE TABLE "SYSTEM"."Countries" (
   "CountryId" NUMBER(10,0) NOT NULL,
   "Name" VARCHAR2(255 CHAR) NOT NULL,
   "AlphaCode" VARCHAR2(3 CHAR) NOT NULL,
   "NumericCode" NUMBER(10,0) NOT NULL
);

-- Creating table 'DataSrcBatchCosts'
CREATE TABLE "SYSTEM"."DataSrcBatchCosts" (
   "DataSrcBatchCostId" NUMBER(10,0) NOT NULL,
   "DataSrcId" NUMBER(10,0) NOT NULL,
   "CostingUnitId" NUMBER(10,0) NOT NULL,
   "Cost" NUMBER(18,2) NOT NULL,
   "ModifiedOn" TIMESTAMP ,
   "ModifiedBy" NUMBER(10,0) ,
   "CreatedOn" TIMESTAMP NOT NULL,
   "CreatedBy" NUMBER(10,0) NOT NULL
);

-- Creating table 'DataSrcBatchRules'
CREATE TABLE "SYSTEM"."DataSrcBatchRules" (
   "DataSrcBatchRulesId" NUMBER(10,0) NOT NULL,
   "DataSrcId" NUMBER(10,0) NOT NULL,
   "BatchRuleTypeId" NUMBER(10,0) NOT NULL,
   "RuleValueInt" NUMBER(10,0) ,
   "RuleValueBool" NUMBER(1,0) ,
   "RuleValueTimeSpan" NUMBER(10,0) ,
   "RuleValueTimeSpanType" NUMBER(10,0) ,
   "ModifiedOn" TIMESTAMP ,
   "ModifiedBy" NUMBER(10,0) ,
   "CreatedOn" TIMESTAMP NOT NULL,
   "CreatedBy" NUMBER(10,0) NOT NULL
);

-- Creating table 'DataSrcContacts'
CREATE TABLE "SYSTEM"."DataSrcContacts" (
   "DataSrcContactId" NUMBER(10,0) NOT NULL,
   "DataSrcId" NUMBER(10,0) NOT NULL,
   "ContactId" NUMBER(10,0) NOT NULL,
   "ContactTypeId" NUMBER(10,0) NOT NULL,
   "ActiveFrom" TIMESTAMP NOT NULL,
   "ActiveTo" TIMESTAMP ,
   "CreatedOn" TIMESTAMP NOT NULL,
   "CreatedBy" NUMBER(10,0) NOT NULL
);

-- Creating table 'DataSrcDateTimeFormats'
CREATE TABLE "SYSTEM"."DataSrcDateTimeFormats" (
   "DataSrcDateTimeFormatId" NUMBER(10,0) NOT NULL,
   "DataSrcId" NUMBER(10,0) ,
   "StatusId" NUMBER(10,0) NOT NULL,
   "DirectionId" NUMBER(10,0) NOT NULL,
   "DateTimeFormatTypeId" NUMBER(10,0) NOT NULL,
   "FormatString" VARCHAR2(32 CHAR) NOT NULL,
   "ModifiedOn" TIMESTAMP ,
   "ModifiedBy" NUMBER(10,0) ,
   "CreatedOn" TIMESTAMP NOT NULL,
   "CreatedBy" NUMBER(10,0) NOT NULL
);

-- Creating table 'DataSrcDocuments'
CREATE TABLE "SYSTEM"."DataSrcDocuments" (
   "DataSrcDocumentId" NUMBER(10,0) NOT NULL,
   "DataSrcId" NUMBER(10,0) NOT NULL,
   "DocumentTypeId" NUMBER(10,0) NOT NULL,
   "DocumentId" NUMBER(10,0) NOT NULL,
   "ValidFrom" TIMESTAMP NOT NULL,
   "ValidTo" TIMESTAMP ,
   "CreatedOn" TIMESTAMP NOT NULL,
   "CreatedBy" TIMESTAMP 
);

-- Creating table 'DataSrcExtractSets'
CREATE TABLE "SYSTEM"."DataSrcExtractSets" (
   "DataSrcExtractSetId" NUMBER(10,0) NOT NULL,
   "DataSrcId" NUMBER(10,0) NOT NULL,
   "StateId" NUMBER(10,0) ,
   "SetNumber" NUMBER(10,0) ,
   "ExtractSetId" NUMBER(10,0) NOT NULL,
   "StatusId" NUMBER(10,0) NOT NULL,
   "ModifiedOn" TIMESTAMP ,
   "ModifiedBy" NUMBER(10,0) ,
   "CreatedBy" NUMBER(10,0) NOT NULL,
   "CreatedOn" TIMESTAMP NOT NULL
);

-- Creating table 'DataSrcIdentificationSets'
CREATE TABLE "SYSTEM"."DataSrcIdentificationSets" (
   "DataSrcIdentificationSetId" NUMBER(10,0) NOT NULL,
   "DataSrcId" NUMBER(10,0) NOT NULL,
   "StateId" NUMBER(10,0) ,
   "SetNumber" NUMBER(10,0) ,
   "ApplicationOrder" NUMBER(10,0) NOT NULL,
   "IdentificationSetId" NUMBER(10,0) NOT NULL,
   "StatusId" NUMBER(10,0) NOT NULL,
   "ModifiedOn" TIMESTAMP ,
   "ModifiedBy" NUMBER(10,0) ,
   "CreatedBy" NUMBER(10,0) NOT NULL,
   "CreatedOn" TIMESTAMP NOT NULL
);

-- Creating table 'DataSrcMakeFamilies'
CREATE TABLE "SYSTEM"."DataSrcMakeFamilies" (
   "DataSrcMakeFamilyId" NUMBER(10,0) NOT NULL,
   "DataSrcId" NUMBER(10,0) ,
   "Name" VARCHAR2(32 CHAR) NOT NULL,
   "Description" VARCHAR2(255 CHAR) ,
   "CreatedOn" TIMESTAMP NOT NULL,
   "CreatedBy" NUMBER(10,0) NOT NULL
);

-- Creating table 'DataSrcMakeFamilyMakes'
CREATE TABLE "SYSTEM"."DataSrcMakeFamilyMakes" (
   "DataSrcMakeFamilyMakeId" NUMBER(10,0) NOT NULL,
   "DataSrcMakeFamilyId" NUMBER(10,0) NOT NULL,
   "VehicleMakeId" NUMBER(10,0) NOT NULL,
   "Precedence" NUMBER(10,0) NOT NULL,
   "CreatedOn" TIMESTAMP NOT NULL,
   "CreatedBy" NUMBER(10,0) NOT NULL
);

-- Creating table 'DataSrcMakeFamilyMembers'
CREATE TABLE "SYSTEM"."DataSrcMakeFamilyMembers" (
   "DataSrcMakeFamilyMemberId" NUMBER(10,0) NOT NULL,
   "DataSrcMakeFamilyId" NUMBER(10,0) NOT NULL,
   "Make" VARCHAR2(128 CHAR) NOT NULL,
   "StatusId" NUMBER(10,0) NOT NULL,
   "ModifiedOn" TIMESTAMP ,
   "ModifiedBy" NUMBER(10,0) ,
   "CreatedOn" TIMESTAMP NOT NULL,
   "CreatedBy" NUMBER(10,0) NOT NULL
);

-- Creating table 'DataSrcNotes'
CREATE TABLE "SYSTEM"."DataSrcNotes" (
   "DataSrcNotesId" NUMBER(10,0) NOT NULL,
   "DataSrcId" NUMBER(10,0) NOT NULL,
   "NotesId" NUMBER(10,0) NOT NULL,
   "NotesTypeId" NUMBER(10,0) NOT NULL,
   "CreatedOn" TIMESTAMP NOT NULL,
   "CreatedBy" NUMBER(10,0) NOT NULL
);

-- Creating table 'DataSrcParseSets'
CREATE TABLE "SYSTEM"."DataSrcParseSets" (
   "DataSrcParseSetId" NUMBER(10,0) NOT NULL,
   "DataSrcId" NUMBER(10,0) NOT NULL,
   "ParseSetId" NUMBER(10,0) NOT NULL,
   "StatusId" NUMBER(10,0) NOT NULL,
   "ModifiedOn" TIMESTAMP ,
   "ModifiedBy" NUMBER(10,0) ,
   "CreatedBy" NUMBER(10,0) NOT NULL,
   "CreatedOn" TIMESTAMP NOT NULL
);

-- Creating table 'DataSrcRequestBatches'
CREATE TABLE "SYSTEM"."DataSrcRequestBatches" (
   "DataSrcRequestBatchId" NUMBER(10,0) NOT NULL,
   "DataSrcId" NUMBER(10,0) NOT NULL,
   "FilePath" VARCHAR2(260 CHAR) NOT NULL,
   "FileName" VARCHAR2(260 CHAR) NOT NULL,
   "BatchStatusDataSrcRqstId" NUMBER(10,0) ,
   "BatchStatusDate" TIMESTAMP ,
   "RequestsTotal" NUMBER(10,0) NOT NULL,
   "RequestsTotalWithSpray" NUMBER(10,0) NOT NULL,
   "SentOn" TIMESTAMP ,
   "DataSrcResponseBatchId" NUMBER(10,0) ,
   "ClosedOn" TIMESTAMP ,
   "Closed" NUMBER(1,0) NOT NULL,
   "CreatedOn" TIMESTAMP NOT NULL,
   "CreatedBy" NUMBER(10,0) NOT NULL,
   "TimeStamp" RAW(8) 
);

-- Creating table 'DataSrcRequestBatchRecords'
CREATE TABLE "SYSTEM"."DataSrcRequestBatchRecords" (
   "DataSrcRequestBatchRecordId" NUMBER(10,0) NOT NULL,
   "DataSrcRequestBatchId" NUMBER(10,0) NOT NULL,
   "RequestRecordId" NUMBER(10,0) NOT NULL,
   "RequestFormatSetId" NUMBER(10,0) ,
   "RawRecordId" NUMBER(10,0) NOT NULL,
   "SprayPlateType" VARCHAR2(32 CHAR) ,
   "SequenceNumber" NUMBER(10,0) 
);

-- Creating table 'DataSrcRequestBatchStatus'
CREATE TABLE "SYSTEM"."DataSrcRequestBatchStatus" (
   "DataSrcRequestBatchStatusId" NUMBER(10,0) NOT NULL,
   "DataSrcRequestBatchId" NUMBER(10,0) NOT NULL,
   "BatchStatusDataSrcRqstId" NUMBER(10,0) NOT NULL,
   "Notes" VARCHAR2(255 CHAR) ,
   "CreatedOn" TIMESTAMP NOT NULL,
   "CreatedBy" NUMBER(10,0) NOT NULL
);

-- Creating table 'DataSrcRequestControls'
CREATE TABLE "SYSTEM"."DataSrcRequestControls" (
   "DataSrcRequestControlId" NUMBER(10,0) NOT NULL,
   "DataSrcId" NUMBER(10,0) NOT NULL,
   "MinimumRecords" NUMBER(10,0) ,
   "MaximumRecords" NUMBER(10,0) ,
   "MaximumHoldDays" NUMBER(10,0) 
);

-- Creating table 'DataSrcRequestFormatSets'
CREATE TABLE "SYSTEM"."DataSrcRequestFormatSets" (
   "DataSrcRequestFormatSetId" NUMBER(10,0) NOT NULL,
   "DataSrcId" NUMBER(10,0) NOT NULL,
   "RequestFormatSetId" NUMBER(10,0) NOT NULL,
   "StatusId" NUMBER(10,0) NOT NULL,
   "ModifiedOn" TIMESTAMP ,
   "ModifiedBy" NUMBER(10,0) ,
   "CreatedBy" NUMBER(10,0) NOT NULL,
   "CreatedOn" TIMESTAMP NOT NULL
);

-- Creating table 'DataSrcRequestRuleSets'
CREATE TABLE "SYSTEM"."DataSrcRequestRuleSets" (
   "DataSrcRequestRuleSetId" NUMBER(10,0) NOT NULL,
   "DataSrcId" NUMBER(10,0) NOT NULL,
   "RequestRuleSetId" NUMBER(10,0) NOT NULL,
   "StatusId" NUMBER(10,0) NOT NULL,
   "ModifiedOn" TIMESTAMP ,
   "ModifiedBy" NUMBER(10,0) ,
   "CreatedOn" TIMESTAMP NOT NULL,
   "CreatedBy" NUMBER(10,0) NOT NULL
);

-- Creating table 'DataSrcResponseBatches'
CREATE TABLE "SYSTEM"."DataSrcResponseBatches" (
   "DataSrcResponseBatchId" NUMBER(10,0) NOT NULL,
   "DataSrcId" NUMBER(10,0) NOT NULL,
   "BatchIdentifier" VARCHAR2(32 CHAR) NOT NULL,
   "FilePath" VARCHAR2(260 CHAR) NOT NULL,
   "FileName" VARCHAR2(260 CHAR) NOT NULL,
   "BatchStatusDataSrcRspId" NUMBER(10,0) ,
   "BatchStatusDate" TIMESTAMP ,
   "DataSrcResponseBatchStateId" NUMBER(10,0) ,
   "ResponsesTotal" NUMBER(10,0) NOT NULL,
   "ResponsesDuplicate" NUMBER(10,0) NOT NULL,
   "ResponsesMatch" NUMBER(10,0) NOT NULL,
   "ResponseHitCount" NUMBER(10,0) NOT NULL,
   "ParseSetId" NUMBER(10,0) ,
   "CreatedOn" TIMESTAMP NOT NULL,
   "CreatedBy" NUMBER(10,0) NOT NULL,
   "TimeStamp" RAW(8) 
);

-- Creating table 'DataSrcResponseBatchRecords'
CREATE TABLE "SYSTEM"."DataSrcResponseBatchRecords" (
   "DataSrcResponseBatchRecordId" NUMBER(10,0) NOT NULL,
   "DataSrcResponseBatchId" NUMBER(10,0) NOT NULL,
   "ResponseRecordId" NUMBER(10,0) NOT NULL,
   "RawRecordId" NUMBER(10,0) NOT NULL,
   "ValidationSetId" NUMBER(10,0) ,
   "DataSrcIdentificationSetId" NUMBER(10,0) ,
   "ExtractSetId" NUMBER(10,0) ,
   "SequenceNumber" NUMBER(10,0) 
);

-- Creating table 'DataSrcResponseBatchStates'
CREATE TABLE "SYSTEM"."DataSrcResponseBatchStates" (
   "DataSrcResponseBatchStateId" NUMBER(10,0) NOT NULL,
   "Name" VARCHAR2(32 CHAR) NOT NULL,
   "Description" VARCHAR2(255 CHAR) 
);

-- Creating table 'DataSrcResponseBatchStatus'
CREATE TABLE "SYSTEM"."DataSrcResponseBatchStatus" (
   "DataSrcResponseBatchStatusId" NUMBER(10,0) NOT NULL,
   "DataSrcResponseBatchId" NUMBER(10,0) NOT NULL,
   "BatchStatusDataSrcRspId" NUMBER(10,0) NOT NULL,
   "Notes" VARCHAR2(255 CHAR) ,
   "CreatedOn" TIMESTAMP NOT NULL,
   "CreatedBy" NUMBER(10,0) NOT NULL
);

-- Creating table 'DataSrcStates'
CREATE TABLE "SYSTEM"."DataSrcStates" (
   "DataSrcStateId" NUMBER(10,0) NOT NULL,
   "DataSrcId" NUMBER(10,0) NOT NULL,
   "StateId" NUMBER(10,0) NOT NULL,
   "IsStatePrimaryDataSrc" NUMBER(1,0) NOT NULL,
   "ModifiedOn" TIMESTAMP ,
   "ModifiedBy" NUMBER(10,0) ,
   "CreatedOn" TIMESTAMP NOT NULL,
   "CreatedBy" NUMBER(10,0) NOT NULL
);

-- Creating table 'DataSrcStateNLETS'
CREATE TABLE "SYSTEM"."DataSrcStateNLETS" (
   "DataSrcStateNLETSId" NUMBER(10,0) NOT NULL,
   "StateId" NUMBER(10,0) NOT NULL,
   "IsSORI" NUMBER(1,0) ,
   "ModifiedOn" TIMESTAMP ,
   "ModifiedBy" NUMBER(10,0) ,
   "CreatedOn" TIMESTAMP NOT NULL,
   "CreatedBy" NUMBER(10,0) NOT NULL
);

-- Creating table 'DataSrcStatisticsDefaults'
CREATE TABLE "SYSTEM"."DataSrcStatisticsDefaults" (
   "DataSrcStatisticsDefaultsId" NUMBER(10,0) NOT NULL,
   "DataSrcId" NUMBER(10,0) NOT NULL,
   "StateId" NUMBER(10,0) ,
   "AverageHitPercentPerBatch" NUMBER(10,0) NOT NULL,
   "DeviationPercentPerBatch" NUMBER(10,0) NOT NULL,
   "MinimumHitPercentPerBatch" NUMBER(10,0) NOT NULL
);

-- Creating table 'DataSrcStatus'
CREATE TABLE "SYSTEM"."DataSrcStatus" (
   "DataSrcStatusId" NUMBER(10,0) NOT NULL,
   "DataSrcId" NUMBER(10,0) NOT NULL,
   "StatusId" NUMBER(10,0) NOT NULL,
   "Notes" VARCHAR2(255 CHAR) ,
   "CreatedOn" TIMESTAMP NOT NULL,
   "CreatedBy" NUMBER(10,0) NOT NULL
);

-- Creating table 'DataSrcTypes'
CREATE TABLE "SYSTEM"."DataSrcTypes" (
   "DataSrcTypeId" NUMBER(10,0) NOT NULL,
   "Name" VARCHAR2(32 CHAR) NOT NULL,
   "Description" VARCHAR2(255 CHAR) NOT NULL
);

-- Creating table 'DataSrcValidationSets'
CREATE TABLE "SYSTEM"."DataSrcValidationSets" (
   "DataSrcValidationSetId" NUMBER(10,0) NOT NULL,
   "DataSrcId" NUMBER(10,0) NOT NULL,
   "ValidationSetId" NUMBER(10,0) NOT NULL,
   "StatusId" NUMBER(10,0) NOT NULL,
   "ModifiedOn" TIMESTAMP ,
   "ModifiedBy" NUMBER(10,0) ,
   "CreatedBy" NUMBER(10,0) NOT NULL,
   "CreatedOn" TIMESTAMP NOT NULL
);

-- Creating table 'DateTimeFormatTypes'
CREATE TABLE "SYSTEM"."DateTimeFormatTypes" (
   "DateTimeFormatTypeId" NUMBER(10,0) NOT NULL,
   "Name" VARCHAR2(32 CHAR) NOT NULL,
   "Description" VARCHAR2(255 CHAR) 
);

-- Creating table 'Directions'
CREATE TABLE "SYSTEM"."Directions" (
   "DirectionId" NUMBER(10,0) NOT NULL,
   "Name" VARCHAR2(32 CHAR) NOT NULL,
   "Description" VARCHAR2(255 CHAR) 
);

-- Creating table 'Documents'
CREATE TABLE "SYSTEM"."Documents" (
   "DocumentId" NUMBER(10,0) NOT NULL,
   "Name" VARCHAR2(255 CHAR) NOT NULL,
   "Description" VARCHAR2(255 CHAR) ,
   "MimeType" VARCHAR2(32 CHAR) NOT NULL,
   "Content" BLOB ,
   "CreatedOn" TIMESTAMP NOT NULL,
   "CreatedBy" NUMBER(10,0) NOT NULL
);

-- Creating table 'DocumentTypes'
CREATE TABLE "SYSTEM"."DocumentTypes" (
   "DocumentTypeId" NUMBER(10,0) NOT NULL,
   "Name" VARCHAR2(32 CHAR) NOT NULL,
   "Description" VARCHAR2(255 CHAR) NOT NULL
);

-- Creating table 'EMails'
CREATE TABLE "SYSTEM"."EMails" (
   "EMailId" NUMBER(10,0) NOT NULL,
   "EMailDisplayName" VARCHAR2(255 CHAR) ,
   "EMailAddress" VARCHAR2(255 CHAR) 
);

-- Creating table 'EMailTypes'
CREATE TABLE "SYSTEM"."EMailTypes" (
   "EMailTypeId" NUMBER(10,0) NOT NULL,
   "Name" VARCHAR2(32 CHAR) NOT NULL,
   "Description" VARCHAR2(255 CHAR) 
);

-- Creating table 'ExtractSets'
CREATE TABLE "SYSTEM"."ExtractSets" (
   "ExtractSetId" NUMBER(10,0) NOT NULL,
   "Name" VARCHAR2(32 CHAR) NOT NULL,
   "Description" VARCHAR2(255 CHAR) ,
   "TargetTypeId" NUMBER(10,0) NOT NULL,
   "CreatedBy" NUMBER(10,0) NOT NULL,
   "CreatedOn" TIMESTAMP NOT NULL
);

-- Creating table 'ExtractSetFields'
CREATE TABLE "SYSTEM"."ExtractSetFields" (
   "ExtractSetFieldId" NUMBER(10,0) NOT NULL,
   "ExtractSetId" NUMBER(10,0) NOT NULL,
   "NormalizedObjectDefId" NUMBER(10,0) NOT NULL,
   "Order" NUMBER(10,0) NOT NULL
);

-- Creating table 'ExtractSteps'
CREATE TABLE "SYSTEM"."ExtractSteps" (
   "ExtractStepId" NUMBER(10,0) NOT NULL,
   "ExtractSetFieldId" NUMBER(10,0) NOT NULL,
   "StepTypeId" NUMBER(10,0) NOT NULL,
   "RuleInstanceId" NUMBER(10,0) NOT NULL,
   "Start" NUMBER(1,0) NOT NULL,
   "NextExtractStepId" NUMBER(10,0) ,
   "ErrorExtractStepId" NUMBER(10,0) 
);

-- Creating table 'IdentificationSets'
CREATE TABLE "SYSTEM"."IdentificationSets" (
   "IdentificationSetId" NUMBER(10,0) NOT NULL,
   "Name" VARCHAR2(32 CHAR) NOT NULL,
   "Description" VARCHAR2(255 CHAR) ,
   "TargetTypeId" NUMBER(10,0) NOT NULL,
   "CreatedBy" NUMBER(10,0) NOT NULL,
   "CreatedOn" TIMESTAMP NOT NULL
);

-- Creating table 'IdentificationSteps'
CREATE TABLE "SYSTEM"."IdentificationSteps" (
   "IdentificationStepId" NUMBER(10,0) NOT NULL,
   "IdentificationSetId" NUMBER(10,0) NOT NULL,
   "StepTypeId" NUMBER(10,0) NOT NULL,
   "RuleInstanceId" NUMBER(10,0) NOT NULL,
   "Start" NUMBER(1,0) NOT NULL,
   "NextIdentificationStepId" NUMBER(10,0) ,
   "ErrorIdentificationStepId" NUMBER(10,0) 
);

-- Creating table 'LoadRejectCounts'
CREATE TABLE "SYSTEM"."LoadRejectCounts" (
   "LoadRejectCountsId" NUMBER(10,0) NOT NULL,
   "ClientRequestBatchId" NUMBER(10,0) NOT NULL,
   "LoadRejectTypeId" NUMBER(10,0) NOT NULL,
   "Count" NUMBER(10,0) NOT NULL,
   "TimeStamp" RAW(8) NOT NULL
);

-- Creating table 'LoadRejectTypes'
CREATE TABLE "SYSTEM"."LoadRejectTypes" (
   "LoadRejectTypeId" NUMBER(10,0) NOT NULL,
   "Name" VARCHAR2(32 CHAR) NOT NULL,
   "Description" VARCHAR2(255 CHAR) NOT NULL
);

-- Creating table 'LoadRuleSets'
CREATE TABLE "SYSTEM"."LoadRuleSets" (
   "LoadRuleSetId" NUMBER(10,0) NOT NULL,
   "ClientId" NUMBER(10,0) NOT NULL,
   "ValidFrom" TIMESTAMP NOT NULL,
   "ValidTo" TIMESTAMP ,
   "CreatedOn" TIMESTAMP NOT NULL,
   "CreatedBy" NUMBER(10,0) NOT NULL
);

-- Creating table 'LoadRuleSteps'
CREATE TABLE "SYSTEM"."LoadRuleSteps" (
   "LoadRuleStepId" NUMBER(10,0) NOT NULL,
   "LoadRuleSetId" NUMBER(10,0) NOT NULL,
   "StepTypeId" NUMBER(10,0) NOT NULL,
   "RuleInstanceId" NUMBER(10,0) NOT NULL,
   "NormalizedObjectDefId" NUMBER(10,0) NOT NULL,
   "Start" NUMBER(1,0) NOT NULL,
   "NextLoadRuleStepId" NUMBER(10,0) ,
   "ErrorLoadRuleStepId" NUMBER(10,0) 
);

-- Creating table 'NLETSTypes'
CREATE TABLE "SYSTEM"."NLETSTypes" (
   "NLETSTypeId" NUMBER(10,0) NOT NULL,
   "Name" VARCHAR2(32 CHAR) NOT NULL,
   "Description" VARCHAR2(255 CHAR) 
);

-- Creating table 'NoHitReasons'
CREATE TABLE "SYSTEM"."NoHitReasons" (
   "NoHitReasonId" NUMBER(10,0) NOT NULL,
   "Name" VARCHAR2(32 CHAR) NOT NULL,
   "Description" VARCHAR2(255 CHAR) 
);

-- Creating table 'NormalizedCategories'
CREATE TABLE "SYSTEM"."NormalizedCategories" (
   "NormalizedCategoryId" NUMBER(10,0) NOT NULL,
   "Name" VARCHAR2(32 CHAR) NOT NULL,
   "Description" VARCHAR2(255 CHAR) 
);

-- Creating table 'NormalizedObjects'
CREATE TABLE "SYSTEM"."NormalizedObjects" (
   "NormalizedObjectId" NUMBER(10,0) NOT NULL,
   "Name" VARCHAR2(32 CHAR) NOT NULL,
   "Description" VARCHAR2(255 CHAR) 
);

-- Creating table 'NormalizedObjectDefs'
CREATE TABLE "SYSTEM"."NormalizedObjectDefs" (
   "NormalizedObjectDefId" NUMBER(10,0) NOT NULL,
   "NormalizedObjectId" NUMBER(10,0) NOT NULL,
   "NormalizedCategoryId" NUMBER(10,0) NOT NULL,
   "FQN" VARCHAR2(255 CHAR) NOT NULL,
   "Order" NUMBER(10,0) NOT NULL,
   "ParentObjectId" NUMBER(10,0) ,
   "DisplayName" VARCHAR2(32 CHAR) NOT NULL,
   "DisplayDescription" VARCHAR2(255 CHAR) 
);

-- Creating table 'Notes'
CREATE TABLE "SYSTEM"."Notes" (
   "NotesId" NUMBER(10,0) NOT NULL,
   "Body" CLOB ,
   "CreatedOn" TIMESTAMP NOT NULL,
   "CreatedBy" NUMBER(10,0) NOT NULL
);

-- Creating table 'NotesTypes'
CREATE TABLE "SYSTEM"."NotesTypes" (
   "NotesTypeId" NUMBER(10,0) NOT NULL,
   "Name" VARCHAR2(32 CHAR) NOT NULL,
   "Description" VARCHAR2(128 CHAR) 
);

-- Creating table 'NotSelectReasons'
CREATE TABLE "SYSTEM"."NotSelectReasons" (
   "NotSelectReasonId" NUMBER(10,0) NOT NULL,
   "Name" VARCHAR2(32 CHAR) NOT NULL,
   "Description" VARCHAR2(255 CHAR) NOT NULL
);

-- Creating table 'OwnershipEntities'
CREATE TABLE "SYSTEM"."OwnershipEntities" (
   "OwnershipEntityId" NUMBER(10,0) NOT NULL,
   "CompanyName" VARCHAR2(255 CHAR) ,
   "FullName" VARCHAR2(255 CHAR) ,
   "FirstName" VARCHAR2(255 CHAR) ,
   "MiddleName" VARCHAR2(255 CHAR) ,
   "LastName" VARCHAR2(255 CHAR) ,
   "SuffixName" VARCHAR2(32 CHAR) ,
   "FullName2" VARCHAR2(255 CHAR) ,
   "FirstName2" VARCHAR2(255 CHAR) ,
   "MiddleName2" VARCHAR2(255 CHAR) ,
   "LastName2" VARCHAR2(255 CHAR) ,
   "SuffixName2" VARCHAR2(255 CHAR) ,
   "Sex" VARCHAR2(16 CHAR) ,
   "EyeColor" VARCHAR2(16 CHAR) ,
   "Height" VARCHAR2(16 CHAR) ,
   "Weight" VARCHAR2(16 CHAR) ,
   "DateOfBirth" VARCHAR2(32 CHAR) ,
   "AddressId" NUMBER(10,0) ,
   "IdentificationNumber" VARCHAR2(32 CHAR) ,
   "IdentificationType" VARCHAR2(32 CHAR) ,
   "CreatedOn" TIMESTAMP NOT NULL,
   "CreatedBy" NUMBER(10,0) NOT NULL
);

-- Creating table 'ParamTypes'
CREATE TABLE "SYSTEM"."ParamTypes" (
   "ParamTypeId" NUMBER(10,0) NOT NULL,
   "Name" VARCHAR2(32 CHAR) NOT NULL,
   "Description" VARCHAR2(255 CHAR) 
);

-- Creating table 'ParseSets'
CREATE TABLE "SYSTEM"."ParseSets" (
   "ParseSetId" NUMBER(10,0) NOT NULL,
   "Name" VARCHAR2(32 CHAR) NOT NULL,
   "Description" VARCHAR2(255 CHAR) ,
   "TargetTypeId" NUMBER(10,0) NOT NULL,
   "CreatedBy" NUMBER(10,0) NOT NULL,
   "CreatedOn" TIMESTAMP NOT NULL
);

-- Creating table 'ParseSteps'
CREATE TABLE "SYSTEM"."ParseSteps" (
   "ParseStepId" NUMBER(10,0) NOT NULL,
   "ParseSetId" NUMBER(10,0) NOT NULL,
   "StepTypeId" NUMBER(10,0) NOT NULL,
   "RuleInstanceId" NUMBER(10,0) NOT NULL,
   "Start" NUMBER(1,0) NOT NULL,
   "NextParseStepId" NUMBER(10,0) ,
   "ErrorParseStepId" NUMBER(10,0) 
);

-- Creating table 'PhoneNumbers'
CREATE TABLE "SYSTEM"."PhoneNumbers" (
   "PhoneNumberId" NUMBER(10,0) NOT NULL,
   "PhoneNumber1" VARCHAR2(255 CHAR) ,
   "PhoneExtension" VARCHAR2(255 CHAR) 
);

-- Creating table 'PhoneNumberTypes'
CREATE TABLE "SYSTEM"."PhoneNumberTypes" (
   "PhoneNumberTypeId" NUMBER(10,0) NOT NULL,
   "Name" VARCHAR2(32 CHAR) NOT NULL,
   "Description" VARCHAR2(255 CHAR) 
);

-- Creating table 'PlateReplaceSets'
CREATE TABLE "SYSTEM"."PlateReplaceSets" (
   "PlateReplaceSetId" NUMBER(10,0) NOT NULL,
   "Name" VARCHAR2(32 CHAR) NOT NULL,
   "Description" VARCHAR2(255 CHAR) ,
   "CreatedBy" NUMBER(10,0) NOT NULL,
   "CreatedOn" TIMESTAMP NOT NULL
);

-- Creating table 'PlateReplaceSteps'
CREATE TABLE "SYSTEM"."PlateReplaceSteps" (
   "PlateReplaceStepId" NUMBER(10,0) NOT NULL,
   "PlateReplaceSetId" NUMBER(10,0) NOT NULL,
   "ReplacePatternTypeId" NUMBER(10,0) NOT NULL,
   "Pattern" VARCHAR2(255 CHAR) NOT NULL,
   "ReplaceWith" VARCHAR2(255 CHAR) ,
   "Start" NUMBER(1,0) NOT NULL,
   "NextPlateReplaceStepId" NUMBER(10,0) 
);

-- Creating table 'PlateTypes'
CREATE TABLE "SYSTEM"."PlateTypes" (
   "PlateTypeId" NUMBER(10,0) NOT NULL,
   "ParentPlateTypeId" NUMBER(10,0) ,
   "StateId" NUMBER(10,0) NOT NULL,
   "Name" VARCHAR2(32 CHAR) NOT NULL,
   "Description" VARCHAR2(255 CHAR) ,
   "ModifiedOn" TIMESTAMP ,
   "ModifiedBy" NUMBER(10,0) ,
   "CreatedOn" TIMESTAMP NOT NULL,
   "CreatedBy" NUMBER(10,0) NOT NULL
);

-- Creating table 'PlateTypeClientXlats'
CREATE TABLE "SYSTEM"."PlateTypeClientXlats" (
   "PlateTypeClientXlatId" NUMBER(10,0) NOT NULL,
   "ClientId" NUMBER(10,0) NOT NULL,
   "PlateType" VARCHAR2(32 CHAR) NOT NULL,
   "StateId" NUMBER(10,0) NOT NULL,
   "PlateTypeId" NUMBER(10,0) NOT NULL,
   "DirectionId" NUMBER(10,0) NOT NULL,
   "StatusId" NUMBER(10,0) NOT NULL,
   "ModifiedOn" TIMESTAMP ,
   "ModifiedBy" NUMBER(10,0) ,
   "CreatedOn" TIMESTAMP NOT NULL,
   "CreatedBy" NUMBER(10,0) NOT NULL
);

-- Creating table 'PlateTypeDataSrcXlats'
CREATE TABLE "SYSTEM"."PlateTypeDataSrcXlats" (
   "PlateTypeDataSrcXlatId" NUMBER(10,0) NOT NULL,
   "DataSrcId" NUMBER(10,0) NOT NULL,
   "PlateType" VARCHAR2(32 CHAR) NOT NULL,
   "StateId" NUMBER(10,0) NOT NULL,
   "PlateTypeId" NUMBER(10,0) NOT NULL,
   "DirectionId" NUMBER(10,0) NOT NULL,
   "StatusId" NUMBER(10,0) NOT NULL,
   "ModifiedOn" TIMESTAMP ,
   "ModifiedBy" NUMBER(10,0) ,
   "CreatedOn" TIMESTAMP NOT NULL,
   "CreatedBy" NUMBER(10,0) NOT NULL
);

-- Creating table 'PlateValidationSets'
CREATE TABLE "SYSTEM"."PlateValidationSets" (
   "PlateValidationSetId" NUMBER(10,0) NOT NULL,
   "Name" VARCHAR2(32 CHAR) NOT NULL,
   "Description" VARCHAR2(255 CHAR) ,
   "CreatedBy" NUMBER(10,0) NOT NULL,
   "CreatedOn" TIMESTAMP NOT NULL
);

-- Creating table 'PlateValidationSteps'
CREATE TABLE "SYSTEM"."PlateValidationSteps" (
   "PlateValidationStepId" NUMBER(10,0) NOT NULL,
   "PlateValidationSetId" NUMBER(10,0) NOT NULL,
   "ValidationPatternTypeId" NUMBER(10,0) NOT NULL,
   "Pattern" VARCHAR2(255 CHAR) NOT NULL,
   "Start" NUMBER(1,0) NOT NULL,
   "NextPlateValidationStepId" NUMBER(10,0) 
);

-- Creating table 'RawRecords'
CREATE TABLE "SYSTEM"."RawRecords" (
   "RawRecordId" NUMBER(10,0) NOT NULL,
   "Body" CLOB NOT NULL
);

-- Creating table 'ReplacePatternTypes'
CREATE TABLE "SYSTEM"."ReplacePatternTypes" (
   "ReplacePatternTypeId" NUMBER(10,0) NOT NULL,
   "Name" VARCHAR2(32 CHAR) NOT NULL,
   "Description" VARCHAR2(255 CHAR) 
);

-- Creating table 'RequestBatchTypes'
CREATE TABLE "SYSTEM"."RequestBatchTypes" (
   "RequestBatchTypeId" NUMBER(10,0) NOT NULL,
   "Name" VARCHAR2(32 CHAR) NOT NULL,
   "Description" VARCHAR2(255 CHAR) NOT NULL
);

-- Creating table 'RequestFormatSets'
CREATE TABLE "SYSTEM"."RequestFormatSets" (
   "RequestFormatSetId" NUMBER(10,0) NOT NULL,
   "Name" VARCHAR2(32 CHAR) NOT NULL,
   "TargetTypeId" NUMBER(10,0) NOT NULL,
   "CreatedBy" NUMBER(10,0) NOT NULL,
   "CreatedOn" TIMESTAMP NOT NULL
);

-- Creating table 'RequestFormatSteps'
CREATE TABLE "SYSTEM"."RequestFormatSteps" (
   "RequestFormatStepId" NUMBER(10,0) NOT NULL,
   "RequestFormatSetId" NUMBER(10,0) NOT NULL,
   "StepTypeId" NUMBER(10,0) NOT NULL,
   "RuleInstanceId" NUMBER(10,0) NOT NULL,
   "Start" NUMBER(1,0) NOT NULL,
   "NormalizedObjectDefId" NUMBER(10,0) 
);

-- Creating table 'RequestRecords'
CREATE TABLE "SYSTEM"."RequestRecords" (
   "RequestRecordId" NUMBER(10,0) NOT NULL,
   "ProcessClientId" NUMBER(10,0) NOT NULL,
   "SubClient" VARCHAR2(50 CHAR) ,
   "RequestTotalCost" NUMBER(18,2) ,
   "CitationNumber" VARCHAR2(64 CHAR) ,
   "CitationIssueDate" VARCHAR2(32 CHAR) ,
   "CitationIssueTime" VARCHAR2(16 CHAR) ,
   "CitationIssue" TIMESTAMP ,
   "PlateNumber" VARCHAR2(16 CHAR) ,
   "PlateNumberEdit" VARCHAR2(16 CHAR) ,
   "PlateState" VARCHAR2(50 CHAR) ,
   "PlateStateId" NUMBER(10,0) ,
   "PlateType" VARCHAR2(50 CHAR) ,
   "PlateTypeId" NUMBER(10,0) ,
   "PlateTypeEdit" VARCHAR2(50 CHAR) ,
   "PlateColor" VARCHAR2(50 CHAR) ,
   "PlateExpirationDate" VARCHAR2(50 CHAR) ,
   "RegistrationIssueDate" VARCHAR2(50 CHAR) ,
   "RegistrationExpirationDate" VARCHAR2(50 CHAR) ,
   "VehicleYear" VARCHAR2(50 CHAR) ,
   "VehicleMake" VARCHAR2(128 CHAR) ,
   "VehicleModel" VARCHAR2(128 CHAR) ,
   "VehicleColor" VARCHAR2(128 CHAR) ,
   "VehicleStyle" VARCHAR2(128 CHAR) ,
   "VIN" VARCHAR2(128 CHAR) ,
   "CustomField1" VARCHAR2(32 CHAR) ,
   "CustomField2" VARCHAR2(32 CHAR) ,
   "ClientMakeFamilyId" NUMBER(10,0) ,
   "NormalizedVehicleMakeId" NUMBER(10,0) ,
   "RequestStatusId" NUMBER(10,0) NOT NULL,
   "RequestStatusDate" TIMESTAMP ,
   "LoadRejectTypeId" NUMBER(10,0) 
);

-- Creating table 'RequestResponses'
CREATE TABLE "SYSTEM"."RequestResponses" (
   "RequestResponseId" NUMBER(10,0) NOT NULL,
   "RequestRecordId" NUMBER(10,0) NOT NULL,
   "ResponseRecordId" NUMBER(10,0) NOT NULL,
   "NotSelectReasonId" NUMBER(10,0) 
);

-- Creating table 'RequestRuleSets'
CREATE TABLE "SYSTEM"."RequestRuleSets" (
   "RequestRuleSetId" NUMBER(10,0) NOT NULL,
   "CreatedOn" TIMESTAMP NOT NULL,
   "CreatedBy" NUMBER(10,0) NOT NULL
);

-- Creating table 'RequestRuleSteps'
CREATE TABLE "SYSTEM"."RequestRuleSteps" (
   "RequestRuleStepId" NUMBER(10,0) NOT NULL,
   "RequestRuleSetId" NUMBER(10,0) NOT NULL,
   "StepTypeId" NUMBER(10,0) NOT NULL,
   "RuleInstanceId" NUMBER(10,0) NOT NULL,
   "NormalizedObjectDefId" NUMBER(10,0) NOT NULL,
   "Start" NUMBER(1,0) NOT NULL,
   "NextRequestRuleStepId" NUMBER(10,0) ,
   "ErrorRequestRuleStepId" NUMBER(10,0) 
);

-- Creating table 'RequestStatus'
CREATE TABLE "SYSTEM"."RequestStatus" (
   "RequestStatusId" NUMBER(10,0) NOT NULL,
   "Name" VARCHAR2(32 CHAR) NOT NULL,
   "Description" VARCHAR2(255 CHAR) 
);

-- Creating table 'ResponseBatchTypes'
CREATE TABLE "SYSTEM"."ResponseBatchTypes" (
   "ResponseBatchTypeId" NUMBER(10,0) NOT NULL,
   "Name" VARCHAR2(32 CHAR) NOT NULL,
   "Description" VARCHAR2(255 CHAR) NOT NULL
);

-- Creating table 'ResponseFormatSets'
CREATE TABLE "SYSTEM"."ResponseFormatSets" (
   "ResponseFormatSetId" NUMBER(10,0) NOT NULL,
   "Name" VARCHAR2(32 CHAR) NOT NULL,
   "TargetTypeId" NUMBER(10,0) NOT NULL,
   "CreatedBy" NUMBER(10,0) NOT NULL,
   "CreatedOn" TIMESTAMP NOT NULL
);

-- Creating table 'ResponseFormatSteps'
CREATE TABLE "SYSTEM"."ResponseFormatSteps" (
   "ResponseFormatStepId" NUMBER(10,0) NOT NULL,
   "ResponseFormatSetId" NUMBER(10,0) NOT NULL,
   "StepTypeId" NUMBER(10,0) NOT NULL,
   "RuleInstanceId" NUMBER(10,0) NOT NULL,
   "Start" NUMBER(1,0) NOT NULL,
   "NormalizedObjectDefId" NUMBER(10,0) 
);

-- Creating table 'ResponseRecords'
CREATE TABLE "SYSTEM"."ResponseRecords" (
   "ResponseRecordId" NUMBER(10,0) NOT NULL,
   "CitationNumber" VARCHAR2(64 CHAR) NOT NULL,
   "PlateId" NUMBER(10,0) ,
   "AlternatePlateId" NUMBER(10,0) ,
   "LesseeId" NUMBER(10,0) ,
   "LessorId" NUMBER(10,0) ,
   "LienholderId" NUMBER(10,0) ,
   "OwnerId" NUMBER(10,0) ,
   "TitleNumber" VARCHAR2(64 CHAR) ,
   "TitleDate" VARCHAR2(32 CHAR) ,
   "CurrentCost" NUMBER(18,2) NOT NULL,
   "VIN" VARCHAR2(32 CHAR) ,
   "VehicleYear" VARCHAR2(32 CHAR) ,
   "VehicleMake" VARCHAR2(128 CHAR) ,
   "VehicleModel" VARCHAR2(128 CHAR) ,
   "VehicleStyle" VARCHAR2(128 CHAR) ,
   "VehicleColor1" VARCHAR2(128 CHAR) ,
   "VehicleColor2" VARCHAR2(128 CHAR) ,
   "ClassCode" VARCHAR2(32 CHAR) ,
   "CustomValue1" VARCHAR2(128 CHAR) ,
   "CustomValue2" VARCHAR2(128 CHAR) ,
   "CustomValue3" VARCHAR2(128 CHAR) ,
   "ResponseStatusId" NUMBER(10,0) NOT NULL,
   "ResponseRecordErrorId" NUMBER(10,0) ,
   "ResponseRecordDataStatusId" NUMBER(10,0) ,
   "NoHitReasonId" NUMBER(10,0) ,
   "ResponseStatusDate" TIMESTAMP NOT NULL
);

-- Creating table 'ResponseRecordDataStatus'
CREATE TABLE "SYSTEM"."ResponseRecordDataStatus" (
   "ResponseRecordDataStatusId" NUMBER(10,0) NOT NULL,
   "Name" VARCHAR2(32 CHAR) NOT NULL,
   "Description" VARCHAR2(255 CHAR) 
);

-- Creating table 'ResponseRecordErrors'
CREATE TABLE "SYSTEM"."ResponseRecordErrors" (
   "ResponseRecordErrorId" NUMBER(10,0) NOT NULL,
   "Name" VARCHAR2(32 CHAR) NOT NULL,
   "Description" VARCHAR2(255 CHAR) 
);

-- Creating table 'ResponseRecordStatus'
CREATE TABLE "SYSTEM"."ResponseRecordStatus" (
   "ResponseRecordStatusId" NUMBER(10,0) NOT NULL,
   "ResponseRecordId" NUMBER(10,0) NOT NULL,
   "ResponseStatusId" NUMBER(10,0) NOT NULL,
   "Cost" NUMBER(18,2) ,
   "Notes" VARCHAR2(255 CHAR) ,
   "CreatedOn" TIMESTAMP NOT NULL,
   "CreatedBy" NUMBER(10,0) NOT NULL
);

-- Creating table 'ResponseStatus'
CREATE TABLE "SYSTEM"."ResponseStatus" (
   "ResponseStatusId" NUMBER(10,0) NOT NULL,
   "Name" VARCHAR2(32 CHAR) NOT NULL,
   "Description" VARCHAR2(255 CHAR) 
);

-- Creating table 'RuleActions'
CREATE TABLE "SYSTEM"."RuleActions" (
   "RuleActionId" NUMBER(10,0) NOT NULL,
   "StepTypeId" NUMBER(10,0) NOT NULL,
   "ActionTypeId" NUMBER(10,0) NOT NULL,
   "TargetTypeId" NUMBER(10,0) NOT NULL,
   "Description" VARCHAR2(255 CHAR) 
);

-- Creating table 'RuleInstances'
CREATE TABLE "SYSTEM"."RuleInstances" (
   "RuleInstanceId" NUMBER(10,0) NOT NULL,
   "RuleActionId" NUMBER(10,0) NOT NULL,
   "Description" VARCHAR2(255 CHAR) 
);

-- Creating table 'RuleInstanceParams'
CREATE TABLE "SYSTEM"."RuleInstanceParams" (
   "RuleInstanceParamsId" NUMBER(10,0) NOT NULL,
   "RuleInstanceId" NUMBER(10,0) NOT NULL,
   "ActionParamsId" NUMBER(10,0) NOT NULL,
   "ParamInt" NUMBER(10,0) ,
   "ParamString" VARCHAR2(255 CHAR) ,
   "ParamChar" VARCHAR2(1 CHAR) ,
   "ParamRegEx" VARCHAR2(255 CHAR) ,
   "ParamFloat" NUMBER(18,2) ,
   "ParamBool" NUMBER(1,0) 
);

-- Creating table 'States'
CREATE TABLE "SYSTEM"."States" (
   "StateId" NUMBER(10,0) NOT NULL,
   "CountryId" NUMBER(10,0) NOT NULL,
   "Name" VARCHAR2(32 CHAR) NOT NULL,
   "AlphaCode" VARCHAR2(2 CHAR) NOT NULL,
   "NumericCode" VARCHAR2(16 CHAR) 
);

-- Creating table 'StatePlateReplaceSets'
CREATE TABLE "SYSTEM"."StatePlateReplaceSets" (
   "StatePlateReplaceSetId" NUMBER(10,0) NOT NULL,
   "StateId" NUMBER(10,0) NOT NULL,
   "PlateReplaceSetId" NUMBER(10,0) NOT NULL,
   "CreatedBy" NUMBER(10,0) NOT NULL,
   "CreatedOn" TIMESTAMP NOT NULL
);

-- Creating table 'StatePlateValidationSets'
CREATE TABLE "SYSTEM"."StatePlateValidationSets" (
   "StatePlateValidationSetId" NUMBER(10,0) NOT NULL,
   "StateId" NUMBER(10,0) NOT NULL,
   "PlateValidationSetId" NUMBER(10,0) NOT NULL,
   "CreatedBy" NUMBER(10,0) NOT NULL,
   "CreatedOn" TIMESTAMP NOT NULL
);

-- Creating table 'Status'
CREATE TABLE "SYSTEM"."Status" (
   "StatusId" NUMBER(10,0) NOT NULL,
   "Name" VARCHAR2(32 CHAR) NOT NULL,
   "Description" VARCHAR2(255 CHAR) 
);

-- Creating table 'StepTypes'
CREATE TABLE "SYSTEM"."StepTypes" (
   "StepTypeId" NUMBER(10,0) NOT NULL,
   "Name" VARCHAR2(32 CHAR) NOT NULL,
   "Description" VARCHAR2(255 CHAR) 
);

-- Creating table 'TargetTypes'
CREATE TABLE "SYSTEM"."TargetTypes" (
   "TargetTypeId" NUMBER(10,0) NOT NULL,
   "Name" VARCHAR2(32 CHAR) NOT NULL,
   "Description" VARCHAR2(255 CHAR) 
);

-- Creating table 'TimeSpanTypes'
CREATE TABLE "SYSTEM"."TimeSpanTypes" (
   "TimeSpanTypeId" NUMBER(10,0) NOT NULL,
   "TimeSpanInSeconds" NUMBER(10,0) NOT NULL,
   "Name" VARCHAR2(32 CHAR) NOT NULL,
   "Description" VARCHAR2(255 CHAR) 
);

-- Creating table 'UserTables'
CREATE TABLE "SYSTEM"."UserTables" (
   "UserId" NUMBER(10,0) NOT NULL,
   "UserName" VARCHAR2(255 CHAR) NOT NULL,
   "UserTypeId" NUMBER(10,0) NOT NULL,
   "MachineName" VARCHAR2(255 CHAR) ,
   "IsActive" NUMBER(1,0) NOT NULL,
   "FirstName" VARCHAR2(255 CHAR) ,
   "MiddleName" VARCHAR2(255 CHAR) ,
   "LastName" VARCHAR2(255 CHAR) ,
   "CreatedOn" TIMESTAMP ,
   "CreatedBy" NUMBER(10,0) 
);

-- Creating table 'UserTypes'
CREATE TABLE "SYSTEM"."UserTypes" (
   "UserTypeId" NUMBER(10,0) NOT NULL,
   "Name" VARCHAR2(32 CHAR) NOT NULL,
   "Description" VARCHAR2(255 CHAR) 
);

-- Creating table 'ValidationOperators'
CREATE TABLE "SYSTEM"."ValidationOperators" (
   "ValidationOperatorId" NUMBER(10,0) NOT NULL,
   "Name" VARCHAR2(32 CHAR) NOT NULL,
   "Description" VARCHAR2(255 CHAR) NOT NULL
);

-- Creating table 'ValidationPatternTypes'
CREATE TABLE "SYSTEM"."ValidationPatternTypes" (
   "ValidationPatternTypeId" NUMBER(10,0) NOT NULL,
   "Name" VARCHAR2(32 CHAR) NOT NULL,
   "Description" VARCHAR2(255 CHAR) 
);

-- Creating table 'ValidationSets'
CREATE TABLE "SYSTEM"."ValidationSets" (
   "ValidationSetId" NUMBER(10,0) NOT NULL,
   "Name" VARCHAR2(32 CHAR) NOT NULL,
   "Description" VARCHAR2(255 CHAR) ,
   "ValidationSetTypeId" NUMBER(10,0) NOT NULL,
   "CreatedBy" NUMBER(10,0) NOT NULL,
   "CreatedOn" TIMESTAMP NOT NULL
);

-- Creating table 'ValidationSetFields'
CREATE TABLE "SYSTEM"."ValidationSetFields" (
   "ValidationSetFieldId" NUMBER(10,0) NOT NULL,
   "ValidationSetId" NUMBER(10,0) NOT NULL,
   "ValidationOperatorId" NUMBER(10,0) NOT NULL,
   "NormalizedObjectDefId" NUMBER(10,0) NOT NULL
);

-- Creating table 'ValidationSetTypes'
CREATE TABLE "SYSTEM"."ValidationSetTypes" (
   "ValidationSetTypeId" NUMBER(10,0) NOT NULL,
   "Name" VARCHAR2(32 CHAR) NOT NULL,
   "Description" VARCHAR2(255 CHAR) 
);

-- Creating table 'ValidationTerms'
CREATE TABLE "SYSTEM"."ValidationTerms" (
   "ValidationTermId" NUMBER(10,0) NOT NULL,
   "ValidationSetFieldId" NUMBER(10,0) NOT NULL,
   "NegateTerm" NUMBER(1,0) ,
   "ValidationTypeId" NUMBER(10,0) NOT NULL,
   "Table" VARCHAR2(255 CHAR) ,
   "Field" VARCHAR2(255 CHAR) ,
   "IntValue1" NUMBER(10,0) ,
   "IntValue2" NUMBER(10,0) ,
   "StringValue" VARCHAR2(255 CHAR) 
);

-- Creating table 'ValidationTypes'
CREATE TABLE "SYSTEM"."ValidationTypes" (
   "ValidationTypeId" NUMBER(10,0) NOT NULL,
   "Name" VARCHAR2(32 CHAR) NOT NULL,
   "Description" VARCHAR2(255 CHAR) NOT NULL
);

-- Creating table 'VehicleMakes'
CREATE TABLE "SYSTEM"."VehicleMakes" (
   "VehicleMakeId" NUMBER(10,0) NOT NULL,
   "Make" VARCHAR2(32 CHAR) NOT NULL,
   "Description" VARCHAR2(255 CHAR) ,
   "StatusId" NUMBER(10,0) NOT NULL,
   "ModifiedOn" TIMESTAMP ,
   "ModifiedBy" NUMBER(10,0) ,
   "CreatedOn" TIMESTAMP NOT NULL,
   "CreatedBy" NUMBER(10,0) NOT NULL
);

-- Creating table 'Versions'
CREATE TABLE "SYSTEM"."Versions" (
   "MajorVersion" NUMBER(10,0) NOT NULL,
   "MinorVersion" NUMBER(10,0) NOT NULL,
   "BuildVersion" NUMBER(10,0) NOT NULL,
   "RevisionVersion" NUMBER(10,0) NOT NULL,
   "ChangeDate" TIMESTAMP NOT NULL,
   "ChangeLog" VARCHAR2(255 CHAR) 
);

-- Creating table 'Plates'
CREATE TABLE "SYSTEM"."Plates" (
   "PlateId" NUMBER(10,0) NOT NULL,
   "PlateNumber" VARCHAR2(32 CHAR) ,
   "State" VARCHAR2(32 CHAR) ,
   "StateId" NUMBER(10,0) ,
   "PlateTypeId" NUMBER(10,0) ,
   "PlateType" VARCHAR2(32 CHAR) ,
   "TitleNumber" VARCHAR2(32 CHAR) ,
   "EffectiveDate" TIMESTAMP ,
   "RegistrationDate" TIMESTAMP ,
   "ExpirationDate" TIMESTAMP ,
   "CancellationDate" TIMESTAMP ,
   "OriginalRegistrationDate" TIMESTAMP ,
   "Color" VARCHAR2(32 CHAR) ,
   "CreatedOn" TIMESTAMP NOT NULL,
   "CreatedBy" NUMBER(10,0) NOT NULL
);

-- Creating table 'RequestRecordStatus'
CREATE TABLE "SYSTEM"."RequestRecordStatus" (
   "RequestRecordStatusId" NUMBER(10,0) NOT NULL,
   "RequestRecordId" NUMBER(10,0) NOT NULL,
   "RequestStatusId" NUMBER(10,0) NOT NULL,
   "Cost" NUMBER(18,2) ,
   "Notes" VARCHAR2(255 CHAR) ,
   "CreatedOn" TIMESTAMP NOT NULL,
   "CreatedBy" NUMBER(10,0) NOT NULL
);

-- Creating table 'NoHitsTypes'
CREATE TABLE "SYSTEM"."NoHitsTypes" (
   "NoHitsTypeId" NUMBER(10,0) NOT NULL,
   "Name" VARCHAR2(32 CHAR) NOT NULL,
   "Description" VARCHAR2(255 CHAR) NOT NULL
);

-- Creating table 'DataSrcs'
CREATE TABLE "SYSTEM"."DataSrcs" (
   "DataSrcId" NUMBER(10,0) NOT NULL,
   "DataSrcTypeId" NUMBER(10,0) NOT NULL,
   "StatusId" NUMBER(10,0) NOT NULL,
   "LongName" VARCHAR2(255 CHAR) NOT NULL,
   "ShortName" VARCHAR2(32 CHAR) NOT NULL,
   "HitRateThreshold" NUMBER(18,4) NOT NULL,
   "NLETSSubClient" NUMBER(1,0) NOT NULL,
   "ChargeTypeId" NUMBER(10,0) ,
   "NoHitsTypeId" NUMBER(10,0) NOT NULL,
   "ForcedNoHitDays" NUMBER(10,0) ,
   "TimeZoneId" NUMBER(10,0) ,
   "EligibilityCodeRequired" NUMBER(1,0) ,
   "SendEnableDays" NUMBER(10,0) ,
   "RequestProcessEnabled" NUMBER(1,0) ,
   "ResponseProcessEnabled" NUMBER(1,0) ,
   "LastBatchReceivedOn" TIMESTAMP ,
   "LastBatchSentOn" TIMESTAMP ,
   "ModifiedOn" TIMESTAMP ,
   "ModifiedBy" NUMBER(10,0) ,
   "CreatedOn" TIMESTAMP NOT NULL,
   "CreatedBy" NUMBER(10,0) NOT NULL
);


-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on "ActionParamsId"in table 'ActionParams'
ALTER TABLE "SYSTEM"."ActionParams"
ADD CONSTRAINT "PK_ActionParams"
   PRIMARY KEY ("ActionParamsId" )
   ENABLE
   VALIDATE;


-- Creating primary key on "ActionTypeId"in table 'ActionTypes'
ALTER TABLE "SYSTEM"."ActionTypes"
ADD CONSTRAINT "PK_ActionTypes"
   PRIMARY KEY ("ActionTypeId" )
   ENABLE
   VALIDATE;


-- Creating primary key on "AddressId"in table 'Addresses'
ALTER TABLE "SYSTEM"."Addresses"
ADD CONSTRAINT "PK_Addresses"
   PRIMARY KEY ("AddressId" )
   ENABLE
   VALIDATE;


-- Creating primary key on "AddressTypeId"in table 'AddressTypes'
ALTER TABLE "SYSTEM"."AddressTypes"
ADD CONSTRAINT "PK_AddressTypes"
   PRIMARY KEY ("AddressTypeId" )
   ENABLE
   VALIDATE;


-- Creating primary key on "AuditId", "TableName", "TableColumn", "UpdatedOn", "UpdatedBy"in table 'Audits'
ALTER TABLE "SYSTEM"."Audits"
ADD CONSTRAINT "PK_Audits"
   PRIMARY KEY ("AuditId", "TableName", "TableColumn", "UpdatedOn", "UpdatedBy" )
   ENABLE
   VALIDATE;


-- Creating primary key on "BatchResponseFormatTypeId"in table 'BatchResponseFormatTypes'
ALTER TABLE "SYSTEM"."BatchResponseFormatTypes"
ADD CONSTRAINT "PK_BatchResponseFormatTypes"
   PRIMARY KEY ("BatchResponseFormatTypeId" )
   ENABLE
   VALIDATE;


-- Creating primary key on "BatchRuleTypeId"in table 'BatchRuleTypes'
ALTER TABLE "SYSTEM"."BatchRuleTypes"
ADD CONSTRAINT "PK_BatchRuleTypes"
   PRIMARY KEY ("BatchRuleTypeId" )
   ENABLE
   VALIDATE;


-- Creating primary key on "BatchStatusClientRqstId"in table 'BatchStatusClientRqsts'
ALTER TABLE "SYSTEM"."BatchStatusClientRqsts"
ADD CONSTRAINT "PK_BatchStatusClientRqsts"
   PRIMARY KEY ("BatchStatusClientRqstId" )
   ENABLE
   VALIDATE;


-- Creating primary key on "BatchStatusClientRspId"in table 'BatchStatusClientRsps'
ALTER TABLE "SYSTEM"."BatchStatusClientRsps"
ADD CONSTRAINT "PK_BatchStatusClientRsps"
   PRIMARY KEY ("BatchStatusClientRspId" )
   ENABLE
   VALIDATE;


-- Creating primary key on "BatchStatusDataSrcRqstId"in table 'BatchStatusDataSrcRqsts'
ALTER TABLE "SYSTEM"."BatchStatusDataSrcRqsts"
ADD CONSTRAINT "PK_BatchStatusDataSrcRqsts"
   PRIMARY KEY ("BatchStatusDataSrcRqstId" )
   ENABLE
   VALIDATE;


-- Creating primary key on "BatchStatusDataSrcRspId"in table 'BatchStatusDataSrcRsps'
ALTER TABLE "SYSTEM"."BatchStatusDataSrcRsps"
ADD CONSTRAINT "PK_BatchStatusDataSrcRsps"
   PRIMARY KEY ("BatchStatusDataSrcRspId" )
   ENABLE
   VALIDATE;


-- Creating primary key on "BatchTypeId"in table 'BatchTypes'
ALTER TABLE "SYSTEM"."BatchTypes"
ADD CONSTRAINT "PK_BatchTypes"
   PRIMARY KEY ("BatchTypeId" )
   ENABLE
   VALIDATE;


-- Creating primary key on "ChargeTypeId"in table 'ChargeTypes'
ALTER TABLE "SYSTEM"."ChargeTypes"
ADD CONSTRAINT "PK_ChargeTypes"
   PRIMARY KEY ("ChargeTypeId" )
   ENABLE
   VALIDATE;


-- Creating primary key on "ClientId"in table 'Clients'
ALTER TABLE "SYSTEM"."Clients"
ADD CONSTRAINT "PK_Clients"
   PRIMARY KEY ("ClientId" )
   ENABLE
   VALIDATE;


-- Creating primary key on "ClientContactId"in table 'ClientContacts'
ALTER TABLE "SYSTEM"."ClientContacts"
ADD CONSTRAINT "PK_ClientContacts"
   PRIMARY KEY ("ClientContactId" )
   ENABLE
   VALIDATE;


-- Creating primary key on "ClientContractId"in table 'ClientContracts'
ALTER TABLE "SYSTEM"."ClientContracts"
ADD CONSTRAINT "PK_ClientContracts"
   PRIMARY KEY ("ClientContractId" )
   ENABLE
   VALIDATE;


-- Creating primary key on "ClientDataSrcOrderId"in table 'ClientDataSrcOrders'
ALTER TABLE "SYSTEM"."ClientDataSrcOrders"
ADD CONSTRAINT "PK_ClientDataSrcOrders"
   PRIMARY KEY ("ClientDataSrcOrderId" )
   ENABLE
   VALIDATE;


-- Creating primary key on "ClientDataSrcStatusId"in table 'ClientDataSrcStatus'
ALTER TABLE "SYSTEM"."ClientDataSrcStatus"
ADD CONSTRAINT "PK_ClientDataSrcStatus"
   PRIMARY KEY ("ClientDataSrcStatusId" )
   ENABLE
   VALIDATE;


-- Creating primary key on "ClientDateTimeFormatId", "StatusId", "DirectionId", "DateTimeFormatTypeId", "FormatString", "CreatedOn", "CreatedBy"in table 'ClientDateTimeFormats'
ALTER TABLE "SYSTEM"."ClientDateTimeFormats"
ADD CONSTRAINT "PK_ClientDateTimeFormats"
   PRIMARY KEY ("ClientDateTimeFormatId", "StatusId", "DirectionId", "DateTimeFormatTypeId", "FormatString", "CreatedOn", "CreatedBy" )
   ENABLE
   VALIDATE;


-- Creating primary key on "ClientDocumentId"in table 'ClientDocuments'
ALTER TABLE "SYSTEM"."ClientDocuments"
ADD CONSTRAINT "PK_ClientDocuments"
   PRIMARY KEY ("ClientDocumentId" )
   ENABLE
   VALIDATE;


-- Creating primary key on "ClientExtractSetId"in table 'ClientExtractSets'
ALTER TABLE "SYSTEM"."ClientExtractSets"
ADD CONSTRAINT "PK_ClientExtractSets"
   PRIMARY KEY ("ClientExtractSetId" )
   ENABLE
   VALIDATE;


-- Creating primary key on "ClientInvoiceId"in table 'ClientInvoices'
ALTER TABLE "SYSTEM"."ClientInvoices"
ADD CONSTRAINT "PK_ClientInvoices"
   PRIMARY KEY ("ClientInvoiceId" )
   ENABLE
   VALIDATE;


-- Creating primary key on "ClientMakeFamilyId"in table 'ClientMakeFamilies'
ALTER TABLE "SYSTEM"."ClientMakeFamilies"
ADD CONSTRAINT "PK_ClientMakeFamilies"
   PRIMARY KEY ("ClientMakeFamilyId" )
   ENABLE
   VALIDATE;


-- Creating primary key on "ClientMakeFamilyMakeId"in table 'ClientMakeFamilyMakes'
ALTER TABLE "SYSTEM"."ClientMakeFamilyMakes"
ADD CONSTRAINT "PK_ClientMakeFamilyMakes"
   PRIMARY KEY ("ClientMakeFamilyMakeId" )
   ENABLE
   VALIDATE;


-- Creating primary key on "ClientMakeFamilyMemberId"in table 'ClientMakeFamilyMembers'
ALTER TABLE "SYSTEM"."ClientMakeFamilyMembers"
ADD CONSTRAINT "PK_ClientMakeFamilyMembers"
   PRIMARY KEY ("ClientMakeFamilyMemberId" )
   ENABLE
   VALIDATE;


-- Creating primary key on "ClientNotesId"in table 'ClientNotes'
ALTER TABLE "SYSTEM"."ClientNotes"
ADD CONSTRAINT "PK_ClientNotes"
   PRIMARY KEY ("ClientNotesId" )
   ENABLE
   VALIDATE;


-- Creating primary key on "ClientParseSetId"in table 'ClientParseSets'
ALTER TABLE "SYSTEM"."ClientParseSets"
ADD CONSTRAINT "PK_ClientParseSets"
   PRIMARY KEY ("ClientParseSetId" )
   ENABLE
   VALIDATE;


-- Creating primary key on "ClientRequestBatchId"in table 'ClientRequestBatches'
ALTER TABLE "SYSTEM"."ClientRequestBatches"
ADD CONSTRAINT "PK_ClientRequestBatches"
   PRIMARY KEY ("ClientRequestBatchId" )
   ENABLE
   VALIDATE;


-- Creating primary key on "ClientRequestBatchRecordId"in table 'ClientRequestBatchRecords'
ALTER TABLE "SYSTEM"."ClientRequestBatchRecords"
ADD CONSTRAINT "PK_ClientRequestBatchRecords"
   PRIMARY KEY ("ClientRequestBatchRecordId" )
   ENABLE
   VALIDATE;


-- Creating primary key on "ClientRequestBatchStateId"in table 'ClientRequestBatchStates'
ALTER TABLE "SYSTEM"."ClientRequestBatchStates"
ADD CONSTRAINT "PK_ClientRequestBatchStates"
   PRIMARY KEY ("ClientRequestBatchStateId" )
   ENABLE
   VALIDATE;


-- Creating primary key on "ClientRequestBatchStatusId"in table 'ClientRequestBatchStatus'
ALTER TABLE "SYSTEM"."ClientRequestBatchStatus"
ADD CONSTRAINT "PK_ClientRequestBatchStatus"
   PRIMARY KEY ("ClientRequestBatchStatusId" )
   ENABLE
   VALIDATE;


-- Creating primary key on "ClientRequestStatusId"in table 'ClientRequestStatus'
ALTER TABLE "SYSTEM"."ClientRequestStatus"
ADD CONSTRAINT "PK_ClientRequestStatus"
   PRIMARY KEY ("ClientRequestStatusId" )
   ENABLE
   VALIDATE;


-- Creating primary key on "ClientResponseBatchId"in table 'ClientResponseBatches'
ALTER TABLE "SYSTEM"."ClientResponseBatches"
ADD CONSTRAINT "PK_ClientResponseBatches"
   PRIMARY KEY ("ClientResponseBatchId" )
   ENABLE
   VALIDATE;


-- Creating primary key on "ClientResponseBatchRecordId"in table 'ClientResponseBatchRecords'
ALTER TABLE "SYSTEM"."ClientResponseBatchRecords"
ADD CONSTRAINT "PK_ClientResponseBatchRecords"
   PRIMARY KEY ("ClientResponseBatchRecordId" )
   ENABLE
   VALIDATE;


-- Creating primary key on "ClientResponseBatchStatusId"in table 'ClientResponseBatchStatus'
ALTER TABLE "SYSTEM"."ClientResponseBatchStatus"
ADD CONSTRAINT "PK_ClientResponseBatchStatus"
   PRIMARY KEY ("ClientResponseBatchStatusId" )
   ENABLE
   VALIDATE;


-- Creating primary key on "ClientResponseControlId"in table 'ClientResponseControls'
ALTER TABLE "SYSTEM"."ClientResponseControls"
ADD CONSTRAINT "PK_ClientResponseControls"
   PRIMARY KEY ("ClientResponseControlId" )
   ENABLE
   VALIDATE;


-- Creating primary key on "ClientResponseFormatSetId"in table 'ClientResponseFormatSets'
ALTER TABLE "SYSTEM"."ClientResponseFormatSets"
ADD CONSTRAINT "PK_ClientResponseFormatSets"
   PRIMARY KEY ("ClientResponseFormatSetId" )
   ENABLE
   VALIDATE;


-- Creating primary key on "ClientResponseReportId"in table 'ClientResponseReports'
ALTER TABLE "SYSTEM"."ClientResponseReports"
ADD CONSTRAINT "PK_ClientResponseReports"
   PRIMARY KEY ("ClientResponseReportId" )
   ENABLE
   VALIDATE;


-- Creating primary key on "ClientStateId"in table 'ClientStates'
ALTER TABLE "SYSTEM"."ClientStates"
ADD CONSTRAINT "PK_ClientStates"
   PRIMARY KEY ("ClientStateId" )
   ENABLE
   VALIDATE;


-- Creating primary key on "ClientStatisticsDefaultsId"in table 'ClientStatisticsDefaults'
ALTER TABLE "SYSTEM"."ClientStatisticsDefaults"
ADD CONSTRAINT "PK_ClientStatisticsDefaults"
   PRIMARY KEY ("ClientStatisticsDefaultsId" )
   ENABLE
   VALIDATE;


-- Creating primary key on "ClientStatusId"in table 'ClientStatus'
ALTER TABLE "SYSTEM"."ClientStatus"
ADD CONSTRAINT "PK_ClientStatus"
   PRIMARY KEY ("ClientStatusId" )
   ENABLE
   VALIDATE;


-- Creating primary key on "ClientTypeId"in table 'ClientTypes'
ALTER TABLE "SYSTEM"."ClientTypes"
ADD CONSTRAINT "PK_ClientTypes"
   PRIMARY KEY ("ClientTypeId" )
   ENABLE
   VALIDATE;


-- Creating primary key on "ClientValidationSetId"in table 'ClientValidationSets'
ALTER TABLE "SYSTEM"."ClientValidationSets"
ADD CONSTRAINT "PK_ClientValidationSets"
   PRIMARY KEY ("ClientValidationSetId" )
   ENABLE
   VALIDATE;


-- Creating primary key on "ContactId"in table 'Contacts'
ALTER TABLE "SYSTEM"."Contacts"
ADD CONSTRAINT "PK_Contacts"
   PRIMARY KEY ("ContactId" )
   ENABLE
   VALIDATE;


-- Creating primary key on "ContactAddressId"in table 'ContactAddresses'
ALTER TABLE "SYSTEM"."ContactAddresses"
ADD CONSTRAINT "PK_ContactAddresses"
   PRIMARY KEY ("ContactAddressId" )
   ENABLE
   VALIDATE;


-- Creating primary key on "ContactEMailId"in table 'ContactEMails'
ALTER TABLE "SYSTEM"."ContactEMails"
ADD CONSTRAINT "PK_ContactEMails"
   PRIMARY KEY ("ContactEMailId" )
   ENABLE
   VALIDATE;


-- Creating primary key on "ContactPhoneNumberId"in table 'ContactPhoneNumbers'
ALTER TABLE "SYSTEM"."ContactPhoneNumbers"
ADD CONSTRAINT "PK_ContactPhoneNumbers"
   PRIMARY KEY ("ContactPhoneNumberId" )
   ENABLE
   VALIDATE;


-- Creating primary key on "ContactTypeId"in table 'ContactTypes'
ALTER TABLE "SYSTEM"."ContactTypes"
ADD CONSTRAINT "PK_ContactTypes"
   PRIMARY KEY ("ContactTypeId" )
   ENABLE
   VALIDATE;


-- Creating primary key on "CostingUnitId"in table 'CostingUnits'
ALTER TABLE "SYSTEM"."CostingUnits"
ADD CONSTRAINT "PK_CostingUnits"
   PRIMARY KEY ("CostingUnitId" )
   ENABLE
   VALIDATE;


-- Creating primary key on "CountryId"in table 'Countries'
ALTER TABLE "SYSTEM"."Countries"
ADD CONSTRAINT "PK_Countries"
   PRIMARY KEY ("CountryId" )
   ENABLE
   VALIDATE;


-- Creating primary key on "DataSrcBatchCostId"in table 'DataSrcBatchCosts'
ALTER TABLE "SYSTEM"."DataSrcBatchCosts"
ADD CONSTRAINT "PK_DataSrcBatchCosts"
   PRIMARY KEY ("DataSrcBatchCostId" )
   ENABLE
   VALIDATE;


-- Creating primary key on "DataSrcBatchRulesId"in table 'DataSrcBatchRules'
ALTER TABLE "SYSTEM"."DataSrcBatchRules"
ADD CONSTRAINT "PK_DataSrcBatchRules"
   PRIMARY KEY ("DataSrcBatchRulesId" )
   ENABLE
   VALIDATE;


-- Creating primary key on "DataSrcContactId"in table 'DataSrcContacts'
ALTER TABLE "SYSTEM"."DataSrcContacts"
ADD CONSTRAINT "PK_DataSrcContacts"
   PRIMARY KEY ("DataSrcContactId" )
   ENABLE
   VALIDATE;


-- Creating primary key on "DataSrcDateTimeFormatId", "StatusId", "DirectionId", "DateTimeFormatTypeId", "FormatString", "CreatedOn", "CreatedBy"in table 'DataSrcDateTimeFormats'
ALTER TABLE "SYSTEM"."DataSrcDateTimeFormats"
ADD CONSTRAINT "PK_DataSrcDateTimeFormats"
   PRIMARY KEY ("DataSrcDateTimeFormatId", "StatusId", "DirectionId", "DateTimeFormatTypeId", "FormatString", "CreatedOn", "CreatedBy" )
   ENABLE
   VALIDATE;


-- Creating primary key on "DataSrcDocumentId"in table 'DataSrcDocuments'
ALTER TABLE "SYSTEM"."DataSrcDocuments"
ADD CONSTRAINT "PK_DataSrcDocuments"
   PRIMARY KEY ("DataSrcDocumentId" )
   ENABLE
   VALIDATE;


-- Creating primary key on "DataSrcExtractSetId"in table 'DataSrcExtractSets'
ALTER TABLE "SYSTEM"."DataSrcExtractSets"
ADD CONSTRAINT "PK_DataSrcExtractSets"
   PRIMARY KEY ("DataSrcExtractSetId" )
   ENABLE
   VALIDATE;


-- Creating primary key on "DataSrcIdentificationSetId"in table 'DataSrcIdentificationSets'
ALTER TABLE "SYSTEM"."DataSrcIdentificationSets"
ADD CONSTRAINT "PK_DataSrcIdentificationSets"
   PRIMARY KEY ("DataSrcIdentificationSetId" )
   ENABLE
   VALIDATE;


-- Creating primary key on "DataSrcMakeFamilyId"in table 'DataSrcMakeFamilies'
ALTER TABLE "SYSTEM"."DataSrcMakeFamilies"
ADD CONSTRAINT "PK_DataSrcMakeFamilies"
   PRIMARY KEY ("DataSrcMakeFamilyId" )
   ENABLE
   VALIDATE;


-- Creating primary key on "DataSrcMakeFamilyMakeId"in table 'DataSrcMakeFamilyMakes'
ALTER TABLE "SYSTEM"."DataSrcMakeFamilyMakes"
ADD CONSTRAINT "PK_DataSrcMakeFamilyMakes"
   PRIMARY KEY ("DataSrcMakeFamilyMakeId" )
   ENABLE
   VALIDATE;


-- Creating primary key on "DataSrcMakeFamilyMemberId"in table 'DataSrcMakeFamilyMembers'
ALTER TABLE "SYSTEM"."DataSrcMakeFamilyMembers"
ADD CONSTRAINT "PK_DataSrcMakeFamilyMembers"
   PRIMARY KEY ("DataSrcMakeFamilyMemberId" )
   ENABLE
   VALIDATE;


-- Creating primary key on "DataSrcNotesId"in table 'DataSrcNotes'
ALTER TABLE "SYSTEM"."DataSrcNotes"
ADD CONSTRAINT "PK_DataSrcNotes"
   PRIMARY KEY ("DataSrcNotesId" )
   ENABLE
   VALIDATE;


-- Creating primary key on "DataSrcParseSetId"in table 'DataSrcParseSets'
ALTER TABLE "SYSTEM"."DataSrcParseSets"
ADD CONSTRAINT "PK_DataSrcParseSets"
   PRIMARY KEY ("DataSrcParseSetId" )
   ENABLE
   VALIDATE;


-- Creating primary key on "DataSrcRequestBatchId"in table 'DataSrcRequestBatches'
ALTER TABLE "SYSTEM"."DataSrcRequestBatches"
ADD CONSTRAINT "PK_DataSrcRequestBatches"
   PRIMARY KEY ("DataSrcRequestBatchId" )
   ENABLE
   VALIDATE;


-- Creating primary key on "DataSrcRequestBatchRecordId"in table 'DataSrcRequestBatchRecords'
ALTER TABLE "SYSTEM"."DataSrcRequestBatchRecords"
ADD CONSTRAINT "PK_DataSrcRequestBatchRecords"
   PRIMARY KEY ("DataSrcRequestBatchRecordId" )
   ENABLE
   VALIDATE;


-- Creating primary key on "DataSrcRequestBatchStatusId"in table 'DataSrcRequestBatchStatus'
ALTER TABLE "SYSTEM"."DataSrcRequestBatchStatus"
ADD CONSTRAINT "PK_DataSrcRequestBatchStatus"
   PRIMARY KEY ("DataSrcRequestBatchStatusId" )
   ENABLE
   VALIDATE;


-- Creating primary key on "DataSrcRequestControlId"in table 'DataSrcRequestControls'
ALTER TABLE "SYSTEM"."DataSrcRequestControls"
ADD CONSTRAINT "PK_DataSrcRequestControls"
   PRIMARY KEY ("DataSrcRequestControlId" )
   ENABLE
   VALIDATE;


-- Creating primary key on "DataSrcRequestFormatSetId"in table 'DataSrcRequestFormatSets'
ALTER TABLE "SYSTEM"."DataSrcRequestFormatSets"
ADD CONSTRAINT "PK_DataSrcRequestFormatSets"
   PRIMARY KEY ("DataSrcRequestFormatSetId" )
   ENABLE
   VALIDATE;


-- Creating primary key on "DataSrcRequestRuleSetId"in table 'DataSrcRequestRuleSets'
ALTER TABLE "SYSTEM"."DataSrcRequestRuleSets"
ADD CONSTRAINT "PK_DataSrcRequestRuleSets"
   PRIMARY KEY ("DataSrcRequestRuleSetId" )
   ENABLE
   VALIDATE;


-- Creating primary key on "DataSrcResponseBatchId"in table 'DataSrcResponseBatches'
ALTER TABLE "SYSTEM"."DataSrcResponseBatches"
ADD CONSTRAINT "PK_DataSrcResponseBatches"
   PRIMARY KEY ("DataSrcResponseBatchId" )
   ENABLE
   VALIDATE;


-- Creating primary key on "DataSrcResponseBatchRecordId"in table 'DataSrcResponseBatchRecords'
ALTER TABLE "SYSTEM"."DataSrcResponseBatchRecords"
ADD CONSTRAINT "PK_DataSrcResponseBatchRecords"
   PRIMARY KEY ("DataSrcResponseBatchRecordId" )
   ENABLE
   VALIDATE;


-- Creating primary key on "DataSrcResponseBatchStateId"in table 'DataSrcResponseBatchStates'
ALTER TABLE "SYSTEM"."DataSrcResponseBatchStates"
ADD CONSTRAINT "PK_DataSrcResponseBatchStates"
   PRIMARY KEY ("DataSrcResponseBatchStateId" )
   ENABLE
   VALIDATE;


-- Creating primary key on "DataSrcResponseBatchStatusId"in table 'DataSrcResponseBatchStatus'
ALTER TABLE "SYSTEM"."DataSrcResponseBatchStatus"
ADD CONSTRAINT "PK_DataSrcResponseBatchStatus"
   PRIMARY KEY ("DataSrcResponseBatchStatusId" )
   ENABLE
   VALIDATE;


-- Creating primary key on "DataSrcStateId"in table 'DataSrcStates'
ALTER TABLE "SYSTEM"."DataSrcStates"
ADD CONSTRAINT "PK_DataSrcStates"
   PRIMARY KEY ("DataSrcStateId" )
   ENABLE
   VALIDATE;


-- Creating primary key on "DataSrcStateNLETSId"in table 'DataSrcStateNLETS'
ALTER TABLE "SYSTEM"."DataSrcStateNLETS"
ADD CONSTRAINT "PK_DataSrcStateNLETS"
   PRIMARY KEY ("DataSrcStateNLETSId" )
   ENABLE
   VALIDATE;


-- Creating primary key on "DataSrcStatisticsDefaultsId"in table 'DataSrcStatisticsDefaults'
ALTER TABLE "SYSTEM"."DataSrcStatisticsDefaults"
ADD CONSTRAINT "PK_DataSrcStatisticsDefaults"
   PRIMARY KEY ("DataSrcStatisticsDefaultsId" )
   ENABLE
   VALIDATE;


-- Creating primary key on "DataSrcStatusId"in table 'DataSrcStatus'
ALTER TABLE "SYSTEM"."DataSrcStatus"
ADD CONSTRAINT "PK_DataSrcStatus"
   PRIMARY KEY ("DataSrcStatusId" )
   ENABLE
   VALIDATE;


-- Creating primary key on "DataSrcTypeId"in table 'DataSrcTypes'
ALTER TABLE "SYSTEM"."DataSrcTypes"
ADD CONSTRAINT "PK_DataSrcTypes"
   PRIMARY KEY ("DataSrcTypeId" )
   ENABLE
   VALIDATE;


-- Creating primary key on "DataSrcValidationSetId"in table 'DataSrcValidationSets'
ALTER TABLE "SYSTEM"."DataSrcValidationSets"
ADD CONSTRAINT "PK_DataSrcValidationSets"
   PRIMARY KEY ("DataSrcValidationSetId" )
   ENABLE
   VALIDATE;


-- Creating primary key on "DateTimeFormatTypeId"in table 'DateTimeFormatTypes'
ALTER TABLE "SYSTEM"."DateTimeFormatTypes"
ADD CONSTRAINT "PK_DateTimeFormatTypes"
   PRIMARY KEY ("DateTimeFormatTypeId" )
   ENABLE
   VALIDATE;


-- Creating primary key on "DirectionId"in table 'Directions'
ALTER TABLE "SYSTEM"."Directions"
ADD CONSTRAINT "PK_Directions"
   PRIMARY KEY ("DirectionId" )
   ENABLE
   VALIDATE;


-- Creating primary key on "DocumentId"in table 'Documents'
ALTER TABLE "SYSTEM"."Documents"
ADD CONSTRAINT "PK_Documents"
   PRIMARY KEY ("DocumentId" )
   ENABLE
   VALIDATE;


-- Creating primary key on "DocumentTypeId"in table 'DocumentTypes'
ALTER TABLE "SYSTEM"."DocumentTypes"
ADD CONSTRAINT "PK_DocumentTypes"
   PRIMARY KEY ("DocumentTypeId" )
   ENABLE
   VALIDATE;


-- Creating primary key on "EMailId"in table 'EMails'
ALTER TABLE "SYSTEM"."EMails"
ADD CONSTRAINT "PK_EMails"
   PRIMARY KEY ("EMailId" )
   ENABLE
   VALIDATE;


-- Creating primary key on "EMailTypeId"in table 'EMailTypes'
ALTER TABLE "SYSTEM"."EMailTypes"
ADD CONSTRAINT "PK_EMailTypes"
   PRIMARY KEY ("EMailTypeId" )
   ENABLE
   VALIDATE;


-- Creating primary key on "ExtractSetId"in table 'ExtractSets'
ALTER TABLE "SYSTEM"."ExtractSets"
ADD CONSTRAINT "PK_ExtractSets"
   PRIMARY KEY ("ExtractSetId" )
   ENABLE
   VALIDATE;


-- Creating primary key on "ExtractSetFieldId"in table 'ExtractSetFields'
ALTER TABLE "SYSTEM"."ExtractSetFields"
ADD CONSTRAINT "PK_ExtractSetFields"
   PRIMARY KEY ("ExtractSetFieldId" )
   ENABLE
   VALIDATE;


-- Creating primary key on "ExtractStepId"in table 'ExtractSteps'
ALTER TABLE "SYSTEM"."ExtractSteps"
ADD CONSTRAINT "PK_ExtractSteps"
   PRIMARY KEY ("ExtractStepId" )
   ENABLE
   VALIDATE;


-- Creating primary key on "IdentificationSetId"in table 'IdentificationSets'
ALTER TABLE "SYSTEM"."IdentificationSets"
ADD CONSTRAINT "PK_IdentificationSets"
   PRIMARY KEY ("IdentificationSetId" )
   ENABLE
   VALIDATE;


-- Creating primary key on "IdentificationStepId"in table 'IdentificationSteps'
ALTER TABLE "SYSTEM"."IdentificationSteps"
ADD CONSTRAINT "PK_IdentificationSteps"
   PRIMARY KEY ("IdentificationStepId" )
   ENABLE
   VALIDATE;


-- Creating primary key on "LoadRejectCountsId"in table 'LoadRejectCounts'
ALTER TABLE "SYSTEM"."LoadRejectCounts"
ADD CONSTRAINT "PK_LoadRejectCounts"
   PRIMARY KEY ("LoadRejectCountsId" )
   ENABLE
   VALIDATE;


-- Creating primary key on "LoadRejectTypeId"in table 'LoadRejectTypes'
ALTER TABLE "SYSTEM"."LoadRejectTypes"
ADD CONSTRAINT "PK_LoadRejectTypes"
   PRIMARY KEY ("LoadRejectTypeId" )
   ENABLE
   VALIDATE;


-- Creating primary key on "LoadRuleSetId"in table 'LoadRuleSets'
ALTER TABLE "SYSTEM"."LoadRuleSets"
ADD CONSTRAINT "PK_LoadRuleSets"
   PRIMARY KEY ("LoadRuleSetId" )
   ENABLE
   VALIDATE;


-- Creating primary key on "LoadRuleStepId"in table 'LoadRuleSteps'
ALTER TABLE "SYSTEM"."LoadRuleSteps"
ADD CONSTRAINT "PK_LoadRuleSteps"
   PRIMARY KEY ("LoadRuleStepId" )
   ENABLE
   VALIDATE;


-- Creating primary key on "NLETSTypeId"in table 'NLETSTypes'
ALTER TABLE "SYSTEM"."NLETSTypes"
ADD CONSTRAINT "PK_NLETSTypes"
   PRIMARY KEY ("NLETSTypeId" )
   ENABLE
   VALIDATE;


-- Creating primary key on "NoHitReasonId"in table 'NoHitReasons'
ALTER TABLE "SYSTEM"."NoHitReasons"
ADD CONSTRAINT "PK_NoHitReasons"
   PRIMARY KEY ("NoHitReasonId" )
   ENABLE
   VALIDATE;


-- Creating primary key on "NormalizedCategoryId"in table 'NormalizedCategories'
ALTER TABLE "SYSTEM"."NormalizedCategories"
ADD CONSTRAINT "PK_NormalizedCategories"
   PRIMARY KEY ("NormalizedCategoryId" )
   ENABLE
   VALIDATE;


-- Creating primary key on "NormalizedObjectId"in table 'NormalizedObjects'
ALTER TABLE "SYSTEM"."NormalizedObjects"
ADD CONSTRAINT "PK_NormalizedObjects"
   PRIMARY KEY ("NormalizedObjectId" )
   ENABLE
   VALIDATE;


-- Creating primary key on "NormalizedObjectDefId"in table 'NormalizedObjectDefs'
ALTER TABLE "SYSTEM"."NormalizedObjectDefs"
ADD CONSTRAINT "PK_NormalizedObjectDefs"
   PRIMARY KEY ("NormalizedObjectDefId" )
   ENABLE
   VALIDATE;


-- Creating primary key on "NotesId"in table 'Notes'
ALTER TABLE "SYSTEM"."Notes"
ADD CONSTRAINT "PK_Notes"
   PRIMARY KEY ("NotesId" )
   ENABLE
   VALIDATE;


-- Creating primary key on "NotesTypeId"in table 'NotesTypes'
ALTER TABLE "SYSTEM"."NotesTypes"
ADD CONSTRAINT "PK_NotesTypes"
   PRIMARY KEY ("NotesTypeId" )
   ENABLE
   VALIDATE;


-- Creating primary key on "NotSelectReasonId"in table 'NotSelectReasons'
ALTER TABLE "SYSTEM"."NotSelectReasons"
ADD CONSTRAINT "PK_NotSelectReasons"
   PRIMARY KEY ("NotSelectReasonId" )
   ENABLE
   VALIDATE;


-- Creating primary key on "OwnershipEntityId"in table 'OwnershipEntities'
ALTER TABLE "SYSTEM"."OwnershipEntities"
ADD CONSTRAINT "PK_OwnershipEntities"
   PRIMARY KEY ("OwnershipEntityId" )
   ENABLE
   VALIDATE;


-- Creating primary key on "ParamTypeId"in table 'ParamTypes'
ALTER TABLE "SYSTEM"."ParamTypes"
ADD CONSTRAINT "PK_ParamTypes"
   PRIMARY KEY ("ParamTypeId" )
   ENABLE
   VALIDATE;


-- Creating primary key on "ParseSetId"in table 'ParseSets'
ALTER TABLE "SYSTEM"."ParseSets"
ADD CONSTRAINT "PK_ParseSets"
   PRIMARY KEY ("ParseSetId" )
   ENABLE
   VALIDATE;


-- Creating primary key on "ParseStepId"in table 'ParseSteps'
ALTER TABLE "SYSTEM"."ParseSteps"
ADD CONSTRAINT "PK_ParseSteps"
   PRIMARY KEY ("ParseStepId" )
   ENABLE
   VALIDATE;


-- Creating primary key on "PhoneNumberId"in table 'PhoneNumbers'
ALTER TABLE "SYSTEM"."PhoneNumbers"
ADD CONSTRAINT "PK_PhoneNumbers"
   PRIMARY KEY ("PhoneNumberId" )
   ENABLE
   VALIDATE;


-- Creating primary key on "PhoneNumberTypeId"in table 'PhoneNumberTypes'
ALTER TABLE "SYSTEM"."PhoneNumberTypes"
ADD CONSTRAINT "PK_PhoneNumberTypes"
   PRIMARY KEY ("PhoneNumberTypeId" )
   ENABLE
   VALIDATE;


-- Creating primary key on "PlateReplaceSetId"in table 'PlateReplaceSets'
ALTER TABLE "SYSTEM"."PlateReplaceSets"
ADD CONSTRAINT "PK_PlateReplaceSets"
   PRIMARY KEY ("PlateReplaceSetId" )
   ENABLE
   VALIDATE;


-- Creating primary key on "PlateReplaceStepId"in table 'PlateReplaceSteps'
ALTER TABLE "SYSTEM"."PlateReplaceSteps"
ADD CONSTRAINT "PK_PlateReplaceSteps"
   PRIMARY KEY ("PlateReplaceStepId" )
   ENABLE
   VALIDATE;


-- Creating primary key on "PlateTypeId"in table 'PlateTypes'
ALTER TABLE "SYSTEM"."PlateTypes"
ADD CONSTRAINT "PK_PlateTypes"
   PRIMARY KEY ("PlateTypeId" )
   ENABLE
   VALIDATE;


-- Creating primary key on "PlateTypeClientXlatId"in table 'PlateTypeClientXlats'
ALTER TABLE "SYSTEM"."PlateTypeClientXlats"
ADD CONSTRAINT "PK_PlateTypeClientXlats"
   PRIMARY KEY ("PlateTypeClientXlatId" )
   ENABLE
   VALIDATE;


-- Creating primary key on "PlateTypeDataSrcXlatId"in table 'PlateTypeDataSrcXlats'
ALTER TABLE "SYSTEM"."PlateTypeDataSrcXlats"
ADD CONSTRAINT "PK_PlateTypeDataSrcXlats"
   PRIMARY KEY ("PlateTypeDataSrcXlatId" )
   ENABLE
   VALIDATE;


-- Creating primary key on "PlateValidationSetId"in table 'PlateValidationSets'
ALTER TABLE "SYSTEM"."PlateValidationSets"
ADD CONSTRAINT "PK_PlateValidationSets"
   PRIMARY KEY ("PlateValidationSetId" )
   ENABLE
   VALIDATE;


-- Creating primary key on "PlateValidationStepId"in table 'PlateValidationSteps'
ALTER TABLE "SYSTEM"."PlateValidationSteps"
ADD CONSTRAINT "PK_PlateValidationSteps"
   PRIMARY KEY ("PlateValidationStepId" )
   ENABLE
   VALIDATE;


-- Creating primary key on "RawRecordId"in table 'RawRecords'
ALTER TABLE "SYSTEM"."RawRecords"
ADD CONSTRAINT "PK_RawRecords"
   PRIMARY KEY ("RawRecordId" )
   ENABLE
   VALIDATE;


-- Creating primary key on "ReplacePatternTypeId"in table 'ReplacePatternTypes'
ALTER TABLE "SYSTEM"."ReplacePatternTypes"
ADD CONSTRAINT "PK_ReplacePatternTypes"
   PRIMARY KEY ("ReplacePatternTypeId" )
   ENABLE
   VALIDATE;


-- Creating primary key on "RequestBatchTypeId"in table 'RequestBatchTypes'
ALTER TABLE "SYSTEM"."RequestBatchTypes"
ADD CONSTRAINT "PK_RequestBatchTypes"
   PRIMARY KEY ("RequestBatchTypeId" )
   ENABLE
   VALIDATE;


-- Creating primary key on "RequestFormatSetId"in table 'RequestFormatSets'
ALTER TABLE "SYSTEM"."RequestFormatSets"
ADD CONSTRAINT "PK_RequestFormatSets"
   PRIMARY KEY ("RequestFormatSetId" )
   ENABLE
   VALIDATE;


-- Creating primary key on "RequestFormatStepId"in table 'RequestFormatSteps'
ALTER TABLE "SYSTEM"."RequestFormatSteps"
ADD CONSTRAINT "PK_RequestFormatSteps"
   PRIMARY KEY ("RequestFormatStepId" )
   ENABLE
   VALIDATE;


-- Creating primary key on "RequestRecordId"in table 'RequestRecords'
ALTER TABLE "SYSTEM"."RequestRecords"
ADD CONSTRAINT "PK_RequestRecords"
   PRIMARY KEY ("RequestRecordId" )
   ENABLE
   VALIDATE;


-- Creating primary key on "RequestResponseId"in table 'RequestResponses'
ALTER TABLE "SYSTEM"."RequestResponses"
ADD CONSTRAINT "PK_RequestResponses"
   PRIMARY KEY ("RequestResponseId" )
   ENABLE
   VALIDATE;


-- Creating primary key on "RequestRuleSetId"in table 'RequestRuleSets'
ALTER TABLE "SYSTEM"."RequestRuleSets"
ADD CONSTRAINT "PK_RequestRuleSets"
   PRIMARY KEY ("RequestRuleSetId" )
   ENABLE
   VALIDATE;


-- Creating primary key on "RequestRuleStepId"in table 'RequestRuleSteps'
ALTER TABLE "SYSTEM"."RequestRuleSteps"
ADD CONSTRAINT "PK_RequestRuleSteps"
   PRIMARY KEY ("RequestRuleStepId" )
   ENABLE
   VALIDATE;


-- Creating primary key on "RequestStatusId"in table 'RequestStatus'
ALTER TABLE "SYSTEM"."RequestStatus"
ADD CONSTRAINT "PK_RequestStatus"
   PRIMARY KEY ("RequestStatusId" )
   ENABLE
   VALIDATE;


-- Creating primary key on "ResponseBatchTypeId"in table 'ResponseBatchTypes'
ALTER TABLE "SYSTEM"."ResponseBatchTypes"
ADD CONSTRAINT "PK_ResponseBatchTypes"
   PRIMARY KEY ("ResponseBatchTypeId" )
   ENABLE
   VALIDATE;


-- Creating primary key on "ResponseFormatSetId"in table 'ResponseFormatSets'
ALTER TABLE "SYSTEM"."ResponseFormatSets"
ADD CONSTRAINT "PK_ResponseFormatSets"
   PRIMARY KEY ("ResponseFormatSetId" )
   ENABLE
   VALIDATE;


-- Creating primary key on "ResponseFormatStepId"in table 'ResponseFormatSteps'
ALTER TABLE "SYSTEM"."ResponseFormatSteps"
ADD CONSTRAINT "PK_ResponseFormatSteps"
   PRIMARY KEY ("ResponseFormatStepId" )
   ENABLE
   VALIDATE;


-- Creating primary key on "ResponseRecordId"in table 'ResponseRecords'
ALTER TABLE "SYSTEM"."ResponseRecords"
ADD CONSTRAINT "PK_ResponseRecords"
   PRIMARY KEY ("ResponseRecordId" )
   ENABLE
   VALIDATE;


-- Creating primary key on "ResponseRecordDataStatusId"in table 'ResponseRecordDataStatus'
ALTER TABLE "SYSTEM"."ResponseRecordDataStatus"
ADD CONSTRAINT "PK_ResponseRecordDataStatus"
   PRIMARY KEY ("ResponseRecordDataStatusId" )
   ENABLE
   VALIDATE;


-- Creating primary key on "ResponseRecordErrorId"in table 'ResponseRecordErrors'
ALTER TABLE "SYSTEM"."ResponseRecordErrors"
ADD CONSTRAINT "PK_ResponseRecordErrors"
   PRIMARY KEY ("ResponseRecordErrorId" )
   ENABLE
   VALIDATE;


-- Creating primary key on "ResponseRecordStatusId"in table 'ResponseRecordStatus'
ALTER TABLE "SYSTEM"."ResponseRecordStatus"
ADD CONSTRAINT "PK_ResponseRecordStatus"
   PRIMARY KEY ("ResponseRecordStatusId" )
   ENABLE
   VALIDATE;


-- Creating primary key on "ResponseStatusId"in table 'ResponseStatus'
ALTER TABLE "SYSTEM"."ResponseStatus"
ADD CONSTRAINT "PK_ResponseStatus"
   PRIMARY KEY ("ResponseStatusId" )
   ENABLE
   VALIDATE;


-- Creating primary key on "RuleActionId"in table 'RuleActions'
ALTER TABLE "SYSTEM"."RuleActions"
ADD CONSTRAINT "PK_RuleActions"
   PRIMARY KEY ("RuleActionId" )
   ENABLE
   VALIDATE;


-- Creating primary key on "RuleInstanceId"in table 'RuleInstances'
ALTER TABLE "SYSTEM"."RuleInstances"
ADD CONSTRAINT "PK_RuleInstances"
   PRIMARY KEY ("RuleInstanceId" )
   ENABLE
   VALIDATE;


-- Creating primary key on "RuleInstanceParamsId"in table 'RuleInstanceParams'
ALTER TABLE "SYSTEM"."RuleInstanceParams"
ADD CONSTRAINT "PK_RuleInstanceParams"
   PRIMARY KEY ("RuleInstanceParamsId" )
   ENABLE
   VALIDATE;


-- Creating primary key on "StateId"in table 'States'
ALTER TABLE "SYSTEM"."States"
ADD CONSTRAINT "PK_States"
   PRIMARY KEY ("StateId" )
   ENABLE
   VALIDATE;


-- Creating primary key on "StatePlateReplaceSetId"in table 'StatePlateReplaceSets'
ALTER TABLE "SYSTEM"."StatePlateReplaceSets"
ADD CONSTRAINT "PK_StatePlateReplaceSets"
   PRIMARY KEY ("StatePlateReplaceSetId" )
   ENABLE
   VALIDATE;


-- Creating primary key on "StatePlateValidationSetId"in table 'StatePlateValidationSets'
ALTER TABLE "SYSTEM"."StatePlateValidationSets"
ADD CONSTRAINT "PK_StatePlateValidationSets"
   PRIMARY KEY ("StatePlateValidationSetId" )
   ENABLE
   VALIDATE;


-- Creating primary key on "StatusId"in table 'Status'
ALTER TABLE "SYSTEM"."Status"
ADD CONSTRAINT "PK_Status"
   PRIMARY KEY ("StatusId" )
   ENABLE
   VALIDATE;


-- Creating primary key on "StepTypeId"in table 'StepTypes'
ALTER TABLE "SYSTEM"."StepTypes"
ADD CONSTRAINT "PK_StepTypes"
   PRIMARY KEY ("StepTypeId" )
   ENABLE
   VALIDATE;


-- Creating primary key on "TargetTypeId"in table 'TargetTypes'
ALTER TABLE "SYSTEM"."TargetTypes"
ADD CONSTRAINT "PK_TargetTypes"
   PRIMARY KEY ("TargetTypeId" )
   ENABLE
   VALIDATE;


-- Creating primary key on "TimeSpanTypeId"in table 'TimeSpanTypes'
ALTER TABLE "SYSTEM"."TimeSpanTypes"
ADD CONSTRAINT "PK_TimeSpanTypes"
   PRIMARY KEY ("TimeSpanTypeId" )
   ENABLE
   VALIDATE;


-- Creating primary key on "UserId"in table 'UserTables'
ALTER TABLE "SYSTEM"."UserTables"
ADD CONSTRAINT "PK_UserTables"
   PRIMARY KEY ("UserId" )
   ENABLE
   VALIDATE;


-- Creating primary key on "UserTypeId"in table 'UserTypes'
ALTER TABLE "SYSTEM"."UserTypes"
ADD CONSTRAINT "PK_UserTypes"
   PRIMARY KEY ("UserTypeId" )
   ENABLE
   VALIDATE;


-- Creating primary key on "ValidationOperatorId"in table 'ValidationOperators'
ALTER TABLE "SYSTEM"."ValidationOperators"
ADD CONSTRAINT "PK_ValidationOperators"
   PRIMARY KEY ("ValidationOperatorId" )
   ENABLE
   VALIDATE;


-- Creating primary key on "ValidationPatternTypeId"in table 'ValidationPatternTypes'
ALTER TABLE "SYSTEM"."ValidationPatternTypes"
ADD CONSTRAINT "PK_ValidationPatternTypes"
   PRIMARY KEY ("ValidationPatternTypeId" )
   ENABLE
   VALIDATE;


-- Creating primary key on "ValidationSetId"in table 'ValidationSets'
ALTER TABLE "SYSTEM"."ValidationSets"
ADD CONSTRAINT "PK_ValidationSets"
   PRIMARY KEY ("ValidationSetId" )
   ENABLE
   VALIDATE;


-- Creating primary key on "ValidationSetFieldId"in table 'ValidationSetFields'
ALTER TABLE "SYSTEM"."ValidationSetFields"
ADD CONSTRAINT "PK_ValidationSetFields"
   PRIMARY KEY ("ValidationSetFieldId" )
   ENABLE
   VALIDATE;


-- Creating primary key on "ValidationSetTypeId"in table 'ValidationSetTypes'
ALTER TABLE "SYSTEM"."ValidationSetTypes"
ADD CONSTRAINT "PK_ValidationSetTypes"
   PRIMARY KEY ("ValidationSetTypeId" )
   ENABLE
   VALIDATE;


-- Creating primary key on "ValidationTermId"in table 'ValidationTerms'
ALTER TABLE "SYSTEM"."ValidationTerms"
ADD CONSTRAINT "PK_ValidationTerms"
   PRIMARY KEY ("ValidationTermId" )
   ENABLE
   VALIDATE;


-- Creating primary key on "ValidationTypeId"in table 'ValidationTypes'
ALTER TABLE "SYSTEM"."ValidationTypes"
ADD CONSTRAINT "PK_ValidationTypes"
   PRIMARY KEY ("ValidationTypeId" )
   ENABLE
   VALIDATE;


-- Creating primary key on "VehicleMakeId"in table 'VehicleMakes'
ALTER TABLE "SYSTEM"."VehicleMakes"
ADD CONSTRAINT "PK_VehicleMakes"
   PRIMARY KEY ("VehicleMakeId" )
   ENABLE
   VALIDATE;


-- Creating primary key on "MajorVersion", "MinorVersion", "BuildVersion", "RevisionVersion", "ChangeDate"in table 'Versions'
ALTER TABLE "SYSTEM"."Versions"
ADD CONSTRAINT "PK_Versions"
   PRIMARY KEY ("MajorVersion", "MinorVersion", "BuildVersion", "RevisionVersion", "ChangeDate" )
   ENABLE
   VALIDATE;


-- Creating primary key on "PlateId"in table 'Plates'
ALTER TABLE "SYSTEM"."Plates"
ADD CONSTRAINT "PK_Plates"
   PRIMARY KEY ("PlateId" )
   ENABLE
   VALIDATE;


-- Creating primary key on "RequestRecordStatusId"in table 'RequestRecordStatus'
ALTER TABLE "SYSTEM"."RequestRecordStatus"
ADD CONSTRAINT "PK_RequestRecordStatus"
   PRIMARY KEY ("RequestRecordStatusId" )
   ENABLE
   VALIDATE;


-- Creating primary key on "NoHitsTypeId"in table 'NoHitsTypes'
ALTER TABLE "SYSTEM"."NoHitsTypes"
ADD CONSTRAINT "PK_NoHitsTypes"
   PRIMARY KEY ("NoHitsTypeId" )
   ENABLE
   VALIDATE;


-- Creating primary key on "DataSrcId"in table 'DataSrcs'
ALTER TABLE "SYSTEM"."DataSrcs"
ADD CONSTRAINT "PK_DataSrcs"
   PRIMARY KEY ("DataSrcId" )
   ENABLE
   VALIDATE;


-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on "ActionTypeId" in table 'ActionParams'
ALTER TABLE "SYSTEM"."ActionParams"
ADD CONSTRAINT "FK_ActionParams_ActionType"
   FOREIGN KEY ("ActionTypeId")
   REFERENCES "SYSTEM"."ActionTypes"
       ("ActionTypeId")
   ENABLE
   VALIDATE;

-- Creating index for FOREIGN KEY 'FK_ActionParams_ActionType'
CREATE INDEX "IX_FK_ActionParams_ActionType"
ON "SYSTEM"."ActionParams"
   ("ActionTypeId");

-- Creating foreign key on "ParamTypeId" in table 'ActionParams'
ALTER TABLE "SYSTEM"."ActionParams"
ADD CONSTRAINT "FK_ActionParams_ParamType"
   FOREIGN KEY ("ParamTypeId")
   REFERENCES "SYSTEM"."ParamTypes"
       ("ParamTypeId")
   ENABLE
   VALIDATE;

-- Creating index for FOREIGN KEY 'FK_ActionParams_ParamType'
CREATE INDEX "IX_FK_ActionParams_ParamType"
ON "SYSTEM"."ActionParams"
   ("ParamTypeId");

-- Creating foreign key on "ActionParamsId" in table 'RuleInstanceParams'
ALTER TABLE "SYSTEM"."RuleInstanceParams"
ADD CONSTRAINT "FK_RuleInstanceParams_ActionParams"
   FOREIGN KEY ("ActionParamsId")
   REFERENCES "SYSTEM"."ActionParams"
       ("ActionParamsId")
   ENABLE
   VALIDATE;

-- Creating index for FOREIGN KEY 'FK_RuleInstanceParams_ActionParams'
CREATE INDEX "IX_FK_RuleInstanceParams_ActionParams"
ON "SYSTEM"."RuleInstanceParams"
   ("ActionParamsId");

-- Creating foreign key on "CreatedBy" in table 'Addresses'
ALTER TABLE "SYSTEM"."Addresses"
ADD CONSTRAINT "FK_Address_User"
   FOREIGN KEY ("CreatedBy")
   REFERENCES "SYSTEM"."UserTables"
       ("UserId")
   ENABLE
   VALIDATE;

-- Creating index for FOREIGN KEY 'FK_Address_User'
CREATE INDEX "IX_FK_Address_User"
ON "SYSTEM"."Addresses"
   ("CreatedBy");

-- Creating foreign key on "AddressId" in table 'ContactAddresses'
ALTER TABLE "SYSTEM"."ContactAddresses"
ADD CONSTRAINT "FK_ContactAddress_Address"
   FOREIGN KEY ("AddressId")
   REFERENCES "SYSTEM"."Addresses"
       ("AddressId")
   ENABLE
   VALIDATE;

-- Creating index for FOREIGN KEY 'FK_ContactAddress_Address'
CREATE INDEX "IX_FK_ContactAddress_Address"
ON "SYSTEM"."ContactAddresses"
   ("AddressId");

-- Creating foreign key on "AddressId" in table 'OwnershipEntities'
ALTER TABLE "SYSTEM"."OwnershipEntities"
ADD CONSTRAINT "FK_OwnershipEntity_Address"
   FOREIGN KEY ("AddressId")
   REFERENCES "SYSTEM"."Addresses"
       ("AddressId")
   ENABLE
   VALIDATE;

-- Creating index for FOREIGN KEY 'FK_OwnershipEntity_Address'
CREATE INDEX "IX_FK_OwnershipEntity_Address"
ON "SYSTEM"."OwnershipEntities"
   ("AddressId");

-- Creating foreign key on "AddressTypeId" in table 'ContactAddresses'
ALTER TABLE "SYSTEM"."ContactAddresses"
ADD CONSTRAINT "FK_ContactAddress_AddressType"
   FOREIGN KEY ("AddressTypeId")
   REFERENCES "SYSTEM"."AddressTypes"
       ("AddressTypeId")
   ENABLE
   VALIDATE;

-- Creating index for FOREIGN KEY 'FK_ContactAddress_AddressType'
CREATE INDEX "IX_FK_ContactAddress_AddressType"
ON "SYSTEM"."ContactAddresses"
   ("AddressTypeId");

-- Creating foreign key on "BatchRuleTypeId" in table 'DataSrcBatchRules'
ALTER TABLE "SYSTEM"."DataSrcBatchRules"
ADD CONSTRAINT "FK_DataSrcBatchRules_BatchRuleType"
   FOREIGN KEY ("BatchRuleTypeId")
   REFERENCES "SYSTEM"."BatchRuleTypes"
       ("BatchRuleTypeId")
   ENABLE
   VALIDATE;

-- Creating index for FOREIGN KEY 'FK_DataSrcBatchRules_BatchRuleType'
CREATE INDEX "IX_FK_DataSrcBatchRules_BatchRuleType"
ON "SYSTEM"."DataSrcBatchRules"
   ("BatchRuleTypeId");

-- Creating foreign key on "BatchStatusClientRqstId" in table 'ClientRequestBatches'
ALTER TABLE "SYSTEM"."ClientRequestBatches"
ADD CONSTRAINT "FK_ClientRequestBatch_BatchStatusClientRqst"
   FOREIGN KEY ("BatchStatusClientRqstId")
   REFERENCES "SYSTEM"."BatchStatusClientRqsts"
       ("BatchStatusClientRqstId")
   ENABLE
   VALIDATE;

-- Creating index for FOREIGN KEY 'FK_ClientRequestBatch_BatchStatusClientRqst'
CREATE INDEX "IX_FK_ClientRequestBatch_BatchStatusClientRqst"
ON "SYSTEM"."ClientRequestBatches"
   ("BatchStatusClientRqstId");

-- Creating foreign key on "BatchStatusClientRqstId" in table 'ClientRequestBatchStatus'
ALTER TABLE "SYSTEM"."ClientRequestBatchStatus"
ADD CONSTRAINT "FK_ClientRequestBatchStatus_BatchStatusClientRqst"
   FOREIGN KEY ("BatchStatusClientRqstId")
   REFERENCES "SYSTEM"."BatchStatusClientRqsts"
       ("BatchStatusClientRqstId")
   ENABLE
   VALIDATE;

-- Creating index for FOREIGN KEY 'FK_ClientRequestBatchStatus_BatchStatusClientRqst'
CREATE INDEX "IX_FK_ClientRequestBatchStatus_BatchStatusClientRqst"
ON "SYSTEM"."ClientRequestBatchStatus"
   ("BatchStatusClientRqstId");

-- Creating foreign key on "BatchStatusClientRspId" in table 'ClientResponseBatches'
ALTER TABLE "SYSTEM"."ClientResponseBatches"
ADD CONSTRAINT "FK_ClientResponseBatch_BatchStatusClientRsp"
   FOREIGN KEY ("BatchStatusClientRspId")
   REFERENCES "SYSTEM"."BatchStatusClientRsps"
       ("BatchStatusClientRspId")
   ENABLE
   VALIDATE;

-- Creating index for FOREIGN KEY 'FK_ClientResponseBatch_BatchStatusClientRsp'
CREATE INDEX "IX_FK_ClientResponseBatch_BatchStatusClientRsp"
ON "SYSTEM"."ClientResponseBatches"
   ("BatchStatusClientRspId");

-- Creating foreign key on "BatchStatusClientRspId" in table 'ClientResponseBatchStatus'
ALTER TABLE "SYSTEM"."ClientResponseBatchStatus"
ADD CONSTRAINT "FK_ClientResponseBatchStatus_BatchStatusClientRsp"
   FOREIGN KEY ("BatchStatusClientRspId")
   REFERENCES "SYSTEM"."BatchStatusClientRsps"
       ("BatchStatusClientRspId")
   ENABLE
   VALIDATE;

-- Creating index for FOREIGN KEY 'FK_ClientResponseBatchStatus_BatchStatusClientRsp'
CREATE INDEX "IX_FK_ClientResponseBatchStatus_BatchStatusClientRsp"
ON "SYSTEM"."ClientResponseBatchStatus"
   ("BatchStatusClientRspId");

-- Creating foreign key on "BatchStatusDataSrcRqstId" in table 'DataSrcRequestBatches'
ALTER TABLE "SYSTEM"."DataSrcRequestBatches"
ADD CONSTRAINT "FK_DataSrcRequestBatch_BatchStatusDataSrcRqst"
   FOREIGN KEY ("BatchStatusDataSrcRqstId")
   REFERENCES "SYSTEM"."BatchStatusDataSrcRqsts"
       ("BatchStatusDataSrcRqstId")
   ENABLE
   VALIDATE;

-- Creating index for FOREIGN KEY 'FK_DataSrcRequestBatch_BatchStatusDataSrcRqst'
CREATE INDEX "IX_FK_DataSrcRequestBatch_BatchStatusDataSrcRqst"
ON "SYSTEM"."DataSrcRequestBatches"
   ("BatchStatusDataSrcRqstId");

-- Creating foreign key on "BatchStatusDataSrcRqstId" in table 'DataSrcRequestBatchStatus'
ALTER TABLE "SYSTEM"."DataSrcRequestBatchStatus"
ADD CONSTRAINT "FK_DataSrcRequestBatchStatus_BatchStatusDataSrcRqst"
   FOREIGN KEY ("BatchStatusDataSrcRqstId")
   REFERENCES "SYSTEM"."BatchStatusDataSrcRqsts"
       ("BatchStatusDataSrcRqstId")
   ENABLE
   VALIDATE;

-- Creating index for FOREIGN KEY 'FK_DataSrcRequestBatchStatus_BatchStatusDataSrcRqst'
CREATE INDEX "IX_FK_DataSrcRequestBatchStatus_BatchStatusDataSrcRqst"
ON "SYSTEM"."DataSrcRequestBatchStatus"
   ("BatchStatusDataSrcRqstId");

-- Creating foreign key on "BatchStatusDataSrcRspId" in table 'DataSrcResponseBatches'
ALTER TABLE "SYSTEM"."DataSrcResponseBatches"
ADD CONSTRAINT "FK_DataSrcResponseBatch_BatchStatusDataSrcRsp"
   FOREIGN KEY ("BatchStatusDataSrcRspId")
   REFERENCES "SYSTEM"."BatchStatusDataSrcRsps"
       ("BatchStatusDataSrcRspId")
   ENABLE
   VALIDATE;

-- Creating index for FOREIGN KEY 'FK_DataSrcResponseBatch_BatchStatusDataSrcRsp'
CREATE INDEX "IX_FK_DataSrcResponseBatch_BatchStatusDataSrcRsp"
ON "SYSTEM"."DataSrcResponseBatches"
   ("BatchStatusDataSrcRspId");

-- Creating foreign key on "BatchStatusDataSrcRspId" in table 'DataSrcResponseBatchStatus'
ALTER TABLE "SYSTEM"."DataSrcResponseBatchStatus"
ADD CONSTRAINT "FK_DataSrcResponseBatchStatus_BatchStatusDataSrcRsp"
   FOREIGN KEY ("BatchStatusDataSrcRspId")
   REFERENCES "SYSTEM"."BatchStatusDataSrcRsps"
       ("BatchStatusDataSrcRspId")
   ENABLE
   VALIDATE;

-- Creating index for FOREIGN KEY 'FK_DataSrcResponseBatchStatus_BatchStatusDataSrcRsp'
CREATE INDEX "IX_FK_DataSrcResponseBatchStatus_BatchStatusDataSrcRsp"
ON "SYSTEM"."DataSrcResponseBatchStatus"
   ("BatchStatusDataSrcRspId");

-- Creating foreign key on "ChargeTypeId" in table 'Clients'
ALTER TABLE "SYSTEM"."Clients"
ADD CONSTRAINT "FK_Client_ChargeType"
   FOREIGN KEY ("ChargeTypeId")
   REFERENCES "SYSTEM"."ChargeTypes"
       ("ChargeTypeId")
   ENABLE
   VALIDATE;

-- Creating index for FOREIGN KEY 'FK_Client_ChargeType'
CREATE INDEX "IX_FK_Client_ChargeType"
ON "SYSTEM"."Clients"
   ("ChargeTypeId");

-- Creating foreign key on "ClientId" in table 'ClientContacts'
ALTER TABLE "SYSTEM"."ClientContacts"
ADD CONSTRAINT "FK_ClientContact_Client"
   FOREIGN KEY ("ClientId")
   REFERENCES "SYSTEM"."Clients"
       ("ClientId")
   ENABLE
   VALIDATE;

-- Creating index for FOREIGN KEY 'FK_ClientContact_Client'
CREATE INDEX "IX_FK_ClientContact_Client"
ON "SYSTEM"."ClientContacts"
   ("ClientId");

-- Creating foreign key on "ContactId" in table 'ClientContacts'
ALTER TABLE "SYSTEM"."ClientContacts"
ADD CONSTRAINT "FK_ClientContact_Contact"
   FOREIGN KEY ("ContactId")
   REFERENCES "SYSTEM"."Contacts"
       ("ContactId")
   ENABLE
   VALIDATE;

-- Creating index for FOREIGN KEY 'FK_ClientContact_Contact'
CREATE INDEX "IX_FK_ClientContact_Contact"
ON "SYSTEM"."ClientContacts"
   ("ContactId");

-- Creating foreign key on "ContactTypeId" in table 'ClientContacts'
ALTER TABLE "SYSTEM"."ClientContacts"
ADD CONSTRAINT "FK_ClientContact_ContactType"
   FOREIGN KEY ("ContactTypeId")
   REFERENCES "SYSTEM"."ContactTypes"
       ("ContactTypeId")
   ENABLE
   VALIDATE;

-- Creating index for FOREIGN KEY 'FK_ClientContact_ContactType'
CREATE INDEX "IX_FK_ClientContact_ContactType"
ON "SYSTEM"."ClientContacts"
   ("ContactTypeId");

-- Creating foreign key on "CreatedBy" in table 'ClientContacts'
ALTER TABLE "SYSTEM"."ClientContacts"
ADD CONSTRAINT "FK_ClientContact_User"
   FOREIGN KEY ("CreatedBy")
   REFERENCES "SYSTEM"."UserTables"
       ("UserId")
   ENABLE
   VALIDATE;

-- Creating index for FOREIGN KEY 'FK_ClientContact_User'
CREATE INDEX "IX_FK_ClientContact_User"
ON "SYSTEM"."ClientContacts"
   ("CreatedBy");

-- Creating foreign key on "ClientId" in table 'ClientContracts'
ALTER TABLE "SYSTEM"."ClientContracts"
ADD CONSTRAINT "FK_ClientContract_Client"
   FOREIGN KEY ("ClientId")
   REFERENCES "SYSTEM"."Clients"
       ("ClientId")
   ENABLE
   VALIDATE;

-- Creating index for FOREIGN KEY 'FK_ClientContract_Client'
CREATE INDEX "IX_FK_ClientContract_Client"
ON "SYSTEM"."ClientContracts"
   ("ClientId");

-- Creating foreign key on "ClientId" in table 'ClientDataSrcOrders'
ALTER TABLE "SYSTEM"."ClientDataSrcOrders"
ADD CONSTRAINT "FK_ClientDataSrcOrder_Client"
   FOREIGN KEY ("ClientId")
   REFERENCES "SYSTEM"."Clients"
       ("ClientId")
   ENABLE
   VALIDATE;

-- Creating index for FOREIGN KEY 'FK_ClientDataSrcOrder_Client'
CREATE INDEX "IX_FK_ClientDataSrcOrder_Client"
ON "SYSTEM"."ClientDataSrcOrders"
   ("ClientId");

-- Creating foreign key on "StateId" in table 'ClientDataSrcOrders'
ALTER TABLE "SYSTEM"."ClientDataSrcOrders"
ADD CONSTRAINT "FK_ClientDataSrcOrder_State"
   FOREIGN KEY ("StateId")
   REFERENCES "SYSTEM"."States"
       ("StateId")
   ENABLE
   VALIDATE;

-- Creating index for FOREIGN KEY 'FK_ClientDataSrcOrder_State'
CREATE INDEX "IX_FK_ClientDataSrcOrder_State"
ON "SYSTEM"."ClientDataSrcOrders"
   ("StateId");

-- Creating foreign key on "DataSrcId" in table 'ClientDataSrcOrders'
ALTER TABLE "SYSTEM"."ClientDataSrcOrders"
ADD CONSTRAINT "FK_ClientDataSrcOrder_DataSrc"
   FOREIGN KEY ("DataSrcId")
   REFERENCES "SYSTEM"."DataSrcs"
       ("DataSrcId")
   ENABLE
   VALIDATE;

-- Creating index for FOREIGN KEY 'FK_ClientDataSrcOrder_DataSrc'
CREATE INDEX "IX_FK_ClientDataSrcOrder_DataSrc"
ON "SYSTEM"."ClientDataSrcOrders"
   ("DataSrcId");

-- Creating foreign key on "StatusId" in table 'Clients'
ALTER TABLE "SYSTEM"."Clients"
ADD CONSTRAINT "FK_Client_ClientStatus"
   FOREIGN KEY ("StatusId")
   REFERENCES "SYSTEM"."ClientDataSrcStatus"
       ("ClientDataSrcStatusId")
   ENABLE
   VALIDATE;

-- Creating index for FOREIGN KEY 'FK_Client_ClientStatus'
CREATE INDEX "IX_FK_Client_ClientStatus"
ON "SYSTEM"."Clients"
   ("StatusId");

-- Creating foreign key on "StatusId" in table 'ClientStatus'
ALTER TABLE "SYSTEM"."ClientStatus"
ADD CONSTRAINT "FK_ClientStatus_ClientDataSrcStatus"
   FOREIGN KEY ("StatusId")
   REFERENCES "SYSTEM"."ClientDataSrcStatus"
       ("ClientDataSrcStatusId")
   ENABLE
   VALIDATE;

-- Creating index for FOREIGN KEY 'FK_ClientStatus_ClientDataSrcStatus'
CREATE INDEX "IX_FK_ClientStatus_ClientDataSrcStatus"
ON "SYSTEM"."ClientStatus"
   ("StatusId");

-- Creating foreign key on "StatusId" in table 'DataSrcStatus'
ALTER TABLE "SYSTEM"."DataSrcStatus"
ADD CONSTRAINT "FK_DataSrcStatus_ClientDataSrcStatus"
   FOREIGN KEY ("StatusId")
   REFERENCES "SYSTEM"."ClientDataSrcStatus"
       ("ClientDataSrcStatusId")
   ENABLE
   VALIDATE;

-- Creating index for FOREIGN KEY 'FK_DataSrcStatus_ClientDataSrcStatus'
CREATE INDEX "IX_FK_DataSrcStatus_ClientDataSrcStatus"
ON "SYSTEM"."DataSrcStatus"
   ("StatusId");

-- Creating foreign key on "StatusId" in table 'DataSrcs'
ALTER TABLE "SYSTEM"."DataSrcs"
ADD CONSTRAINT "FK_DataSrc_ClientDataSrcStatus"
   FOREIGN KEY ("StatusId")
   REFERENCES "SYSTEM"."ClientDataSrcStatus"
       ("ClientDataSrcStatusId")
   ENABLE
   VALIDATE;

-- Creating index for FOREIGN KEY 'FK_DataSrc_ClientDataSrcStatus'
CREATE INDEX "IX_FK_DataSrc_ClientDataSrcStatus"
ON "SYSTEM"."DataSrcs"
   ("StatusId");

-- Creating foreign key on "ClientId" in table 'ClientDateTimeFormats'
ALTER TABLE "SYSTEM"."ClientDateTimeFormats"
ADD CONSTRAINT "FK_ClientDateTimeFormat_Client"
   FOREIGN KEY ("ClientId")
   REFERENCES "SYSTEM"."Clients"
       ("ClientId")
   ENABLE
   VALIDATE;

-- Creating index for FOREIGN KEY 'FK_ClientDateTimeFormat_Client'
CREATE INDEX "IX_FK_ClientDateTimeFormat_Client"
ON "SYSTEM"."ClientDateTimeFormats"
   ("ClientId");

-- Creating foreign key on "DateTimeFormatTypeId" in table 'ClientDateTimeFormats'
ALTER TABLE "SYSTEM"."ClientDateTimeFormats"
ADD CONSTRAINT "FK_ClientDateTimeFormat_DateTimeFormatType"
   FOREIGN KEY ("DateTimeFormatTypeId")
   REFERENCES "SYSTEM"."DateTimeFormatTypes"
       ("DateTimeFormatTypeId")
   ENABLE
   VALIDATE;

-- Creating index for FOREIGN KEY 'FK_ClientDateTimeFormat_DateTimeFormatType'
CREATE INDEX "IX_FK_ClientDateTimeFormat_DateTimeFormatType"
ON "SYSTEM"."ClientDateTimeFormats"
   ("DateTimeFormatTypeId");

-- Creating foreign key on "DirectionId" in table 'ClientDateTimeFormats'
ALTER TABLE "SYSTEM"."ClientDateTimeFormats"
ADD CONSTRAINT "FK_ClientDateTimeFormat_Direction"
   FOREIGN KEY ("DirectionId")
   REFERENCES "SYSTEM"."Directions"
       ("DirectionId")
   ENABLE
   VALIDATE;

-- Creating index for FOREIGN KEY 'FK_ClientDateTimeFormat_Direction'
CREATE INDEX "IX_FK_ClientDateTimeFormat_Direction"
ON "SYSTEM"."ClientDateTimeFormats"
   ("DirectionId");

-- Creating foreign key on "StatusId" in table 'ClientDateTimeFormats'
ALTER TABLE "SYSTEM"."ClientDateTimeFormats"
ADD CONSTRAINT "FK_ClientDateTimeFormat_Status"
   FOREIGN KEY ("StatusId")
   REFERENCES "SYSTEM"."Status"
       ("StatusId")
   ENABLE
   VALIDATE;

-- Creating index for FOREIGN KEY 'FK_ClientDateTimeFormat_Status'
CREATE INDEX "IX_FK_ClientDateTimeFormat_Status"
ON "SYSTEM"."ClientDateTimeFormats"
   ("StatusId");

-- Creating foreign key on "CreatedBy" in table 'ClientDateTimeFormats'
ALTER TABLE "SYSTEM"."ClientDateTimeFormats"
ADD CONSTRAINT "FK_ClientDateTimeFormat_UserTable"
   FOREIGN KEY ("CreatedBy")
   REFERENCES "SYSTEM"."UserTables"
       ("UserId")
   ENABLE
   VALIDATE;

-- Creating index for FOREIGN KEY 'FK_ClientDateTimeFormat_UserTable'
CREATE INDEX "IX_FK_ClientDateTimeFormat_UserTable"
ON "SYSTEM"."ClientDateTimeFormats"
   ("CreatedBy");

-- Creating foreign key on "ClientId" in table 'ClientDocuments'
ALTER TABLE "SYSTEM"."ClientDocuments"
ADD CONSTRAINT "FK_ClientDocument_Client"
   FOREIGN KEY ("ClientId")
   REFERENCES "SYSTEM"."Clients"
       ("ClientId")
   ENABLE
   VALIDATE;

-- Creating index for FOREIGN KEY 'FK_ClientDocument_Client'
CREATE INDEX "IX_FK_ClientDocument_Client"
ON "SYSTEM"."ClientDocuments"
   ("ClientId");

-- Creating foreign key on "DocumentId" in table 'ClientDocuments'
ALTER TABLE "SYSTEM"."ClientDocuments"
ADD CONSTRAINT "FK_ClientDocument_Document"
   FOREIGN KEY ("DocumentId")
   REFERENCES "SYSTEM"."Documents"
       ("DocumentId")
   ENABLE
   VALIDATE;

-- Creating index for FOREIGN KEY 'FK_ClientDocument_Document'
CREATE INDEX "IX_FK_ClientDocument_Document"
ON "SYSTEM"."ClientDocuments"
   ("DocumentId");

-- Creating foreign key on "DocumentTypeId" in table 'ClientDocuments'
ALTER TABLE "SYSTEM"."ClientDocuments"
ADD CONSTRAINT "FK_ClientDocument_DocumentType"
   FOREIGN KEY ("DocumentTypeId")
   REFERENCES "SYSTEM"."DocumentTypes"
       ("DocumentTypeId")
   ENABLE
   VALIDATE;

-- Creating index for FOREIGN KEY 'FK_ClientDocument_DocumentType'
CREATE INDEX "IX_FK_ClientDocument_DocumentType"
ON "SYSTEM"."ClientDocuments"
   ("DocumentTypeId");

-- Creating foreign key on "ClientId" in table 'ClientExtractSets'
ALTER TABLE "SYSTEM"."ClientExtractSets"
ADD CONSTRAINT "FK_ClientExtractSet_Client"
   FOREIGN KEY ("ClientId")
   REFERENCES "SYSTEM"."Clients"
       ("ClientId")
   ENABLE
   VALIDATE;

-- Creating index for FOREIGN KEY 'FK_ClientExtractSet_Client'
CREATE INDEX "IX_FK_ClientExtractSet_Client"
ON "SYSTEM"."ClientExtractSets"
   ("ClientId");

-- Creating foreign key on "ExtractSetId" in table 'ClientExtractSets'
ALTER TABLE "SYSTEM"."ClientExtractSets"
ADD CONSTRAINT "FK_ClientExtractSet_ExtractSet"
   FOREIGN KEY ("ExtractSetId")
   REFERENCES "SYSTEM"."ExtractSets"
       ("ExtractSetId")
   ENABLE
   VALIDATE;

-- Creating index for FOREIGN KEY 'FK_ClientExtractSet_ExtractSet'
CREATE INDEX "IX_FK_ClientExtractSet_ExtractSet"
ON "SYSTEM"."ClientExtractSets"
   ("ExtractSetId");

-- Creating foreign key on "StatusId" in table 'ClientExtractSets'
ALTER TABLE "SYSTEM"."ClientExtractSets"
ADD CONSTRAINT "FK_ClientExtractSet_Status"
   FOREIGN KEY ("StatusId")
   REFERENCES "SYSTEM"."Status"
       ("StatusId")
   ENABLE
   VALIDATE;

-- Creating index for FOREIGN KEY 'FK_ClientExtractSet_Status'
CREATE INDEX "IX_FK_ClientExtractSet_Status"
ON "SYSTEM"."ClientExtractSets"
   ("StatusId");

-- Creating foreign key on "CreatedBy" in table 'ClientExtractSets'
ALTER TABLE "SYSTEM"."ClientExtractSets"
ADD CONSTRAINT "FK_ClientExtractSet_User"
   FOREIGN KEY ("CreatedBy")
   REFERENCES "SYSTEM"."UserTables"
       ("UserId")
   ENABLE
   VALIDATE;

-- Creating index for FOREIGN KEY 'FK_ClientExtractSet_User'
CREATE INDEX "IX_FK_ClientExtractSet_User"
ON "SYSTEM"."ClientExtractSets"
   ("CreatedBy");

-- Creating foreign key on "ClientId" in table 'ClientInvoices'
ALTER TABLE "SYSTEM"."ClientInvoices"
ADD CONSTRAINT "FK_ClientInvoice_Client"
   FOREIGN KEY ("ClientId")
   REFERENCES "SYSTEM"."Clients"
       ("ClientId")
   ENABLE
   VALIDATE;

-- Creating index for FOREIGN KEY 'FK_ClientInvoice_Client'
CREATE INDEX "IX_FK_ClientInvoice_Client"
ON "SYSTEM"."ClientInvoices"
   ("ClientId");

-- Creating foreign key on "DocumentId" in table 'ClientInvoices'
ALTER TABLE "SYSTEM"."ClientInvoices"
ADD CONSTRAINT "FK_ClientInvoice_Document"
   FOREIGN KEY ("DocumentId")
   REFERENCES "SYSTEM"."Documents"
       ("DocumentId")
   ENABLE
   VALIDATE;

-- Creating index for FOREIGN KEY 'FK_ClientInvoice_Document'
CREATE INDEX "IX_FK_ClientInvoice_Document"
ON "SYSTEM"."ClientInvoices"
   ("DocumentId");

-- Creating foreign key on "ClientId" in table 'ClientMakeFamilies'
ALTER TABLE "SYSTEM"."ClientMakeFamilies"
ADD CONSTRAINT "FK_ClientMakeFamily_Client"
   FOREIGN KEY ("ClientId")
   REFERENCES "SYSTEM"."Clients"
       ("ClientId")
   ENABLE
   VALIDATE;

-- Creating index for FOREIGN KEY 'FK_ClientMakeFamily_Client'
CREATE INDEX "IX_FK_ClientMakeFamily_Client"
ON "SYSTEM"."ClientMakeFamilies"
   ("ClientId");

-- Creating foreign key on "CreatedBy" in table 'ClientMakeFamilies'
ALTER TABLE "SYSTEM"."ClientMakeFamilies"
ADD CONSTRAINT "FK_ClientMakeFamily_UserTable"
   FOREIGN KEY ("CreatedBy")
   REFERENCES "SYSTEM"."UserTables"
       ("UserId")
   ENABLE
   VALIDATE;

-- Creating index for FOREIGN KEY 'FK_ClientMakeFamily_UserTable'
CREATE INDEX "IX_FK_ClientMakeFamily_UserTable"
ON "SYSTEM"."ClientMakeFamilies"
   ("CreatedBy");

-- Creating foreign key on "ClientMakeFamilyId" in table 'ClientMakeFamilyMakes'
ALTER TABLE "SYSTEM"."ClientMakeFamilyMakes"
ADD CONSTRAINT "FK_ClientMakeFamilyMake_ClientMakeFamily"
   FOREIGN KEY ("ClientMakeFamilyId")
   REFERENCES "SYSTEM"."ClientMakeFamilies"
       ("ClientMakeFamilyId")
   ENABLE
   VALIDATE;

-- Creating index for FOREIGN KEY 'FK_ClientMakeFamilyMake_ClientMakeFamily'
CREATE INDEX "IX_FK_ClientMakeFamilyMake_ClientMakeFamily"
ON "SYSTEM"."ClientMakeFamilyMakes"
   ("ClientMakeFamilyId");

-- Creating foreign key on "ClientMakeFamilyId" in table 'ClientMakeFamilyMembers'
ALTER TABLE "SYSTEM"."ClientMakeFamilyMembers"
ADD CONSTRAINT "FK_ClientMakeFamilyMember_ClientMakeFamily"
   FOREIGN KEY ("ClientMakeFamilyId")
   REFERENCES "SYSTEM"."ClientMakeFamilies"
       ("ClientMakeFamilyId")
   ENABLE
   VALIDATE;

-- Creating index for FOREIGN KEY 'FK_ClientMakeFamilyMember_ClientMakeFamily'
CREATE INDEX "IX_FK_ClientMakeFamilyMember_ClientMakeFamily"
ON "SYSTEM"."ClientMakeFamilyMembers"
   ("ClientMakeFamilyId");

-- Creating foreign key on "ClientId" in table 'ClientNotes'
ALTER TABLE "SYSTEM"."ClientNotes"
ADD CONSTRAINT "FK_ClientNotes_Client"
   FOREIGN KEY ("ClientId")
   REFERENCES "SYSTEM"."Clients"
       ("ClientId")
   ENABLE
   VALIDATE;

-- Creating index for FOREIGN KEY 'FK_ClientNotes_Client'
CREATE INDEX "IX_FK_ClientNotes_Client"
ON "SYSTEM"."ClientNotes"
   ("ClientId");

-- Creating foreign key on "NotesId" in table 'ClientNotes'
ALTER TABLE "SYSTEM"."ClientNotes"
ADD CONSTRAINT "FK_ClientNotes_Notes"
   FOREIGN KEY ("NotesId")
   REFERENCES "SYSTEM"."Notes"
       ("NotesId")
   ENABLE
   VALIDATE;

-- Creating index for FOREIGN KEY 'FK_ClientNotes_Notes'
CREATE INDEX "IX_FK_ClientNotes_Notes"
ON "SYSTEM"."ClientNotes"
   ("NotesId");

-- Creating foreign key on "NotesTypeId" in table 'ClientNotes'
ALTER TABLE "SYSTEM"."ClientNotes"
ADD CONSTRAINT "FK_ClientNotes_NotesType"
   FOREIGN KEY ("NotesTypeId")
   REFERENCES "SYSTEM"."NotesTypes"
       ("NotesTypeId")
   ENABLE
   VALIDATE;

-- Creating index for FOREIGN KEY 'FK_ClientNotes_NotesType'
CREATE INDEX "IX_FK_ClientNotes_NotesType"
ON "SYSTEM"."ClientNotes"
   ("NotesTypeId");

-- Creating foreign key on "ClientId" in table 'ClientParseSets'
ALTER TABLE "SYSTEM"."ClientParseSets"
ADD CONSTRAINT "FK_ClientParseSet_Client"
   FOREIGN KEY ("ClientId")
   REFERENCES "SYSTEM"."Clients"
       ("ClientId")
   ENABLE
   VALIDATE;

-- Creating index for FOREIGN KEY 'FK_ClientParseSet_Client'
CREATE INDEX "IX_FK_ClientParseSet_Client"
ON "SYSTEM"."ClientParseSets"
   ("ClientId");

-- Creating foreign key on "ParseSetId" in table 'ClientParseSets'
ALTER TABLE "SYSTEM"."ClientParseSets"
ADD CONSTRAINT "FK_ClientParseSet_ParseSet"
   FOREIGN KEY ("ParseSetId")
   REFERENCES "SYSTEM"."ParseSets"
       ("ParseSetId")
   ENABLE
   VALIDATE;

-- Creating index for FOREIGN KEY 'FK_ClientParseSet_ParseSet'
CREATE INDEX "IX_FK_ClientParseSet_ParseSet"
ON "SYSTEM"."ClientParseSets"
   ("ParseSetId");

-- Creating foreign key on "StatusId" in table 'ClientParseSets'
ALTER TABLE "SYSTEM"."ClientParseSets"
ADD CONSTRAINT "FK_ClientParseSet_Status"
   FOREIGN KEY ("StatusId")
   REFERENCES "SYSTEM"."Status"
       ("StatusId")
   ENABLE
   VALIDATE;

-- Creating index for FOREIGN KEY 'FK_ClientParseSet_Status'
CREATE INDEX "IX_FK_ClientParseSet_Status"
ON "SYSTEM"."ClientParseSets"
   ("StatusId");

-- Creating foreign key on "CreatedBy" in table 'ClientParseSets'
ALTER TABLE "SYSTEM"."ClientParseSets"
ADD CONSTRAINT "FK_ClientParseSet_User"
   FOREIGN KEY ("CreatedBy")
   REFERENCES "SYSTEM"."UserTables"
       ("UserId")
   ENABLE
   VALIDATE;

-- Creating index for FOREIGN KEY 'FK_ClientParseSet_User'
CREATE INDEX "IX_FK_ClientParseSet_User"
ON "SYSTEM"."ClientParseSets"
   ("CreatedBy");

-- Creating foreign key on "ClientRequestBatchId" in table 'ClientRequestBatchRecords'
ALTER TABLE "SYSTEM"."ClientRequestBatchRecords"
ADD CONSTRAINT "FK_ClientRequestBatchRecord_ClientRequestBatch"
   FOREIGN KEY ("ClientRequestBatchId")
   REFERENCES "SYSTEM"."ClientRequestBatches"
       ("ClientRequestBatchId")
   ENABLE
   VALIDATE;

-- Creating index for FOREIGN KEY 'FK_ClientRequestBatchRecord_ClientRequestBatch'
CREATE INDEX "IX_FK_ClientRequestBatchRecord_ClientRequestBatch"
ON "SYSTEM"."ClientRequestBatchRecords"
   ("ClientRequestBatchId");

-- Creating foreign key on "RawRecordId" in table 'ClientRequestBatchRecords'
ALTER TABLE "SYSTEM"."ClientRequestBatchRecords"
ADD CONSTRAINT "FK_ClientRequestBatchRecord_RawRecord"
   FOREIGN KEY ("RawRecordId")
   REFERENCES "SYSTEM"."RawRecords"
       ("RawRecordId")
   ENABLE
   VALIDATE;

-- Creating index for FOREIGN KEY 'FK_ClientRequestBatchRecord_RawRecord'
CREATE INDEX "IX_FK_ClientRequestBatchRecord_RawRecord"
ON "SYSTEM"."ClientRequestBatchRecords"
   ("RawRecordId");

-- Creating foreign key on "RequestRecordId" in table 'ClientRequestBatchRecords'
ALTER TABLE "SYSTEM"."ClientRequestBatchRecords"
ADD CONSTRAINT "FK_ClientRequestBatchRecord_RequestRecord"
   FOREIGN KEY ("RequestRecordId")
   REFERENCES "SYSTEM"."RequestRecords"
       ("RequestRecordId")
   ENABLE
   VALIDATE;

-- Creating index for FOREIGN KEY 'FK_ClientRequestBatchRecord_RequestRecord'
CREATE INDEX "IX_FK_ClientRequestBatchRecord_RequestRecord"
ON "SYSTEM"."ClientRequestBatchRecords"
   ("RequestRecordId");

-- Creating foreign key on "ClientRequestBatchStateId" in table 'ClientRequestBatches'
ALTER TABLE "SYSTEM"."ClientRequestBatches"
ADD CONSTRAINT "FK_ClientRequestBatch_ClientRequestBatchState"
   FOREIGN KEY ("ClientRequestBatchStateId")
   REFERENCES "SYSTEM"."ClientRequestBatchStates"
       ("ClientRequestBatchStateId")
   ENABLE
   VALIDATE;

-- Creating index for FOREIGN KEY 'FK_ClientRequestBatch_ClientRequestBatchState'
CREATE INDEX "IX_FK_ClientRequestBatch_ClientRequestBatchState"
ON "SYSTEM"."ClientRequestBatches"
   ("ClientRequestBatchStateId");

-- Creating foreign key on "ClientResponseBatchId" in table 'ClientResponseBatchRecords'
ALTER TABLE "SYSTEM"."ClientResponseBatchRecords"
ADD CONSTRAINT "FK_ClientResponseBatchRecord_ClientResponseBatch"
   FOREIGN KEY ("ClientResponseBatchId")
   REFERENCES "SYSTEM"."ClientResponseBatches"
       ("ClientResponseBatchId")
   ENABLE
   VALIDATE;

-- Creating index for FOREIGN KEY 'FK_ClientResponseBatchRecord_ClientResponseBatch'
CREATE INDEX "IX_FK_ClientResponseBatchRecord_ClientResponseBatch"
ON "SYSTEM"."ClientResponseBatchRecords"
   ("ClientResponseBatchId");

-- Creating foreign key on "RawRecordId" in table 'ClientResponseBatchRecords'
ALTER TABLE "SYSTEM"."ClientResponseBatchRecords"
ADD CONSTRAINT "FK_ClientResponseBatchRecord_RawRecord"
   FOREIGN KEY ("RawRecordId")
   REFERENCES "SYSTEM"."RawRecords"
       ("RawRecordId")
   ENABLE
   VALIDATE;

-- Creating index for FOREIGN KEY 'FK_ClientResponseBatchRecord_RawRecord'
CREATE INDEX "IX_FK_ClientResponseBatchRecord_RawRecord"
ON "SYSTEM"."ClientResponseBatchRecords"
   ("RawRecordId");

-- Creating foreign key on "RequestRecordId" in table 'ClientResponseBatchRecords'
ALTER TABLE "SYSTEM"."ClientResponseBatchRecords"
ADD CONSTRAINT "FK_ClientResponseBatchRecord_RequestRecord"
   FOREIGN KEY ("RequestRecordId")
   REFERENCES "SYSTEM"."RequestRecords"
       ("RequestRecordId")
   ENABLE
   VALIDATE;

-- Creating index for FOREIGN KEY 'FK_ClientResponseBatchRecord_RequestRecord'
CREATE INDEX "IX_FK_ClientResponseBatchRecord_RequestRecord"
ON "SYSTEM"."ClientResponseBatchRecords"
   ("RequestRecordId");

-- Creating foreign key on "ResponseFormatSetId" in table 'ClientResponseBatchRecords'
ALTER TABLE "SYSTEM"."ClientResponseBatchRecords"
ADD CONSTRAINT "FK_ClientResponseBatchRecord_ResponseFormatSet"
   FOREIGN KEY ("ResponseFormatSetId")
   REFERENCES "SYSTEM"."ResponseFormatSets"
       ("ResponseFormatSetId")
   ENABLE
   VALIDATE;

-- Creating index for FOREIGN KEY 'FK_ClientResponseBatchRecord_ResponseFormatSet'
CREATE INDEX "IX_FK_ClientResponseBatchRecord_ResponseFormatSet"
ON "SYSTEM"."ClientResponseBatchRecords"
   ("ResponseFormatSetId");

-- Creating foreign key on "ClientId" in table 'ClientResponseControls'
ALTER TABLE "SYSTEM"."ClientResponseControls"
ADD CONSTRAINT "FK_ClientResponseControl_Client"
   FOREIGN KEY ("ClientId")
   REFERENCES "SYSTEM"."Clients"
       ("ClientId")
   ENABLE
   VALIDATE;

-- Creating index for FOREIGN KEY 'FK_ClientResponseControl_Client'
CREATE INDEX "IX_FK_ClientResponseControl_Client"
ON "SYSTEM"."ClientResponseControls"
   ("ClientId");

-- Creating foreign key on "ClientId" in table 'ClientResponseFormatSets'
ALTER TABLE "SYSTEM"."ClientResponseFormatSets"
ADD CONSTRAINT "FK_ClientResponseFormatSet_Client"
   FOREIGN KEY ("ClientId")
   REFERENCES "SYSTEM"."Clients"
       ("ClientId")
   ENABLE
   VALIDATE;

-- Creating index for FOREIGN KEY 'FK_ClientResponseFormatSet_Client'
CREATE INDEX "IX_FK_ClientResponseFormatSet_Client"
ON "SYSTEM"."ClientResponseFormatSets"
   ("ClientId");

-- Creating foreign key on "ResponseFormatSetId" in table 'ClientResponseFormatSets'
ALTER TABLE "SYSTEM"."ClientResponseFormatSets"
ADD CONSTRAINT "FK_ClientResponseFormatSet_ResponseFormatSet"
   FOREIGN KEY ("ResponseFormatSetId")
   REFERENCES "SYSTEM"."ResponseFormatSets"
       ("ResponseFormatSetId")
   ENABLE
   VALIDATE;

-- Creating index for FOREIGN KEY 'FK_ClientResponseFormatSet_ResponseFormatSet'
CREATE INDEX "IX_FK_ClientResponseFormatSet_ResponseFormatSet"
ON "SYSTEM"."ClientResponseFormatSets"
   ("ResponseFormatSetId");

-- Creating foreign key on "StatusId" in table 'ClientResponseFormatSets'
ALTER TABLE "SYSTEM"."ClientResponseFormatSets"
ADD CONSTRAINT "FK_ClientResponseFormatSet_Status"
   FOREIGN KEY ("StatusId")
   REFERENCES "SYSTEM"."Status"
       ("StatusId")
   ENABLE
   VALIDATE;

-- Creating index for FOREIGN KEY 'FK_ClientResponseFormatSet_Status'
CREATE INDEX "IX_FK_ClientResponseFormatSet_Status"
ON "SYSTEM"."ClientResponseFormatSets"
   ("StatusId");

-- Creating foreign key on "CreatedBy" in table 'ClientResponseFormatSets'
ALTER TABLE "SYSTEM"."ClientResponseFormatSets"
ADD CONSTRAINT "FK_ClientResponseFormatSet_User"
   FOREIGN KEY ("CreatedBy")
   REFERENCES "SYSTEM"."UserTables"
       ("UserId")
   ENABLE
   VALIDATE;

-- Creating index for FOREIGN KEY 'FK_ClientResponseFormatSet_User'
CREATE INDEX "IX_FK_ClientResponseFormatSet_User"
ON "SYSTEM"."ClientResponseFormatSets"
   ("CreatedBy");

-- Creating foreign key on "ClientId" in table 'ClientResponseReports'
ALTER TABLE "SYSTEM"."ClientResponseReports"
ADD CONSTRAINT "FK_ClientResponseReport_Client"
   FOREIGN KEY ("ClientId")
   REFERENCES "SYSTEM"."Clients"
       ("ClientId")
   ENABLE
   VALIDATE;

-- Creating index for FOREIGN KEY 'FK_ClientResponseReport_Client'
CREATE INDEX "IX_FK_ClientResponseReport_Client"
ON "SYSTEM"."ClientResponseReports"
   ("ClientId");

-- Creating foreign key on "ClientId" in table 'ClientStates'
ALTER TABLE "SYSTEM"."ClientStates"
ADD CONSTRAINT "FK_ClientState_Client"
   FOREIGN KEY ("ClientId")
   REFERENCES "SYSTEM"."Clients"
       ("ClientId")
   ENABLE
   VALIDATE;

-- Creating index for FOREIGN KEY 'FK_ClientState_Client'
CREATE INDEX "IX_FK_ClientState_Client"
ON "SYSTEM"."ClientStates"
   ("ClientId");

-- Creating foreign key on "StateId" in table 'ClientStates'
ALTER TABLE "SYSTEM"."ClientStates"
ADD CONSTRAINT "FK_ClientState_State"
   FOREIGN KEY ("StateId")
   REFERENCES "SYSTEM"."States"
       ("StateId")
   ENABLE
   VALIDATE;

-- Creating index for FOREIGN KEY 'FK_ClientState_State'
CREATE INDEX "IX_FK_ClientState_State"
ON "SYSTEM"."ClientStates"
   ("StateId");

-- Creating foreign key on "CreatedBy" in table 'ClientStates'
ALTER TABLE "SYSTEM"."ClientStates"
ADD CONSTRAINT "FK_ClientState_UserTable"
   FOREIGN KEY ("CreatedBy")
   REFERENCES "SYSTEM"."UserTables"
       ("UserId")
   ENABLE
   VALIDATE;

-- Creating index for FOREIGN KEY 'FK_ClientState_UserTable'
CREATE INDEX "IX_FK_ClientState_UserTable"
ON "SYSTEM"."ClientStates"
   ("CreatedBy");

-- Creating foreign key on "ModifiedBy" in table 'ClientStates'
ALTER TABLE "SYSTEM"."ClientStates"
ADD CONSTRAINT "FK_ClientState_UserTable1"
   FOREIGN KEY ("ModifiedBy")
   REFERENCES "SYSTEM"."UserTables"
       ("UserId")
   ENABLE
   VALIDATE;

-- Creating index for FOREIGN KEY 'FK_ClientState_UserTable1'
CREATE INDEX "IX_FK_ClientState_UserTable1"
ON "SYSTEM"."ClientStates"
   ("ModifiedBy");

-- Creating foreign key on "ClientId" in table 'ClientStatisticsDefaults'
ALTER TABLE "SYSTEM"."ClientStatisticsDefaults"
ADD CONSTRAINT "FK_ClientStatisticsDefaults_Client"
   FOREIGN KEY ("ClientId")
   REFERENCES "SYSTEM"."Clients"
       ("ClientId")
   ENABLE
   VALIDATE;

-- Creating index for FOREIGN KEY 'FK_ClientStatisticsDefaults_Client'
CREATE INDEX "IX_FK_ClientStatisticsDefaults_Client"
ON "SYSTEM"."ClientStatisticsDefaults"
   ("ClientId");

-- Creating foreign key on "ClientId" in table 'ClientStatus'
ALTER TABLE "SYSTEM"."ClientStatus"
ADD CONSTRAINT "FK_ClientStatus_Client"
   FOREIGN KEY ("ClientId")
   REFERENCES "SYSTEM"."Clients"
       ("ClientId")
   ENABLE
   VALIDATE;

-- Creating index for FOREIGN KEY 'FK_ClientStatus_Client'
CREATE INDEX "IX_FK_ClientStatus_Client"
ON "SYSTEM"."ClientStatus"
   ("ClientId");

-- Creating foreign key on "ClientTypeId" in table 'Clients'
ALTER TABLE "SYSTEM"."Clients"
ADD CONSTRAINT "FK_Client_ClientType"
   FOREIGN KEY ("ClientTypeId")
   REFERENCES "SYSTEM"."ClientTypes"
       ("ClientTypeId")
   ENABLE
   VALIDATE;

-- Creating index for FOREIGN KEY 'FK_Client_ClientType'
CREATE INDEX "IX_FK_Client_ClientType"
ON "SYSTEM"."Clients"
   ("ClientTypeId");

-- Creating foreign key on "ClientId" in table 'ClientValidationSets'
ALTER TABLE "SYSTEM"."ClientValidationSets"
ADD CONSTRAINT "FK_ClientValidationSet_Client"
   FOREIGN KEY ("ClientId")
   REFERENCES "SYSTEM"."Clients"
       ("ClientId")
   ENABLE
   VALIDATE;

-- Creating index for FOREIGN KEY 'FK_ClientValidationSet_Client'
CREATE INDEX "IX_FK_ClientValidationSet_Client"
ON "SYSTEM"."ClientValidationSets"
   ("ClientId");

-- Creating foreign key on "StatusId" in table 'ClientValidationSets'
ALTER TABLE "SYSTEM"."ClientValidationSets"
ADD CONSTRAINT "FK_ClientValidationSet_Status"
   FOREIGN KEY ("StatusId")
   REFERENCES "SYSTEM"."Status"
       ("StatusId")
   ENABLE
   VALIDATE;

-- Creating index for FOREIGN KEY 'FK_ClientValidationSet_Status'
CREATE INDEX "IX_FK_ClientValidationSet_Status"
ON "SYSTEM"."ClientValidationSets"
   ("StatusId");

-- Creating foreign key on "CreatedBy" in table 'ClientValidationSets'
ALTER TABLE "SYSTEM"."ClientValidationSets"
ADD CONSTRAINT "FK_ClientValidationSet_User"
   FOREIGN KEY ("CreatedBy")
   REFERENCES "SYSTEM"."UserTables"
       ("UserId")
   ENABLE
   VALIDATE;

-- Creating index for FOREIGN KEY 'FK_ClientValidationSet_User'
CREATE INDEX "IX_FK_ClientValidationSet_User"
ON "SYSTEM"."ClientValidationSets"
   ("CreatedBy");

-- Creating foreign key on "ValidationSetId" in table 'ClientValidationSets'
ALTER TABLE "SYSTEM"."ClientValidationSets"
ADD CONSTRAINT "FK_ClientValidationSet_ValidationSet"
   FOREIGN KEY ("ValidationSetId")
   REFERENCES "SYSTEM"."ValidationSets"
       ("ValidationSetId")
   ENABLE
   VALIDATE;

-- Creating index for FOREIGN KEY 'FK_ClientValidationSet_ValidationSet'
CREATE INDEX "IX_FK_ClientValidationSet_ValidationSet"
ON "SYSTEM"."ClientValidationSets"
   ("ValidationSetId");

-- Creating foreign key on "ContactId" in table 'ContactEMails'
ALTER TABLE "SYSTEM"."ContactEMails"
ADD CONSTRAINT "FK_ContactEMail_Contact"
   FOREIGN KEY ("ContactId")
   REFERENCES "SYSTEM"."Contacts"
       ("ContactId")
   ENABLE
   VALIDATE;

-- Creating index for FOREIGN KEY 'FK_ContactEMail_Contact'
CREATE INDEX "IX_FK_ContactEMail_Contact"
ON "SYSTEM"."ContactEMails"
   ("ContactId");

-- Creating foreign key on "EMailId" in table 'ContactEMails'
ALTER TABLE "SYSTEM"."ContactEMails"
ADD CONSTRAINT "FK_ContactEMail_EMail"
   FOREIGN KEY ("EMailId")
   REFERENCES "SYSTEM"."EMails"
       ("EMailId")
   ENABLE
   VALIDATE;

-- Creating index for FOREIGN KEY 'FK_ContactEMail_EMail'
CREATE INDEX "IX_FK_ContactEMail_EMail"
ON "SYSTEM"."ContactEMails"
   ("EMailId");

-- Creating foreign key on "EMailTypeId" in table 'ContactEMails'
ALTER TABLE "SYSTEM"."ContactEMails"
ADD CONSTRAINT "FK_ContactEMail_EMailType"
   FOREIGN KEY ("EMailTypeId")
   REFERENCES "SYSTEM"."EMailTypes"
       ("EMailTypeId")
   ENABLE
   VALIDATE;

-- Creating index for FOREIGN KEY 'FK_ContactEMail_EMailType'
CREATE INDEX "IX_FK_ContactEMail_EMailType"
ON "SYSTEM"."ContactEMails"
   ("EMailTypeId");

-- Creating foreign key on "ContactId" in table 'ContactPhoneNumbers'
ALTER TABLE "SYSTEM"."ContactPhoneNumbers"
ADD CONSTRAINT "FK_ContactPhoneNumber_Contact"
   FOREIGN KEY ("ContactId")
   REFERENCES "SYSTEM"."Contacts"
       ("ContactId")
   ENABLE
   VALIDATE;

-- Creating index for FOREIGN KEY 'FK_ContactPhoneNumber_Contact'
CREATE INDEX "IX_FK_ContactPhoneNumber_Contact"
ON "SYSTEM"."ContactPhoneNumbers"
   ("ContactId");

-- Creating foreign key on "PhoneNumberId" in table 'ContactPhoneNumbers'
ALTER TABLE "SYSTEM"."ContactPhoneNumbers"
ADD CONSTRAINT "FK_ContactPhoneNumber_PhoneNumber"
   FOREIGN KEY ("PhoneNumberId")
   REFERENCES "SYSTEM"."PhoneNumbers"
       ("PhoneNumberId")
   ENABLE
   VALIDATE;

-- Creating index for FOREIGN KEY 'FK_ContactPhoneNumber_PhoneNumber'
CREATE INDEX "IX_FK_ContactPhoneNumber_PhoneNumber"
ON "SYSTEM"."ContactPhoneNumbers"
   ("PhoneNumberId");

-- Creating foreign key on "PhoneNumberTypeId" in table 'ContactPhoneNumbers'
ALTER TABLE "SYSTEM"."ContactPhoneNumbers"
ADD CONSTRAINT "FK_ContactPhoneNumber_PhoneNumberType"
   FOREIGN KEY ("PhoneNumberTypeId")
   REFERENCES "SYSTEM"."PhoneNumberTypes"
       ("PhoneNumberTypeId")
   ENABLE
   VALIDATE;

-- Creating index for FOREIGN KEY 'FK_ContactPhoneNumber_PhoneNumberType'
CREATE INDEX "IX_FK_ContactPhoneNumber_PhoneNumberType"
ON "SYSTEM"."ContactPhoneNumbers"
   ("PhoneNumberTypeId");

-- Creating foreign key on "CostingUnitId" in table 'DataSrcBatchCosts'
ALTER TABLE "SYSTEM"."DataSrcBatchCosts"
ADD CONSTRAINT "FK_DataSrcBatchCost_CostingUnit"
   FOREIGN KEY ("CostingUnitId")
   REFERENCES "SYSTEM"."CostingUnits"
       ("CostingUnitId")
   ENABLE
   VALIDATE;

-- Creating index for FOREIGN KEY 'FK_DataSrcBatchCost_CostingUnit'
CREATE INDEX "IX_FK_DataSrcBatchCost_CostingUnit"
ON "SYSTEM"."DataSrcBatchCosts"
   ("CostingUnitId");

-- Creating foreign key on "CountryId" in table 'States'
ALTER TABLE "SYSTEM"."States"
ADD CONSTRAINT "FK_State_Country"
   FOREIGN KEY ("CountryId")
   REFERENCES "SYSTEM"."Countries"
       ("CountryId")
   ENABLE
   VALIDATE;

-- Creating index for FOREIGN KEY 'FK_State_Country'
CREATE INDEX "IX_FK_State_Country"
ON "SYSTEM"."States"
   ("CountryId");

-- Creating foreign key on "ContactId" in table 'DataSrcContacts'
ALTER TABLE "SYSTEM"."DataSrcContacts"
ADD CONSTRAINT "FK_DataSrcContact_Contact"
   FOREIGN KEY ("ContactId")
   REFERENCES "SYSTEM"."Contacts"
       ("ContactId")
   ENABLE
   VALIDATE;

-- Creating index for FOREIGN KEY 'FK_DataSrcContact_Contact'
CREATE INDEX "IX_FK_DataSrcContact_Contact"
ON "SYSTEM"."DataSrcContacts"
   ("ContactId");

-- Creating foreign key on "ContactTypeId" in table 'DataSrcContacts'
ALTER TABLE "SYSTEM"."DataSrcContacts"
ADD CONSTRAINT "FK_DataSrcContact_ContactType"
   FOREIGN KEY ("ContactTypeId")
   REFERENCES "SYSTEM"."ContactTypes"
       ("ContactTypeId")
   ENABLE
   VALIDATE;

-- Creating index for FOREIGN KEY 'FK_DataSrcContact_ContactType'
CREATE INDEX "IX_FK_DataSrcContact_ContactType"
ON "SYSTEM"."DataSrcContacts"
   ("ContactTypeId");

-- Creating foreign key on "CreatedBy" in table 'DataSrcContacts'
ALTER TABLE "SYSTEM"."DataSrcContacts"
ADD CONSTRAINT "FK_DataSrcContact_User"
   FOREIGN KEY ("CreatedBy")
   REFERENCES "SYSTEM"."UserTables"
       ("UserId")
   ENABLE
   VALIDATE;

-- Creating index for FOREIGN KEY 'FK_DataSrcContact_User'
CREATE INDEX "IX_FK_DataSrcContact_User"
ON "SYSTEM"."DataSrcContacts"
   ("CreatedBy");

-- Creating foreign key on "DataSrcId" in table 'DataSrcContacts'
ALTER TABLE "SYSTEM"."DataSrcContacts"
ADD CONSTRAINT "FK_DataSrcContact_DataSrc"
   FOREIGN KEY ("DataSrcId")
   REFERENCES "SYSTEM"."DataSrcs"
       ("DataSrcId")
   ENABLE
   VALIDATE;

-- Creating index for FOREIGN KEY 'FK_DataSrcContact_DataSrc'
CREATE INDEX "IX_FK_DataSrcContact_DataSrc"
ON "SYSTEM"."DataSrcContacts"
   ("DataSrcId");

-- Creating foreign key on "DateTimeFormatTypeId" in table 'DataSrcDateTimeFormats'
ALTER TABLE "SYSTEM"."DataSrcDateTimeFormats"
ADD CONSTRAINT "FK_DataSrcDateTimeFormat_DateTimeFormatType"
   FOREIGN KEY ("DateTimeFormatTypeId")
   REFERENCES "SYSTEM"."DateTimeFormatTypes"
       ("DateTimeFormatTypeId")
   ENABLE
   VALIDATE;

-- Creating index for FOREIGN KEY 'FK_DataSrcDateTimeFormat_DateTimeFormatType'
CREATE INDEX "IX_FK_DataSrcDateTimeFormat_DateTimeFormatType"
ON "SYSTEM"."DataSrcDateTimeFormats"
   ("DateTimeFormatTypeId");

-- Creating foreign key on "DirectionId" in table 'DataSrcDateTimeFormats'
ALTER TABLE "SYSTEM"."DataSrcDateTimeFormats"
ADD CONSTRAINT "FK_DataSrcDateTimeFormat_Direction"
   FOREIGN KEY ("DirectionId")
   REFERENCES "SYSTEM"."Directions"
       ("DirectionId")
   ENABLE
   VALIDATE;

-- Creating index for FOREIGN KEY 'FK_DataSrcDateTimeFormat_Direction'
CREATE INDEX "IX_FK_DataSrcDateTimeFormat_Direction"
ON "SYSTEM"."DataSrcDateTimeFormats"
   ("DirectionId");

-- Creating foreign key on "StatusId" in table 'DataSrcDateTimeFormats'
ALTER TABLE "SYSTEM"."DataSrcDateTimeFormats"
ADD CONSTRAINT "FK_DataSrcDateTimeFormat_Status"
   FOREIGN KEY ("StatusId")
   REFERENCES "SYSTEM"."Status"
       ("StatusId")
   ENABLE
   VALIDATE;

-- Creating index for FOREIGN KEY 'FK_DataSrcDateTimeFormat_Status'
CREATE INDEX "IX_FK_DataSrcDateTimeFormat_Status"
ON "SYSTEM"."DataSrcDateTimeFormats"
   ("StatusId");

-- Creating foreign key on "CreatedBy" in table 'DataSrcDateTimeFormats'
ALTER TABLE "SYSTEM"."DataSrcDateTimeFormats"
ADD CONSTRAINT "FK_DataSrcDateTimeFormat_UserTable"
   FOREIGN KEY ("CreatedBy")
   REFERENCES "SYSTEM"."UserTables"
       ("UserId")
   ENABLE
   VALIDATE;

-- Creating index for FOREIGN KEY 'FK_DataSrcDateTimeFormat_UserTable'
CREATE INDEX "IX_FK_DataSrcDateTimeFormat_UserTable"
ON "SYSTEM"."DataSrcDateTimeFormats"
   ("CreatedBy");

-- Creating foreign key on "DataSrcId" in table 'DataSrcDateTimeFormats'
ALTER TABLE "SYSTEM"."DataSrcDateTimeFormats"
ADD CONSTRAINT "FK_DataSrcDateTimeFormat_DataSrc"
   FOREIGN KEY ("DataSrcId")
   REFERENCES "SYSTEM"."DataSrcs"
       ("DataSrcId")
   ENABLE
   VALIDATE;

-- Creating index for FOREIGN KEY 'FK_DataSrcDateTimeFormat_DataSrc'
CREATE INDEX "IX_FK_DataSrcDateTimeFormat_DataSrc"
ON "SYSTEM"."DataSrcDateTimeFormats"
   ("DataSrcId");

-- Creating foreign key on "DocumentId" in table 'DataSrcDocuments'
ALTER TABLE "SYSTEM"."DataSrcDocuments"
ADD CONSTRAINT "FK_DataSrcDocument_Document"
   FOREIGN KEY ("DocumentId")
   REFERENCES "SYSTEM"."Documents"
       ("DocumentId")
   ENABLE
   VALIDATE;

-- Creating index for FOREIGN KEY 'FK_DataSrcDocument_Document'
CREATE INDEX "IX_FK_DataSrcDocument_Document"
ON "SYSTEM"."DataSrcDocuments"
   ("DocumentId");

-- Creating foreign key on "DocumentTypeId" in table 'DataSrcDocuments'
ALTER TABLE "SYSTEM"."DataSrcDocuments"
ADD CONSTRAINT "FK_DataSrcDocument_DocumentType"
   FOREIGN KEY ("DocumentTypeId")
   REFERENCES "SYSTEM"."DocumentTypes"
       ("DocumentTypeId")
   ENABLE
   VALIDATE;

-- Creating index for FOREIGN KEY 'FK_DataSrcDocument_DocumentType'
CREATE INDEX "IX_FK_DataSrcDocument_DocumentType"
ON "SYSTEM"."DataSrcDocuments"
   ("DocumentTypeId");

-- Creating foreign key on "DataSrcId" in table 'DataSrcDocuments'
ALTER TABLE "SYSTEM"."DataSrcDocuments"
ADD CONSTRAINT "FK_DataSrcDocument_DataSrc"
   FOREIGN KEY ("DataSrcId")
   REFERENCES "SYSTEM"."DataSrcs"
       ("DataSrcId")
   ENABLE
   VALIDATE;

-- Creating index for FOREIGN KEY 'FK_DataSrcDocument_DataSrc'
CREATE INDEX "IX_FK_DataSrcDocument_DataSrc"
ON "SYSTEM"."DataSrcDocuments"
   ("DataSrcId");

-- Creating foreign key on "ExtractSetId" in table 'DataSrcExtractSets'
ALTER TABLE "SYSTEM"."DataSrcExtractSets"
ADD CONSTRAINT "FK_DataSrcExtractSet_ExtractSet"
   FOREIGN KEY ("ExtractSetId")
   REFERENCES "SYSTEM"."ExtractSets"
       ("ExtractSetId")
   ENABLE
   VALIDATE;

-- Creating index for FOREIGN KEY 'FK_DataSrcExtractSet_ExtractSet'
CREATE INDEX "IX_FK_DataSrcExtractSet_ExtractSet"
ON "SYSTEM"."DataSrcExtractSets"
   ("ExtractSetId");

-- Creating foreign key on "StatusId" in table 'DataSrcExtractSets'
ALTER TABLE "SYSTEM"."DataSrcExtractSets"
ADD CONSTRAINT "FK_DataSrcExtractSet_Status"
   FOREIGN KEY ("StatusId")
   REFERENCES "SYSTEM"."Status"
       ("StatusId")
   ENABLE
   VALIDATE;

-- Creating index for FOREIGN KEY 'FK_DataSrcExtractSet_Status'
CREATE INDEX "IX_FK_DataSrcExtractSet_Status"
ON "SYSTEM"."DataSrcExtractSets"
   ("StatusId");

-- Creating foreign key on "CreatedBy" in table 'DataSrcExtractSets'
ALTER TABLE "SYSTEM"."DataSrcExtractSets"
ADD CONSTRAINT "FK_DataSrcExtractSet_User"
   FOREIGN KEY ("CreatedBy")
   REFERENCES "SYSTEM"."UserTables"
       ("UserId")
   ENABLE
   VALIDATE;

-- Creating index for FOREIGN KEY 'FK_DataSrcExtractSet_User'
CREATE INDEX "IX_FK_DataSrcExtractSet_User"
ON "SYSTEM"."DataSrcExtractSets"
   ("CreatedBy");

-- Creating foreign key on "DataSrcId" in table 'DataSrcExtractSets'
ALTER TABLE "SYSTEM"."DataSrcExtractSets"
ADD CONSTRAINT "FK_DataSrcExtractSet_DataSrc"
   FOREIGN KEY ("DataSrcId")
   REFERENCES "SYSTEM"."DataSrcs"
       ("DataSrcId")
   ENABLE
   VALIDATE;

-- Creating index for FOREIGN KEY 'FK_DataSrcExtractSet_DataSrc'
CREATE INDEX "IX_FK_DataSrcExtractSet_DataSrc"
ON "SYSTEM"."DataSrcExtractSets"
   ("DataSrcId");

-- Creating foreign key on "IdentificationSetId" in table 'DataSrcIdentificationSets'
ALTER TABLE "SYSTEM"."DataSrcIdentificationSets"
ADD CONSTRAINT "FK_DataSrcIdentificationSet_IdentificationSet"
   FOREIGN KEY ("IdentificationSetId")
   REFERENCES "SYSTEM"."IdentificationSets"
       ("IdentificationSetId")
   ENABLE
   VALIDATE;

-- Creating index for FOREIGN KEY 'FK_DataSrcIdentificationSet_IdentificationSet'
CREATE INDEX "IX_FK_DataSrcIdentificationSet_IdentificationSet"
ON "SYSTEM"."DataSrcIdentificationSets"
   ("IdentificationSetId");

-- Creating foreign key on "CreatedBy" in table 'DataSrcIdentificationSets'
ALTER TABLE "SYSTEM"."DataSrcIdentificationSets"
ADD CONSTRAINT "FK_DataSrcIdentificationSet_User"
   FOREIGN KEY ("CreatedBy")
   REFERENCES "SYSTEM"."UserTables"
       ("UserId")
   ENABLE
   VALIDATE;

-- Creating index for FOREIGN KEY 'FK_DataSrcIdentificationSet_User'
CREATE INDEX "IX_FK_DataSrcIdentificationSet_User"
ON "SYSTEM"."DataSrcIdentificationSets"
   ("CreatedBy");

-- Creating foreign key on "DataSrcId" in table 'DataSrcIdentificationSets'
ALTER TABLE "SYSTEM"."DataSrcIdentificationSets"
ADD CONSTRAINT "FK_DataSrcIdentificationSet_DataSrc"
   FOREIGN KEY ("DataSrcId")
   REFERENCES "SYSTEM"."DataSrcs"
       ("DataSrcId")
   ENABLE
   VALIDATE;

-- Creating index for FOREIGN KEY 'FK_DataSrcIdentificationSet_DataSrc'
CREATE INDEX "IX_FK_DataSrcIdentificationSet_DataSrc"
ON "SYSTEM"."DataSrcIdentificationSets"
   ("DataSrcId");

-- Creating foreign key on "CreatedBy" in table 'DataSrcMakeFamilies'
ALTER TABLE "SYSTEM"."DataSrcMakeFamilies"
ADD CONSTRAINT "FK_DataSrcMakeFamily_UserTable"
   FOREIGN KEY ("CreatedBy")
   REFERENCES "SYSTEM"."UserTables"
       ("UserId")
   ENABLE
   VALIDATE;

-- Creating index for FOREIGN KEY 'FK_DataSrcMakeFamily_UserTable'
CREATE INDEX "IX_FK_DataSrcMakeFamily_UserTable"
ON "SYSTEM"."DataSrcMakeFamilies"
   ("CreatedBy");

-- Creating foreign key on "DataSrcMakeFamilyId" in table 'DataSrcMakeFamilyMakes'
ALTER TABLE "SYSTEM"."DataSrcMakeFamilyMakes"
ADD CONSTRAINT "FK_DataSrcMakeFamilyMake_DataSrcMakeFamily"
   FOREIGN KEY ("DataSrcMakeFamilyId")
   REFERENCES "SYSTEM"."DataSrcMakeFamilies"
       ("DataSrcMakeFamilyId")
   ENABLE
   VALIDATE;

-- Creating index for FOREIGN KEY 'FK_DataSrcMakeFamilyMake_DataSrcMakeFamily'
CREATE INDEX "IX_FK_DataSrcMakeFamilyMake_DataSrcMakeFamily"
ON "SYSTEM"."DataSrcMakeFamilyMakes"
   ("DataSrcMakeFamilyId");

-- Creating foreign key on "DataSrcMakeFamilyId" in table 'DataSrcMakeFamilyMembers'
ALTER TABLE "SYSTEM"."DataSrcMakeFamilyMembers"
ADD CONSTRAINT "FK_DataSrcMakeFamilyMember_DataSrcMakeFamily"
   FOREIGN KEY ("DataSrcMakeFamilyId")
   REFERENCES "SYSTEM"."DataSrcMakeFamilies"
       ("DataSrcMakeFamilyId")
   ENABLE
   VALIDATE;

-- Creating index for FOREIGN KEY 'FK_DataSrcMakeFamilyMember_DataSrcMakeFamily'
CREATE INDEX "IX_FK_DataSrcMakeFamilyMember_DataSrcMakeFamily"
ON "SYSTEM"."DataSrcMakeFamilyMembers"
   ("DataSrcMakeFamilyId");

-- Creating foreign key on "DataSrcId" in table 'DataSrcMakeFamilies'
ALTER TABLE "SYSTEM"."DataSrcMakeFamilies"
ADD CONSTRAINT "FK_DataSrcMakeFamily_DataSrc"
   FOREIGN KEY ("DataSrcId")
   REFERENCES "SYSTEM"."DataSrcs"
       ("DataSrcId")
   ENABLE
   VALIDATE;

-- Creating index for FOREIGN KEY 'FK_DataSrcMakeFamily_DataSrc'
CREATE INDEX "IX_FK_DataSrcMakeFamily_DataSrc"
ON "SYSTEM"."DataSrcMakeFamilies"
   ("DataSrcId");

-- Creating foreign key on "NotesId" in table 'DataSrcNotes'
ALTER TABLE "SYSTEM"."DataSrcNotes"
ADD CONSTRAINT "FK_DataSrcNotes_Notes"
   FOREIGN KEY ("NotesId")
   REFERENCES "SYSTEM"."Notes"
       ("NotesId")
   ENABLE
   VALIDATE;

-- Creating index for FOREIGN KEY 'FK_DataSrcNotes_Notes'
CREATE INDEX "IX_FK_DataSrcNotes_Notes"
ON "SYSTEM"."DataSrcNotes"
   ("NotesId");

-- Creating foreign key on "NotesTypeId" in table 'DataSrcNotes'
ALTER TABLE "SYSTEM"."DataSrcNotes"
ADD CONSTRAINT "FK_DataSrcNotes_NotesType"
   FOREIGN KEY ("NotesTypeId")
   REFERENCES "SYSTEM"."NotesTypes"
       ("NotesTypeId")
   ENABLE
   VALIDATE;

-- Creating index for FOREIGN KEY 'FK_DataSrcNotes_NotesType'
CREATE INDEX "IX_FK_DataSrcNotes_NotesType"
ON "SYSTEM"."DataSrcNotes"
   ("NotesTypeId");

-- Creating foreign key on "DataSrcId" in table 'DataSrcNotes'
ALTER TABLE "SYSTEM"."DataSrcNotes"
ADD CONSTRAINT "FK_DataSrcNotes_DataSrc"
   FOREIGN KEY ("DataSrcId")
   REFERENCES "SYSTEM"."DataSrcs"
       ("DataSrcId")
   ENABLE
   VALIDATE;

-- Creating index for FOREIGN KEY 'FK_DataSrcNotes_DataSrc'
CREATE INDEX "IX_FK_DataSrcNotes_DataSrc"
ON "SYSTEM"."DataSrcNotes"
   ("DataSrcId");

-- Creating foreign key on "ParseSetId" in table 'DataSrcParseSets'
ALTER TABLE "SYSTEM"."DataSrcParseSets"
ADD CONSTRAINT "FK_DataSrcParseSet_ParseSet"
   FOREIGN KEY ("ParseSetId")
   REFERENCES "SYSTEM"."ParseSets"
       ("ParseSetId")
   ENABLE
   VALIDATE;

-- Creating index for FOREIGN KEY 'FK_DataSrcParseSet_ParseSet'
CREATE INDEX "IX_FK_DataSrcParseSet_ParseSet"
ON "SYSTEM"."DataSrcParseSets"
   ("ParseSetId");

-- Creating foreign key on "StatusId" in table 'DataSrcParseSets'
ALTER TABLE "SYSTEM"."DataSrcParseSets"
ADD CONSTRAINT "FK_DataSrcParseSet_Status"
   FOREIGN KEY ("StatusId")
   REFERENCES "SYSTEM"."Status"
       ("StatusId")
   ENABLE
   VALIDATE;

-- Creating index for FOREIGN KEY 'FK_DataSrcParseSet_Status'
CREATE INDEX "IX_FK_DataSrcParseSet_Status"
ON "SYSTEM"."DataSrcParseSets"
   ("StatusId");

-- Creating foreign key on "CreatedBy" in table 'DataSrcParseSets'
ALTER TABLE "SYSTEM"."DataSrcParseSets"
ADD CONSTRAINT "FK_DataSrcParseSet_User"
   FOREIGN KEY ("CreatedBy")
   REFERENCES "SYSTEM"."UserTables"
       ("UserId")
   ENABLE
   VALIDATE;

-- Creating index for FOREIGN KEY 'FK_DataSrcParseSet_User'
CREATE INDEX "IX_FK_DataSrcParseSet_User"
ON "SYSTEM"."DataSrcParseSets"
   ("CreatedBy");

-- Creating foreign key on "DataSrcId" in table 'DataSrcParseSets'
ALTER TABLE "SYSTEM"."DataSrcParseSets"
ADD CONSTRAINT "FK_DataSrcParseSet_DataSrc"
   FOREIGN KEY ("DataSrcId")
   REFERENCES "SYSTEM"."DataSrcs"
       ("DataSrcId")
   ENABLE
   VALIDATE;

-- Creating index for FOREIGN KEY 'FK_DataSrcParseSet_DataSrc'
CREATE INDEX "IX_FK_DataSrcParseSet_DataSrc"
ON "SYSTEM"."DataSrcParseSets"
   ("DataSrcId");

-- Creating foreign key on "DataSrcRequestBatchId" in table 'DataSrcRequestBatchRecords'
ALTER TABLE "SYSTEM"."DataSrcRequestBatchRecords"
ADD CONSTRAINT "FK_DataSrcRequestBatchRecord_DataSrcRequestBatch"
   FOREIGN KEY ("DataSrcRequestBatchId")
   REFERENCES "SYSTEM"."DataSrcRequestBatches"
       ("DataSrcRequestBatchId")
   ENABLE
   VALIDATE;

-- Creating index for FOREIGN KEY 'FK_DataSrcRequestBatchRecord_DataSrcRequestBatch'
CREATE INDEX "IX_FK_DataSrcRequestBatchRecord_DataSrcRequestBatch"
ON "SYSTEM"."DataSrcRequestBatchRecords"
   ("DataSrcRequestBatchId");

-- Creating foreign key on "RawRecordId" in table 'DataSrcRequestBatchRecords'
ALTER TABLE "SYSTEM"."DataSrcRequestBatchRecords"
ADD CONSTRAINT "FK_DataSrcRequestBatchRecord_RawRecord"
   FOREIGN KEY ("RawRecordId")
   REFERENCES "SYSTEM"."RawRecords"
       ("RawRecordId")
   ENABLE
   VALIDATE;

-- Creating index for FOREIGN KEY 'FK_DataSrcRequestBatchRecord_RawRecord'
CREATE INDEX "IX_FK_DataSrcRequestBatchRecord_RawRecord"
ON "SYSTEM"."DataSrcRequestBatchRecords"
   ("RawRecordId");

-- Creating foreign key on "RequestFormatSetId" in table 'DataSrcRequestBatchRecords'
ALTER TABLE "SYSTEM"."DataSrcRequestBatchRecords"
ADD CONSTRAINT "FK_DataSrcRequestBatchRecord_RequestFormatSet"
   FOREIGN KEY ("RequestFormatSetId")
   REFERENCES "SYSTEM"."RequestFormatSets"
       ("RequestFormatSetId")
   ENABLE
   VALIDATE;

-- Creating index for FOREIGN KEY 'FK_DataSrcRequestBatchRecord_RequestFormatSet'
CREATE INDEX "IX_FK_DataSrcRequestBatchRecord_RequestFormatSet"
ON "SYSTEM"."DataSrcRequestBatchRecords"
   ("RequestFormatSetId");

-- Creating foreign key on "RequestRecordId" in table 'DataSrcRequestBatchRecords'
ALTER TABLE "SYSTEM"."DataSrcRequestBatchRecords"
ADD CONSTRAINT "FK_DataSrcRequestBatchRecord_RequestRecord"
   FOREIGN KEY ("RequestRecordId")
   REFERENCES "SYSTEM"."RequestRecords"
       ("RequestRecordId")
   ENABLE
   VALIDATE;

-- Creating index for FOREIGN KEY 'FK_DataSrcRequestBatchRecord_RequestRecord'
CREATE INDEX "IX_FK_DataSrcRequestBatchRecord_RequestRecord"
ON "SYSTEM"."DataSrcRequestBatchRecords"
   ("RequestRecordId");

-- Creating foreign key on "DataSrcId" in table 'DataSrcRequestControls'
ALTER TABLE "SYSTEM"."DataSrcRequestControls"
ADD CONSTRAINT "FK_DataSrcRequestControl_DataSrc"
   FOREIGN KEY ("DataSrcId")
   REFERENCES "SYSTEM"."DataSrcs"
       ("DataSrcId")
   ENABLE
   VALIDATE;

-- Creating index for FOREIGN KEY 'FK_DataSrcRequestControl_DataSrc'
CREATE INDEX "IX_FK_DataSrcRequestControl_DataSrc"
ON "SYSTEM"."DataSrcRequestControls"
   ("DataSrcId");

-- Creating foreign key on "RequestFormatSetId" in table 'DataSrcRequestFormatSets'
ALTER TABLE "SYSTEM"."DataSrcRequestFormatSets"
ADD CONSTRAINT "FK_DataSrcRequestFormatSet_RequestFormatSet"
   FOREIGN KEY ("RequestFormatSetId")
   REFERENCES "SYSTEM"."RequestFormatSets"
       ("RequestFormatSetId")
   ENABLE
   VALIDATE;

-- Creating index for FOREIGN KEY 'FK_DataSrcRequestFormatSet_RequestFormatSet'
CREATE INDEX "IX_FK_DataSrcRequestFormatSet_RequestFormatSet"
ON "SYSTEM"."DataSrcRequestFormatSets"
   ("RequestFormatSetId");

-- Creating foreign key on "StatusId" in table 'DataSrcRequestFormatSets'
ALTER TABLE "SYSTEM"."DataSrcRequestFormatSets"
ADD CONSTRAINT "FK_DataSrcRequestFormatSet_Status"
   FOREIGN KEY ("StatusId")
   REFERENCES "SYSTEM"."Status"
       ("StatusId")
   ENABLE
   VALIDATE;

-- Creating index for FOREIGN KEY 'FK_DataSrcRequestFormatSet_Status'
CREATE INDEX "IX_FK_DataSrcRequestFormatSet_Status"
ON "SYSTEM"."DataSrcRequestFormatSets"
   ("StatusId");

-- Creating foreign key on "CreatedBy" in table 'DataSrcRequestFormatSets'
ALTER TABLE "SYSTEM"."DataSrcRequestFormatSets"
ADD CONSTRAINT "FK_DataSrcRequestFormatSet_User"
   FOREIGN KEY ("CreatedBy")
   REFERENCES "SYSTEM"."UserTables"
       ("UserId")
   ENABLE
   VALIDATE;

-- Creating index for FOREIGN KEY 'FK_DataSrcRequestFormatSet_User'
CREATE INDEX "IX_FK_DataSrcRequestFormatSet_User"
ON "SYSTEM"."DataSrcRequestFormatSets"
   ("CreatedBy");

-- Creating foreign key on "DataSrcId" in table 'DataSrcRequestFormatSets'
ALTER TABLE "SYSTEM"."DataSrcRequestFormatSets"
ADD CONSTRAINT "FK_DataSrcRequestFormatSet_DataSrc"
   FOREIGN KEY ("DataSrcId")
   REFERENCES "SYSTEM"."DataSrcs"
       ("DataSrcId")
   ENABLE
   VALIDATE;

-- Creating index for FOREIGN KEY 'FK_DataSrcRequestFormatSet_DataSrc'
CREATE INDEX "IX_FK_DataSrcRequestFormatSet_DataSrc"
ON "SYSTEM"."DataSrcRequestFormatSets"
   ("DataSrcId");

-- Creating foreign key on "RequestRuleSetId" in table 'DataSrcRequestRuleSets'
ALTER TABLE "SYSTEM"."DataSrcRequestRuleSets"
ADD CONSTRAINT "FK_DataSrcRequestRuleSet_RequestRuleSet"
   FOREIGN KEY ("RequestRuleSetId")
   REFERENCES "SYSTEM"."RequestRuleSets"
       ("RequestRuleSetId")
   ENABLE
   VALIDATE;

-- Creating index for FOREIGN KEY 'FK_DataSrcRequestRuleSet_RequestRuleSet'
CREATE INDEX "IX_FK_DataSrcRequestRuleSet_RequestRuleSet"
ON "SYSTEM"."DataSrcRequestRuleSets"
   ("RequestRuleSetId");

-- Creating foreign key on "StatusId" in table 'DataSrcRequestRuleSets'
ALTER TABLE "SYSTEM"."DataSrcRequestRuleSets"
ADD CONSTRAINT "FK_DataSrcRequestRuleSet_Status"
   FOREIGN KEY ("StatusId")
   REFERENCES "SYSTEM"."Status"
       ("StatusId")
   ENABLE
   VALIDATE;

-- Creating index for FOREIGN KEY 'FK_DataSrcRequestRuleSet_Status'
CREATE INDEX "IX_FK_DataSrcRequestRuleSet_Status"
ON "SYSTEM"."DataSrcRequestRuleSets"
   ("StatusId");

-- Creating foreign key on "DataSrcId" in table 'DataSrcRequestRuleSets'
ALTER TABLE "SYSTEM"."DataSrcRequestRuleSets"
ADD CONSTRAINT "FK_DataSrcRequestRuleSet_DataSrc"
   FOREIGN KEY ("DataSrcId")
   REFERENCES "SYSTEM"."DataSrcs"
       ("DataSrcId")
   ENABLE
   VALIDATE;

-- Creating index for FOREIGN KEY 'FK_DataSrcRequestRuleSet_DataSrc'
CREATE INDEX "IX_FK_DataSrcRequestRuleSet_DataSrc"
ON "SYSTEM"."DataSrcRequestRuleSets"
   ("DataSrcId");

-- Creating foreign key on "DataSrcResponseBatchId" in table 'DataSrcResponseBatchRecords'
ALTER TABLE "SYSTEM"."DataSrcResponseBatchRecords"
ADD CONSTRAINT "FK_DataSrcResponseBatchRecord_DataSrcResponseBatch"
   FOREIGN KEY ("DataSrcResponseBatchId")
   REFERENCES "SYSTEM"."DataSrcResponseBatches"
       ("DataSrcResponseBatchId")
   ENABLE
   VALIDATE;

-- Creating index for FOREIGN KEY 'FK_DataSrcResponseBatchRecord_DataSrcResponseBatch'
CREATE INDEX "IX_FK_DataSrcResponseBatchRecord_DataSrcResponseBatch"
ON "SYSTEM"."DataSrcResponseBatchRecords"
   ("DataSrcResponseBatchId");

-- Creating foreign key on "RawRecordId" in table 'DataSrcResponseBatchRecords'
ALTER TABLE "SYSTEM"."DataSrcResponseBatchRecords"
ADD CONSTRAINT "FK_DataSrcResponseBatchRecord_RawRecord"
   FOREIGN KEY ("RawRecordId")
   REFERENCES "SYSTEM"."RawRecords"
       ("RawRecordId")
   ENABLE
   VALIDATE;

-- Creating index for FOREIGN KEY 'FK_DataSrcResponseBatchRecord_RawRecord'
CREATE INDEX "IX_FK_DataSrcResponseBatchRecord_RawRecord"
ON "SYSTEM"."DataSrcResponseBatchRecords"
   ("RawRecordId");

-- Creating foreign key on "ResponseRecordId" in table 'DataSrcResponseBatchRecords'
ALTER TABLE "SYSTEM"."DataSrcResponseBatchRecords"
ADD CONSTRAINT "FK_DataSrcResponseBatchRecord_ResponseRecord"
   FOREIGN KEY ("ResponseRecordId")
   REFERENCES "SYSTEM"."ResponseRecords"
       ("ResponseRecordId")
   ENABLE
   VALIDATE;

-- Creating index for FOREIGN KEY 'FK_DataSrcResponseBatchRecord_ResponseRecord'
CREATE INDEX "IX_FK_DataSrcResponseBatchRecord_ResponseRecord"
ON "SYSTEM"."DataSrcResponseBatchRecords"
   ("ResponseRecordId");

-- Creating foreign key on "DataSrcResponseBatchStateId" in table 'DataSrcResponseBatches'
ALTER TABLE "SYSTEM"."DataSrcResponseBatches"
ADD CONSTRAINT "FK_DataSrcResponseBatch_DataSrcResponseBatchState"
   FOREIGN KEY ("DataSrcResponseBatchStateId")
   REFERENCES "SYSTEM"."DataSrcResponseBatchStates"
       ("DataSrcResponseBatchStateId")
   ENABLE
   VALIDATE;

-- Creating index for FOREIGN KEY 'FK_DataSrcResponseBatch_DataSrcResponseBatchState'
CREATE INDEX "IX_FK_DataSrcResponseBatch_DataSrcResponseBatchState"
ON "SYSTEM"."DataSrcResponseBatches"
   ("DataSrcResponseBatchStateId");

-- Creating foreign key on "StateId" in table 'DataSrcStates'
ALTER TABLE "SYSTEM"."DataSrcStates"
ADD CONSTRAINT "FK_DataSrcState_State"
   FOREIGN KEY ("StateId")
   REFERENCES "SYSTEM"."States"
       ("StateId")
   ENABLE
   VALIDATE;

-- Creating index for FOREIGN KEY 'FK_DataSrcState_State'
CREATE INDEX "IX_FK_DataSrcState_State"
ON "SYSTEM"."DataSrcStates"
   ("StateId");

-- Creating foreign key on "CreatedBy" in table 'DataSrcStates'
ALTER TABLE "SYSTEM"."DataSrcStates"
ADD CONSTRAINT "FK_DataSrcState_UserTable"
   FOREIGN KEY ("CreatedBy")
   REFERENCES "SYSTEM"."UserTables"
       ("UserId")
   ENABLE
   VALIDATE;

-- Creating index for FOREIGN KEY 'FK_DataSrcState_UserTable'
CREATE INDEX "IX_FK_DataSrcState_UserTable"
ON "SYSTEM"."DataSrcStates"
   ("CreatedBy");

-- Creating foreign key on "ModifiedBy" in table 'DataSrcStates'
ALTER TABLE "SYSTEM"."DataSrcStates"
ADD CONSTRAINT "FK_DataSrcState_UserTable1"
   FOREIGN KEY ("ModifiedBy")
   REFERENCES "SYSTEM"."UserTables"
       ("UserId")
   ENABLE
   VALIDATE;

-- Creating index for FOREIGN KEY 'FK_DataSrcState_UserTable1'
CREATE INDEX "IX_FK_DataSrcState_UserTable1"
ON "SYSTEM"."DataSrcStates"
   ("ModifiedBy");

-- Creating foreign key on "DataSrcId" in table 'DataSrcStates'
ALTER TABLE "SYSTEM"."DataSrcStates"
ADD CONSTRAINT "FK_DataSrcState_DataSrc"
   FOREIGN KEY ("DataSrcId")
   REFERENCES "SYSTEM"."DataSrcs"
       ("DataSrcId")
   ENABLE
   VALIDATE;

-- Creating index for FOREIGN KEY 'FK_DataSrcState_DataSrc'
CREATE INDEX "IX_FK_DataSrcState_DataSrc"
ON "SYSTEM"."DataSrcStates"
   ("DataSrcId");

-- Creating foreign key on "StateId" in table 'DataSrcStateNLETS'
ALTER TABLE "SYSTEM"."DataSrcStateNLETS"
ADD CONSTRAINT "FK_DataSrcStateNLETS_State"
   FOREIGN KEY ("StateId")
   REFERENCES "SYSTEM"."States"
       ("StateId")
   ENABLE
   VALIDATE;

-- Creating index for FOREIGN KEY 'FK_DataSrcStateNLETS_State'
CREATE INDEX "IX_FK_DataSrcStateNLETS_State"
ON "SYSTEM"."DataSrcStateNLETS"
   ("StateId");

-- Creating foreign key on "CreatedBy" in table 'DataSrcStateNLETS'
ALTER TABLE "SYSTEM"."DataSrcStateNLETS"
ADD CONSTRAINT "FK_DataSrcStateNLETS_UserTable"
   FOREIGN KEY ("CreatedBy")
   REFERENCES "SYSTEM"."UserTables"
       ("UserId")
   ENABLE
   VALIDATE;

-- Creating index for FOREIGN KEY 'FK_DataSrcStateNLETS_UserTable'
CREATE INDEX "IX_FK_DataSrcStateNLETS_UserTable"
ON "SYSTEM"."DataSrcStateNLETS"
   ("CreatedBy");

-- Creating foreign key on "ModifiedBy" in table 'DataSrcStateNLETS'
ALTER TABLE "SYSTEM"."DataSrcStateNLETS"
ADD CONSTRAINT "FK_DataSrcStateNLETS_UserTable1"
   FOREIGN KEY ("ModifiedBy")
   REFERENCES "SYSTEM"."UserTables"
       ("UserId")
   ENABLE
   VALIDATE;

-- Creating index for FOREIGN KEY 'FK_DataSrcStateNLETS_UserTable1'
CREATE INDEX "IX_FK_DataSrcStateNLETS_UserTable1"
ON "SYSTEM"."DataSrcStateNLETS"
   ("ModifiedBy");

-- Creating foreign key on "DataSrcId" in table 'DataSrcStatisticsDefaults'
ALTER TABLE "SYSTEM"."DataSrcStatisticsDefaults"
ADD CONSTRAINT "FK_DataSrcStatisticsDefaults_DataSrc"
   FOREIGN KEY ("DataSrcId")
   REFERENCES "SYSTEM"."DataSrcs"
       ("DataSrcId")
   ENABLE
   VALIDATE;

-- Creating index for FOREIGN KEY 'FK_DataSrcStatisticsDefaults_DataSrc'
CREATE INDEX "IX_FK_DataSrcStatisticsDefaults_DataSrc"
ON "SYSTEM"."DataSrcStatisticsDefaults"
   ("DataSrcId");

-- Creating foreign key on "DataSrcTypeId" in table 'DataSrcs'
ALTER TABLE "SYSTEM"."DataSrcs"
ADD CONSTRAINT "FK_DataSrc_DataSrcType"
   FOREIGN KEY ("DataSrcTypeId")
   REFERENCES "SYSTEM"."DataSrcTypes"
       ("DataSrcTypeId")
   ENABLE
   VALIDATE;

-- Creating index for FOREIGN KEY 'FK_DataSrc_DataSrcType'
CREATE INDEX "IX_FK_DataSrc_DataSrcType"
ON "SYSTEM"."DataSrcs"
   ("DataSrcTypeId");

-- Creating foreign key on "StatusId" in table 'DataSrcValidationSets'
ALTER TABLE "SYSTEM"."DataSrcValidationSets"
ADD CONSTRAINT "FK_DataSrcValidationSet_Status"
   FOREIGN KEY ("StatusId")
   REFERENCES "SYSTEM"."Status"
       ("StatusId")
   ENABLE
   VALIDATE;

-- Creating index for FOREIGN KEY 'FK_DataSrcValidationSet_Status'
CREATE INDEX "IX_FK_DataSrcValidationSet_Status"
ON "SYSTEM"."DataSrcValidationSets"
   ("StatusId");

-- Creating foreign key on "CreatedBy" in table 'DataSrcValidationSets'
ALTER TABLE "SYSTEM"."DataSrcValidationSets"
ADD CONSTRAINT "FK_DataSrcValidationSet_User"
   FOREIGN KEY ("CreatedBy")
   REFERENCES "SYSTEM"."UserTables"
       ("UserId")
   ENABLE
   VALIDATE;

-- Creating index for FOREIGN KEY 'FK_DataSrcValidationSet_User'
CREATE INDEX "IX_FK_DataSrcValidationSet_User"
ON "SYSTEM"."DataSrcValidationSets"
   ("CreatedBy");

-- Creating foreign key on "ValidationSetId" in table 'DataSrcValidationSets'
ALTER TABLE "SYSTEM"."DataSrcValidationSets"
ADD CONSTRAINT "FK_DataSrcValidationSet_ValidationSet"
   FOREIGN KEY ("ValidationSetId")
   REFERENCES "SYSTEM"."ValidationSets"
       ("ValidationSetId")
   ENABLE
   VALIDATE;

-- Creating index for FOREIGN KEY 'FK_DataSrcValidationSet_ValidationSet'
CREATE INDEX "IX_FK_DataSrcValidationSet_ValidationSet"
ON "SYSTEM"."DataSrcValidationSets"
   ("ValidationSetId");

-- Creating foreign key on "DataSrcId" in table 'DataSrcValidationSets'
ALTER TABLE "SYSTEM"."DataSrcValidationSets"
ADD CONSTRAINT "FK_DataSrcValidationSet_DataSrc"
   FOREIGN KEY ("DataSrcId")
   REFERENCES "SYSTEM"."DataSrcs"
       ("DataSrcId")
   ENABLE
   VALIDATE;

-- Creating index for FOREIGN KEY 'FK_DataSrcValidationSet_DataSrc'
CREATE INDEX "IX_FK_DataSrcValidationSet_DataSrc"
ON "SYSTEM"."DataSrcValidationSets"
   ("DataSrcId");

-- Creating foreign key on "ExtractSetId" in table 'ExtractSetFields'
ALTER TABLE "SYSTEM"."ExtractSetFields"
ADD CONSTRAINT "FK_ExtractSetField_ExtractSet"
   FOREIGN KEY ("ExtractSetId")
   REFERENCES "SYSTEM"."ExtractSets"
       ("ExtractSetId")
   ENABLE
   VALIDATE;

-- Creating index for FOREIGN KEY 'FK_ExtractSetField_ExtractSet'
CREATE INDEX "IX_FK_ExtractSetField_ExtractSet"
ON "SYSTEM"."ExtractSetFields"
   ("ExtractSetId");

-- Creating foreign key on "ExtractSetFieldId" in table 'ExtractSteps'
ALTER TABLE "SYSTEM"."ExtractSteps"
ADD CONSTRAINT "FK_ExtractRuleStep_ExtractSetField"
   FOREIGN KEY ("ExtractSetFieldId")
   REFERENCES "SYSTEM"."ExtractSetFields"
       ("ExtractSetFieldId")
   ENABLE
   VALIDATE;

-- Creating index for FOREIGN KEY 'FK_ExtractRuleStep_ExtractSetField'
CREATE INDEX "IX_FK_ExtractRuleStep_ExtractSetField"
ON "SYSTEM"."ExtractSteps"
   ("ExtractSetFieldId");

-- Creating foreign key on "NormalizedObjectDefId" in table 'ExtractSetFields'
ALTER TABLE "SYSTEM"."ExtractSetFields"
ADD CONSTRAINT "FK_ExtractSetField_NormalizedObjectDef"
   FOREIGN KEY ("NormalizedObjectDefId")
   REFERENCES "SYSTEM"."NormalizedObjectDefs"
       ("NormalizedObjectDefId")
   ENABLE
   VALIDATE;

-- Creating index for FOREIGN KEY 'FK_ExtractSetField_NormalizedObjectDef'
CREATE INDEX "IX_FK_ExtractSetField_NormalizedObjectDef"
ON "SYSTEM"."ExtractSetFields"
   ("NormalizedObjectDefId");

-- Creating foreign key on "IdentificationSetId" in table 'IdentificationSteps'
ALTER TABLE "SYSTEM"."IdentificationSteps"
ADD CONSTRAINT "FK_IdentificationStep_IdentificationSet"
   FOREIGN KEY ("IdentificationSetId")
   REFERENCES "SYSTEM"."IdentificationSets"
       ("IdentificationSetId")
   ENABLE
   VALIDATE;

-- Creating index for FOREIGN KEY 'FK_IdentificationStep_IdentificationSet'
CREATE INDEX "IX_FK_IdentificationStep_IdentificationSet"
ON "SYSTEM"."IdentificationSteps"
   ("IdentificationSetId");

-- Creating foreign key on "ErrorIdentificationStepId" in table 'IdentificationSteps'
ALTER TABLE "SYSTEM"."IdentificationSteps"
ADD CONSTRAINT "FK_IdentificationStep_IdentificationStep"
   FOREIGN KEY ("ErrorIdentificationStepId")
   REFERENCES "SYSTEM"."IdentificationSteps"
       ("IdentificationStepId")
   ENABLE
   VALIDATE;

-- Creating index for FOREIGN KEY 'FK_IdentificationStep_IdentificationStep'
CREATE INDEX "IX_FK_IdentificationStep_IdentificationStep"
ON "SYSTEM"."IdentificationSteps"
   ("ErrorIdentificationStepId");

-- Creating foreign key on "NextIdentificationStepId" in table 'IdentificationSteps'
ALTER TABLE "SYSTEM"."IdentificationSteps"
ADD CONSTRAINT "FK_IdentificationStep_IdentificationStep1"
   FOREIGN KEY ("NextIdentificationStepId")
   REFERENCES "SYSTEM"."IdentificationSteps"
       ("IdentificationStepId")
   ENABLE
   VALIDATE;

-- Creating index for FOREIGN KEY 'FK_IdentificationStep_IdentificationStep1'
CREATE INDEX "IX_FK_IdentificationStep_IdentificationStep1"
ON "SYSTEM"."IdentificationSteps"
   ("NextIdentificationStepId");

-- Creating foreign key on "StepTypeId" in table 'IdentificationSteps'
ALTER TABLE "SYSTEM"."IdentificationSteps"
ADD CONSTRAINT "FK_IdentificationStep_IdentificationStepType"
   FOREIGN KEY ("StepTypeId")
   REFERENCES "SYSTEM"."StepTypes"
       ("StepTypeId")
   ENABLE
   VALIDATE;

-- Creating index for FOREIGN KEY 'FK_IdentificationStep_IdentificationStepType'
CREATE INDEX "IX_FK_IdentificationStep_IdentificationStepType"
ON "SYSTEM"."IdentificationSteps"
   ("StepTypeId");

-- Creating foreign key on "RuleInstanceId" in table 'IdentificationSteps'
ALTER TABLE "SYSTEM"."IdentificationSteps"
ADD CONSTRAINT "FK_IdentificationStep_RuleInstance"
   FOREIGN KEY ("RuleInstanceId")
   REFERENCES "SYSTEM"."RuleInstances"
       ("RuleInstanceId")
   ENABLE
   VALIDATE;

-- Creating index for FOREIGN KEY 'FK_IdentificationStep_RuleInstance'
CREATE INDEX "IX_FK_IdentificationStep_RuleInstance"
ON "SYSTEM"."IdentificationSteps"
   ("RuleInstanceId");

-- Creating foreign key on "ClientRequestBatchId" in table 'LoadRejectCounts'
ALTER TABLE "SYSTEM"."LoadRejectCounts"
ADD CONSTRAINT "FK_LoadRejectCounts_ClientRequestBatch"
   FOREIGN KEY ("ClientRequestBatchId")
   REFERENCES "SYSTEM"."ClientRequestBatches"
       ("ClientRequestBatchId")
   ENABLE
   VALIDATE;

-- Creating index for FOREIGN KEY 'FK_LoadRejectCounts_ClientRequestBatch'
CREATE INDEX "IX_FK_LoadRejectCounts_ClientRequestBatch"
ON "SYSTEM"."LoadRejectCounts"
   ("ClientRequestBatchId");

-- Creating foreign key on "LoadRejectTypeId" in table 'LoadRejectCounts'
ALTER TABLE "SYSTEM"."LoadRejectCounts"
ADD CONSTRAINT "FK_LoadRejectCounts_LoadRejectType"
   FOREIGN KEY ("LoadRejectTypeId")
   REFERENCES "SYSTEM"."LoadRejectTypes"
       ("LoadRejectTypeId")
   ENABLE
   VALIDATE;

-- Creating index for FOREIGN KEY 'FK_LoadRejectCounts_LoadRejectType'
CREATE INDEX "IX_FK_LoadRejectCounts_LoadRejectType"
ON "SYSTEM"."LoadRejectCounts"
   ("LoadRejectTypeId");

-- Creating foreign key on "ClientId" in table 'LoadRuleSets'
ALTER TABLE "SYSTEM"."LoadRuleSets"
ADD CONSTRAINT "FK_LoadRuleSet_Client"
   FOREIGN KEY ("ClientId")
   REFERENCES "SYSTEM"."Clients"
       ("ClientId")
   ENABLE
   VALIDATE;

-- Creating index for FOREIGN KEY 'FK_LoadRuleSet_Client'
CREATE INDEX "IX_FK_LoadRuleSet_Client"
ON "SYSTEM"."LoadRuleSets"
   ("ClientId");

-- Creating foreign key on "LoadRuleSetId" in table 'LoadRuleSteps'
ALTER TABLE "SYSTEM"."LoadRuleSteps"
ADD CONSTRAINT "FK_LoadRuleStep_LoadRuleSet"
   FOREIGN KEY ("LoadRuleSetId")
   REFERENCES "SYSTEM"."LoadRuleSets"
       ("LoadRuleSetId")
   ENABLE
   VALIDATE;

-- Creating index for FOREIGN KEY 'FK_LoadRuleStep_LoadRuleSet'
CREATE INDEX "IX_FK_LoadRuleStep_LoadRuleSet"
ON "SYSTEM"."LoadRuleSteps"
   ("LoadRuleSetId");

-- Creating foreign key on "NLETSTypeId" in table 'Clients'
ALTER TABLE "SYSTEM"."Clients"
ADD CONSTRAINT "FK_Client_NLETSType"
   FOREIGN KEY ("NLETSTypeId")
   REFERENCES "SYSTEM"."NLETSTypes"
       ("NLETSTypeId")
   ENABLE
   VALIDATE;

-- Creating index for FOREIGN KEY 'FK_Client_NLETSType'
CREATE INDEX "IX_FK_Client_NLETSType"
ON "SYSTEM"."Clients"
   ("NLETSTypeId");

-- Creating foreign key on "NoHitReasonId" in table 'ResponseRecords'
ALTER TABLE "SYSTEM"."ResponseRecords"
ADD CONSTRAINT "FK_ResponseRecord_NoHitReason"
   FOREIGN KEY ("NoHitReasonId")
   REFERENCES "SYSTEM"."NoHitReasons"
       ("NoHitReasonId")
   ENABLE
   VALIDATE;

-- Creating index for FOREIGN KEY 'FK_ResponseRecord_NoHitReason'
CREATE INDEX "IX_FK_ResponseRecord_NoHitReason"
ON "SYSTEM"."ResponseRecords"
   ("NoHitReasonId");

-- Creating foreign key on "NormalizedCategoryId" in table 'NormalizedObjectDefs'
ALTER TABLE "SYSTEM"."NormalizedObjectDefs"
ADD CONSTRAINT "FK_NormalizedObjectDef_NormalizedCategory"
   FOREIGN KEY ("NormalizedCategoryId")
   REFERENCES "SYSTEM"."NormalizedCategories"
       ("NormalizedCategoryId")
   ENABLE
   VALIDATE;

-- Creating index for FOREIGN KEY 'FK_NormalizedObjectDef_NormalizedCategory'
CREATE INDEX "IX_FK_NormalizedObjectDef_NormalizedCategory"
ON "SYSTEM"."NormalizedObjectDefs"
   ("NormalizedCategoryId");

-- Creating foreign key on "NormalizedObjectId" in table 'NormalizedObjectDefs'
ALTER TABLE "SYSTEM"."NormalizedObjectDefs"
ADD CONSTRAINT "FK_NormalizedObjectDef_NormalizedObject"
   FOREIGN KEY ("NormalizedObjectId")
   REFERENCES "SYSTEM"."NormalizedObjects"
       ("NormalizedObjectId")
   ENABLE
   VALIDATE;

-- Creating index for FOREIGN KEY 'FK_NormalizedObjectDef_NormalizedObject'
CREATE INDEX "IX_FK_NormalizedObjectDef_NormalizedObject"
ON "SYSTEM"."NormalizedObjectDefs"
   ("NormalizedObjectId");

-- Creating foreign key on "NotSelectReasonId" in table 'RequestResponses'
ALTER TABLE "SYSTEM"."RequestResponses"
ADD CONSTRAINT "FK_RequestResponse_NotSelectReason"
   FOREIGN KEY ("NotSelectReasonId")
   REFERENCES "SYSTEM"."NotSelectReasons"
       ("NotSelectReasonId")
   ENABLE
   VALIDATE;

-- Creating index for FOREIGN KEY 'FK_RequestResponse_NotSelectReason'
CREATE INDEX "IX_FK_RequestResponse_NotSelectReason"
ON "SYSTEM"."RequestResponses"
   ("NotSelectReasonId");

-- Creating foreign key on "ParseSetId" in table 'ParseSteps'
ALTER TABLE "SYSTEM"."ParseSteps"
ADD CONSTRAINT "FK_ParseStep_ParseSet"
   FOREIGN KEY ("ParseSetId")
   REFERENCES "SYSTEM"."ParseSets"
       ("ParseSetId")
   ENABLE
   VALIDATE;

-- Creating index for FOREIGN KEY 'FK_ParseStep_ParseSet'
CREATE INDEX "IX_FK_ParseStep_ParseSet"
ON "SYSTEM"."ParseSteps"
   ("ParseSetId");

-- Creating foreign key on "ErrorParseStepId" in table 'ParseSteps'
ALTER TABLE "SYSTEM"."ParseSteps"
ADD CONSTRAINT "FK_ParseStep_ParseStep"
   FOREIGN KEY ("ErrorParseStepId")
   REFERENCES "SYSTEM"."ParseSteps"
       ("ParseStepId")
   ENABLE
   VALIDATE;

-- Creating index for FOREIGN KEY 'FK_ParseStep_ParseStep'
CREATE INDEX "IX_FK_ParseStep_ParseStep"
ON "SYSTEM"."ParseSteps"
   ("ErrorParseStepId");

-- Creating foreign key on "NextParseStepId" in table 'ParseSteps'
ALTER TABLE "SYSTEM"."ParseSteps"
ADD CONSTRAINT "FK_ParseStep_ParseStep1"
   FOREIGN KEY ("NextParseStepId")
   REFERENCES "SYSTEM"."ParseSteps"
       ("ParseStepId")
   ENABLE
   VALIDATE;

-- Creating index for FOREIGN KEY 'FK_ParseStep_ParseStep1'
CREATE INDEX "IX_FK_ParseStep_ParseStep1"
ON "SYSTEM"."ParseSteps"
   ("NextParseStepId");

-- Creating foreign key on "StepTypeId" in table 'ParseSteps'
ALTER TABLE "SYSTEM"."ParseSteps"
ADD CONSTRAINT "FK_ParseStep_ParseStepType"
   FOREIGN KEY ("StepTypeId")
   REFERENCES "SYSTEM"."StepTypes"
       ("StepTypeId")
   ENABLE
   VALIDATE;

-- Creating index for FOREIGN KEY 'FK_ParseStep_ParseStepType'
CREATE INDEX "IX_FK_ParseStep_ParseStepType"
ON "SYSTEM"."ParseSteps"
   ("StepTypeId");

-- Creating foreign key on "RuleInstanceId" in table 'ParseSteps'
ALTER TABLE "SYSTEM"."ParseSteps"
ADD CONSTRAINT "FK_ParseStep_RuleInstance"
   FOREIGN KEY ("RuleInstanceId")
   REFERENCES "SYSTEM"."RuleInstances"
       ("RuleInstanceId")
   ENABLE
   VALIDATE;

-- Creating index for FOREIGN KEY 'FK_ParseStep_RuleInstance'
CREATE INDEX "IX_FK_ParseStep_RuleInstance"
ON "SYSTEM"."ParseSteps"
   ("RuleInstanceId");

-- Creating foreign key on "PlateReplaceSetId" in table 'PlateReplaceSteps'
ALTER TABLE "SYSTEM"."PlateReplaceSteps"
ADD CONSTRAINT "FK_PlateReplaceStep_PlateReplaceSet"
   FOREIGN KEY ("PlateReplaceSetId")
   REFERENCES "SYSTEM"."PlateReplaceSets"
       ("PlateReplaceSetId")
   ENABLE
   VALIDATE;

-- Creating index for FOREIGN KEY 'FK_PlateReplaceStep_PlateReplaceSet'
CREATE INDEX "IX_FK_PlateReplaceStep_PlateReplaceSet"
ON "SYSTEM"."PlateReplaceSteps"
   ("PlateReplaceSetId");

-- Creating foreign key on "PlateReplaceSetId" in table 'StatePlateReplaceSets'
ALTER TABLE "SYSTEM"."StatePlateReplaceSets"
ADD CONSTRAINT "FK_StatePlateReplaceSet_PlateReplaceSet"
   FOREIGN KEY ("PlateReplaceSetId")
   REFERENCES "SYSTEM"."PlateReplaceSets"
       ("PlateReplaceSetId")
   ENABLE
   VALIDATE;

-- Creating index for FOREIGN KEY 'FK_StatePlateReplaceSet_PlateReplaceSet'
CREATE INDEX "IX_FK_StatePlateReplaceSet_PlateReplaceSet"
ON "SYSTEM"."StatePlateReplaceSets"
   ("PlateReplaceSetId");

-- Creating foreign key on "ParentPlateTypeId" in table 'PlateTypes'
ALTER TABLE "SYSTEM"."PlateTypes"
ADD CONSTRAINT "FK_PlateType_PlateType"
   FOREIGN KEY ("ParentPlateTypeId")
   REFERENCES "SYSTEM"."PlateTypes"
       ("PlateTypeId")
   ENABLE
   VALIDATE;

-- Creating index for FOREIGN KEY 'FK_PlateType_PlateType'
CREATE INDEX "IX_FK_PlateType_PlateType"
ON "SYSTEM"."PlateTypes"
   ("ParentPlateTypeId");

-- Creating foreign key on "StateId" in table 'PlateTypes'
ALTER TABLE "SYSTEM"."PlateTypes"
ADD CONSTRAINT "FK_PlateType_State"
   FOREIGN KEY ("StateId")
   REFERENCES "SYSTEM"."States"
       ("StateId")
   ENABLE
   VALIDATE;

-- Creating index for FOREIGN KEY 'FK_PlateType_State'
CREATE INDEX "IX_FK_PlateType_State"
ON "SYSTEM"."PlateTypes"
   ("StateId");

-- Creating foreign key on "CreatedBy" in table 'PlateTypes'
ALTER TABLE "SYSTEM"."PlateTypes"
ADD CONSTRAINT "FK_PlateType_UserTable"
   FOREIGN KEY ("CreatedBy")
   REFERENCES "SYSTEM"."UserTables"
       ("UserId")
   ENABLE
   VALIDATE;

-- Creating index for FOREIGN KEY 'FK_PlateType_UserTable'
CREATE INDEX "IX_FK_PlateType_UserTable"
ON "SYSTEM"."PlateTypes"
   ("CreatedBy");

-- Creating foreign key on "ModifiedBy" in table 'PlateTypes'
ALTER TABLE "SYSTEM"."PlateTypes"
ADD CONSTRAINT "FK_PlateType_UserTable1"
   FOREIGN KEY ("ModifiedBy")
   REFERENCES "SYSTEM"."UserTables"
       ("UserId")
   ENABLE
   VALIDATE;

-- Creating index for FOREIGN KEY 'FK_PlateType_UserTable1'
CREATE INDEX "IX_FK_PlateType_UserTable1"
ON "SYSTEM"."PlateTypes"
   ("ModifiedBy");

-- Creating foreign key on "PlateTypeId" in table 'PlateTypeClientXlats'
ALTER TABLE "SYSTEM"."PlateTypeClientXlats"
ADD CONSTRAINT "FK_PlateTypeClientXlat_PlateType"
   FOREIGN KEY ("PlateTypeId")
   REFERENCES "SYSTEM"."PlateTypes"
       ("PlateTypeId")
   ENABLE
   VALIDATE;

-- Creating index for FOREIGN KEY 'FK_PlateTypeClientXlat_PlateType'
CREATE INDEX "IX_FK_PlateTypeClientXlat_PlateType"
ON "SYSTEM"."PlateTypeClientXlats"
   ("PlateTypeId");

-- Creating foreign key on "PlateTypeId" in table 'PlateTypeDataSrcXlats'
ALTER TABLE "SYSTEM"."PlateTypeDataSrcXlats"
ADD CONSTRAINT "FK_PlateTypeDataSrcXlat_PlateType"
   FOREIGN KEY ("PlateTypeId")
   REFERENCES "SYSTEM"."PlateTypes"
       ("PlateTypeId")
   ENABLE
   VALIDATE;

-- Creating index for FOREIGN KEY 'FK_PlateTypeDataSrcXlat_PlateType'
CREATE INDEX "IX_FK_PlateTypeDataSrcXlat_PlateType"
ON "SYSTEM"."PlateTypeDataSrcXlats"
   ("PlateTypeId");

-- Creating foreign key on "PlateTypeId" in table 'RequestRecords'
ALTER TABLE "SYSTEM"."RequestRecords"
ADD CONSTRAINT "FK_RequestRecord_PlateType"
   FOREIGN KEY ("PlateTypeId")
   REFERENCES "SYSTEM"."PlateTypes"
       ("PlateTypeId")
   ENABLE
   VALIDATE;

-- Creating index for FOREIGN KEY 'FK_RequestRecord_PlateType'
CREATE INDEX "IX_FK_RequestRecord_PlateType"
ON "SYSTEM"."RequestRecords"
   ("PlateTypeId");

-- Creating foreign key on "ClientId" in table 'PlateTypeClientXlats'
ALTER TABLE "SYSTEM"."PlateTypeClientXlats"
ADD CONSTRAINT "FK_PlateTypeClientXlat_Client"
   FOREIGN KEY ("ClientId")
   REFERENCES "SYSTEM"."Clients"
       ("ClientId")
   ENABLE
   VALIDATE;

-- Creating index for FOREIGN KEY 'FK_PlateTypeClientXlat_Client'
CREATE INDEX "IX_FK_PlateTypeClientXlat_Client"
ON "SYSTEM"."PlateTypeClientXlats"
   ("ClientId");

-- Creating foreign key on "DirectionId" in table 'PlateTypeClientXlats'
ALTER TABLE "SYSTEM"."PlateTypeClientXlats"
ADD CONSTRAINT "FK_PlateTypeClientXlat_Direction"
   FOREIGN KEY ("DirectionId")
   REFERENCES "SYSTEM"."Directions"
       ("DirectionId")
   ENABLE
   VALIDATE;

-- Creating index for FOREIGN KEY 'FK_PlateTypeClientXlat_Direction'
CREATE INDEX "IX_FK_PlateTypeClientXlat_Direction"
ON "SYSTEM"."PlateTypeClientXlats"
   ("DirectionId");

-- Creating foreign key on "DirectionId" in table 'PlateTypeDataSrcXlats'
ALTER TABLE "SYSTEM"."PlateTypeDataSrcXlats"
ADD CONSTRAINT "FK_PlateTypeDataSrcXlat_Direction"
   FOREIGN KEY ("DirectionId")
   REFERENCES "SYSTEM"."Directions"
       ("DirectionId")
   ENABLE
   VALIDATE;

-- Creating index for FOREIGN KEY 'FK_PlateTypeDataSrcXlat_Direction'
CREATE INDEX "IX_FK_PlateTypeDataSrcXlat_Direction"
ON "SYSTEM"."PlateTypeDataSrcXlats"
   ("DirectionId");

-- Creating foreign key on "PlateValidationSetId" in table 'PlateValidationSteps'
ALTER TABLE "SYSTEM"."PlateValidationSteps"
ADD CONSTRAINT "FK_PlateValidationStep_PlateValidationSet"
   FOREIGN KEY ("PlateValidationSetId")
   REFERENCES "SYSTEM"."PlateValidationSets"
       ("PlateValidationSetId")
   ENABLE
   VALIDATE;

-- Creating index for FOREIGN KEY 'FK_PlateValidationStep_PlateValidationSet'
CREATE INDEX "IX_FK_PlateValidationStep_PlateValidationSet"
ON "SYSTEM"."PlateValidationSteps"
   ("PlateValidationSetId");

-- Creating foreign key on "PlateValidationSetId" in table 'StatePlateValidationSets'
ALTER TABLE "SYSTEM"."StatePlateValidationSets"
ADD CONSTRAINT "FK_StatePlateValidationSet_PlateValidationSet"
   FOREIGN KEY ("PlateValidationSetId")
   REFERENCES "SYSTEM"."PlateValidationSets"
       ("PlateValidationSetId")
   ENABLE
   VALIDATE;

-- Creating index for FOREIGN KEY 'FK_StatePlateValidationSet_PlateValidationSet'
CREATE INDEX "IX_FK_StatePlateValidationSet_PlateValidationSet"
ON "SYSTEM"."StatePlateValidationSets"
   ("PlateValidationSetId");

-- Creating foreign key on "ReplacePatternTypeId" in table 'PlateReplaceSteps'
ALTER TABLE "SYSTEM"."PlateReplaceSteps"
ADD CONSTRAINT "FK_PlateReplaceStep_ReplacePatternType"
   FOREIGN KEY ("ReplacePatternTypeId")
   REFERENCES "SYSTEM"."ReplacePatternTypes"
       ("ReplacePatternTypeId")
   ENABLE
   VALIDATE;

-- Creating index for FOREIGN KEY 'FK_PlateReplaceStep_ReplacePatternType'
CREATE INDEX "IX_FK_PlateReplaceStep_ReplacePatternType"
ON "SYSTEM"."PlateReplaceSteps"
   ("ReplacePatternTypeId");

-- Creating foreign key on "RequestBatchTypeId" in table 'ClientRequestBatches'
ALTER TABLE "SYSTEM"."ClientRequestBatches"
ADD CONSTRAINT "FK_ClientRequestBatch_RequestBatchType"
   FOREIGN KEY ("RequestBatchTypeId")
   REFERENCES "SYSTEM"."RequestBatchTypes"
       ("RequestBatchTypeId")
   ENABLE
   VALIDATE;

-- Creating index for FOREIGN KEY 'FK_ClientRequestBatch_RequestBatchType'
CREATE INDEX "IX_FK_ClientRequestBatch_RequestBatchType"
ON "SYSTEM"."ClientRequestBatches"
   ("RequestBatchTypeId");

-- Creating foreign key on "NormalizedObjectDefId" in table 'RequestFormatSteps'
ALTER TABLE "SYSTEM"."RequestFormatSteps"
ADD CONSTRAINT "FK_RequestFormatStep_NormalizedObjectDef"
   FOREIGN KEY ("NormalizedObjectDefId")
   REFERENCES "SYSTEM"."NormalizedObjectDefs"
       ("NormalizedObjectDefId")
   ENABLE
   VALIDATE;

-- Creating index for FOREIGN KEY 'FK_RequestFormatStep_NormalizedObjectDef'
CREATE INDEX "IX_FK_RequestFormatStep_NormalizedObjectDef"
ON "SYSTEM"."RequestFormatSteps"
   ("NormalizedObjectDefId");

-- Creating foreign key on "RequestFormatSetId" in table 'RequestFormatSteps'
ALTER TABLE "SYSTEM"."RequestFormatSteps"
ADD CONSTRAINT "FK_RequestFormatStep_RequestFormatSet"
   FOREIGN KEY ("RequestFormatSetId")
   REFERENCES "SYSTEM"."RequestFormatSets"
       ("RequestFormatSetId")
   ENABLE
   VALIDATE;

-- Creating index for FOREIGN KEY 'FK_RequestFormatStep_RequestFormatSet'
CREATE INDEX "IX_FK_RequestFormatStep_RequestFormatSet"
ON "SYSTEM"."RequestFormatSteps"
   ("RequestFormatSetId");

-- Creating foreign key on "StepTypeId" in table 'RequestFormatSteps'
ALTER TABLE "SYSTEM"."RequestFormatSteps"
ADD CONSTRAINT "FK_RequestFormatStep_ParseStepType"
   FOREIGN KEY ("StepTypeId")
   REFERENCES "SYSTEM"."StepTypes"
       ("StepTypeId")
   ENABLE
   VALIDATE;

-- Creating index for FOREIGN KEY 'FK_RequestFormatStep_ParseStepType'
CREATE INDEX "IX_FK_RequestFormatStep_ParseStepType"
ON "SYSTEM"."RequestFormatSteps"
   ("StepTypeId");

-- Creating foreign key on "RuleInstanceId" in table 'RequestFormatSteps'
ALTER TABLE "SYSTEM"."RequestFormatSteps"
ADD CONSTRAINT "FK_RequestFormatStep_RuleInstance"
   FOREIGN KEY ("RuleInstanceId")
   REFERENCES "SYSTEM"."RuleInstances"
       ("RuleInstanceId")
   ENABLE
   VALIDATE;

-- Creating index for FOREIGN KEY 'FK_RequestFormatStep_RuleInstance'
CREATE INDEX "IX_FK_RequestFormatStep_RuleInstance"
ON "SYSTEM"."RequestFormatSteps"
   ("RuleInstanceId");

-- Creating foreign key on "NormalizedObjectDefId" in table 'RequestRuleSteps'
ALTER TABLE "SYSTEM"."RequestRuleSteps"
ADD CONSTRAINT "FK_RequestRuleStep_NormalizedObjectDef"
   FOREIGN KEY ("NormalizedObjectDefId")
   REFERENCES "SYSTEM"."NormalizedObjectDefs"
       ("NormalizedObjectDefId")
   ENABLE
   VALIDATE;

-- Creating index for FOREIGN KEY 'FK_RequestRuleStep_NormalizedObjectDef'
CREATE INDEX "IX_FK_RequestRuleStep_NormalizedObjectDef"
ON "SYSTEM"."RequestRuleSteps"
   ("NormalizedObjectDefId");

-- Creating foreign key on "RequestRuleSetId" in table 'RequestRuleSteps'
ALTER TABLE "SYSTEM"."RequestRuleSteps"
ADD CONSTRAINT "FK_RequestRuleStep_RequestRuleSet"
   FOREIGN KEY ("RequestRuleSetId")
   REFERENCES "SYSTEM"."RequestRuleSets"
       ("RequestRuleSetId")
   ENABLE
   VALIDATE;

-- Creating index for FOREIGN KEY 'FK_RequestRuleStep_RequestRuleSet'
CREATE INDEX "IX_FK_RequestRuleStep_RequestRuleSet"
ON "SYSTEM"."RequestRuleSteps"
   ("RequestRuleSetId");

-- Creating foreign key on "ErrorRequestRuleStepId" in table 'RequestRuleSteps'
ALTER TABLE "SYSTEM"."RequestRuleSteps"
ADD CONSTRAINT "FK_RequestRuleStep_RequestRuleStep"
   FOREIGN KEY ("ErrorRequestRuleStepId")
   REFERENCES "SYSTEM"."RequestRuleSteps"
       ("RequestRuleStepId")
   ENABLE
   VALIDATE;

-- Creating index for FOREIGN KEY 'FK_RequestRuleStep_RequestRuleStep'
CREATE INDEX "IX_FK_RequestRuleStep_RequestRuleStep"
ON "SYSTEM"."RequestRuleSteps"
   ("ErrorRequestRuleStepId");

-- Creating foreign key on "NextRequestRuleStepId" in table 'RequestRuleSteps'
ALTER TABLE "SYSTEM"."RequestRuleSteps"
ADD CONSTRAINT "FK_RequestRuleStep_RequestRuleStep1"
   FOREIGN KEY ("NextRequestRuleStepId")
   REFERENCES "SYSTEM"."RequestRuleSteps"
       ("RequestRuleStepId")
   ENABLE
   VALIDATE;

-- Creating index for FOREIGN KEY 'FK_RequestRuleStep_RequestRuleStep1'
CREATE INDEX "IX_FK_RequestRuleStep_RequestRuleStep1"
ON "SYSTEM"."RequestRuleSteps"
   ("NextRequestRuleStepId");

-- Creating foreign key on "RuleInstanceId" in table 'RequestRuleSteps'
ALTER TABLE "SYSTEM"."RequestRuleSteps"
ADD CONSTRAINT "FK_RequestRuleStep_RuleInstance"
   FOREIGN KEY ("RuleInstanceId")
   REFERENCES "SYSTEM"."RuleInstances"
       ("RuleInstanceId")
   ENABLE
   VALIDATE;

-- Creating index for FOREIGN KEY 'FK_RequestRuleStep_RuleInstance'
CREATE INDEX "IX_FK_RequestRuleStep_RuleInstance"
ON "SYSTEM"."RequestRuleSteps"
   ("RuleInstanceId");

-- Creating foreign key on "StepTypeId" in table 'RequestRuleSteps'
ALTER TABLE "SYSTEM"."RequestRuleSteps"
ADD CONSTRAINT "FK_RequestRuleStep_StepType"
   FOREIGN KEY ("StepTypeId")
   REFERENCES "SYSTEM"."StepTypes"
       ("StepTypeId")
   ENABLE
   VALIDATE;

-- Creating index for FOREIGN KEY 'FK_RequestRuleStep_StepType'
CREATE INDEX "IX_FK_RequestRuleStep_StepType"
ON "SYSTEM"."RequestRuleSteps"
   ("StepTypeId");

-- Creating foreign key on "RequestStatusId" in table 'RequestRecords'
ALTER TABLE "SYSTEM"."RequestRecords"
ADD CONSTRAINT "FK_RequestRecord_RequestStatus"
   FOREIGN KEY ("RequestStatusId")
   REFERENCES "SYSTEM"."RequestStatus"
       ("RequestStatusId")
   ENABLE
   VALIDATE;

-- Creating index for FOREIGN KEY 'FK_RequestRecord_RequestStatus'
CREATE INDEX "IX_FK_RequestRecord_RequestStatus"
ON "SYSTEM"."RequestRecords"
   ("RequestStatusId");

-- Creating foreign key on "RequestStatusId" in table 'RequestRecordStatus'
ALTER TABLE "SYSTEM"."RequestRecordStatus"
ADD CONSTRAINT "FK_RequestRecordStatus_RequestStatus"
   FOREIGN KEY ("RequestStatusId")
   REFERENCES "SYSTEM"."RequestStatus"
       ("RequestStatusId")
   ENABLE
   VALIDATE;

-- Creating index for FOREIGN KEY 'FK_RequestRecordStatus_RequestStatus'
CREATE INDEX "IX_FK_RequestRecordStatus_RequestStatus"
ON "SYSTEM"."RequestRecordStatus"
   ("RequestStatusId");

-- Creating foreign key on "NormalizedObjectDefId" in table 'ResponseFormatSteps'
ALTER TABLE "SYSTEM"."ResponseFormatSteps"
ADD CONSTRAINT "FK_ResponseFormatStep_NormalizedObjectDef"
   FOREIGN KEY ("NormalizedObjectDefId")
   REFERENCES "SYSTEM"."NormalizedObjectDefs"
       ("NormalizedObjectDefId")
   ENABLE
   VALIDATE;

-- Creating index for FOREIGN KEY 'FK_ResponseFormatStep_NormalizedObjectDef'
CREATE INDEX "IX_FK_ResponseFormatStep_NormalizedObjectDef"
ON "SYSTEM"."ResponseFormatSteps"
   ("NormalizedObjectDefId");

-- Creating foreign key on "ResponseFormatSetId" in table 'ResponseFormatSteps'
ALTER TABLE "SYSTEM"."ResponseFormatSteps"
ADD CONSTRAINT "FK_ResponseFormatStep_ResponseFormatSet"
   FOREIGN KEY ("ResponseFormatSetId")
   REFERENCES "SYSTEM"."ResponseFormatSets"
       ("ResponseFormatSetId")
   ENABLE
   VALIDATE;

-- Creating index for FOREIGN KEY 'FK_ResponseFormatStep_ResponseFormatSet'
CREATE INDEX "IX_FK_ResponseFormatStep_ResponseFormatSet"
ON "SYSTEM"."ResponseFormatSteps"
   ("ResponseFormatSetId");

-- Creating foreign key on "RuleInstanceId" in table 'ResponseFormatSteps'
ALTER TABLE "SYSTEM"."ResponseFormatSteps"
ADD CONSTRAINT "FK_ResponseFormatStep_RuleInstance"
   FOREIGN KEY ("RuleInstanceId")
   REFERENCES "SYSTEM"."RuleInstances"
       ("RuleInstanceId")
   ENABLE
   VALIDATE;

-- Creating index for FOREIGN KEY 'FK_ResponseFormatStep_RuleInstance'
CREATE INDEX "IX_FK_ResponseFormatStep_RuleInstance"
ON "SYSTEM"."ResponseFormatSteps"
   ("RuleInstanceId");

-- Creating foreign key on "StepTypeId" in table 'ResponseFormatSteps'
ALTER TABLE "SYSTEM"."ResponseFormatSteps"
ADD CONSTRAINT "FK_ResponseFormatStep_StepType"
   FOREIGN KEY ("StepTypeId")
   REFERENCES "SYSTEM"."StepTypes"
       ("StepTypeId")
   ENABLE
   VALIDATE;

-- Creating index for FOREIGN KEY 'FK_ResponseFormatStep_StepType'
CREATE INDEX "IX_FK_ResponseFormatStep_StepType"
ON "SYSTEM"."ResponseFormatSteps"
   ("StepTypeId");

-- Creating foreign key on "ResponseRecordDataStatusId" in table 'ResponseRecords'
ALTER TABLE "SYSTEM"."ResponseRecords"
ADD CONSTRAINT "FK_ResponseRecord_ResponseRecordDataStatus"
   FOREIGN KEY ("ResponseRecordDataStatusId")
   REFERENCES "SYSTEM"."ResponseRecordDataStatus"
       ("ResponseRecordDataStatusId")
   ENABLE
   VALIDATE;

-- Creating index for FOREIGN KEY 'FK_ResponseRecord_ResponseRecordDataStatus'
CREATE INDEX "IX_FK_ResponseRecord_ResponseRecordDataStatus"
ON "SYSTEM"."ResponseRecords"
   ("ResponseRecordDataStatusId");

-- Creating foreign key on "ResponseRecordErrorId" in table 'ResponseRecords'
ALTER TABLE "SYSTEM"."ResponseRecords"
ADD CONSTRAINT "FK_ResponseRecord_ResponseRecordError"
   FOREIGN KEY ("ResponseRecordErrorId")
   REFERENCES "SYSTEM"."ResponseRecordErrors"
       ("ResponseRecordErrorId")
   ENABLE
   VALIDATE;

-- Creating index for FOREIGN KEY 'FK_ResponseRecord_ResponseRecordError'
CREATE INDEX "IX_FK_ResponseRecord_ResponseRecordError"
ON "SYSTEM"."ResponseRecords"
   ("ResponseRecordErrorId");

-- Creating foreign key on "ResponseRecordId" in table 'ResponseRecordStatus'
ALTER TABLE "SYSTEM"."ResponseRecordStatus"
ADD CONSTRAINT "FK_ResponseRecordStatus_ResponseRecord"
   FOREIGN KEY ("ResponseRecordId")
   REFERENCES "SYSTEM"."ResponseRecords"
       ("ResponseRecordId")
   ENABLE
   VALIDATE;

-- Creating index for FOREIGN KEY 'FK_ResponseRecordStatus_ResponseRecord'
CREATE INDEX "IX_FK_ResponseRecordStatus_ResponseRecord"
ON "SYSTEM"."ResponseRecordStatus"
   ("ResponseRecordId");

-- Creating foreign key on "ResponseStatusId" in table 'ResponseRecordStatus'
ALTER TABLE "SYSTEM"."ResponseRecordStatus"
ADD CONSTRAINT "FK_ResponseRecordStatus_ResponseStatus"
   FOREIGN KEY ("ResponseStatusId")
   REFERENCES "SYSTEM"."ResponseStatus"
       ("ResponseStatusId")
   ENABLE
   VALIDATE;

-- Creating index for FOREIGN KEY 'FK_ResponseRecordStatus_ResponseStatus'
CREATE INDEX "IX_FK_ResponseRecordStatus_ResponseStatus"
ON "SYSTEM"."ResponseRecordStatus"
   ("ResponseStatusId");

-- Creating foreign key on "ResponseStatusId" in table 'ResponseRecords'
ALTER TABLE "SYSTEM"."ResponseRecords"
ADD CONSTRAINT "FK_ResponseRecord_ResponseStatus"
   FOREIGN KEY ("ResponseStatusId")
   REFERENCES "SYSTEM"."ResponseStatus"
       ("ResponseStatusId")
   ENABLE
   VALIDATE;

-- Creating index for FOREIGN KEY 'FK_ResponseRecord_ResponseStatus'
CREATE INDEX "IX_FK_ResponseRecord_ResponseStatus"
ON "SYSTEM"."ResponseRecords"
   ("ResponseStatusId");

-- Creating foreign key on "ActionTypeId" in table 'RuleActions'
ALTER TABLE "SYSTEM"."RuleActions"
ADD CONSTRAINT "FK_ParseAction_ActionType"
   FOREIGN KEY ("ActionTypeId")
   REFERENCES "SYSTEM"."ActionTypes"
       ("ActionTypeId")
   ENABLE
   VALIDATE;

-- Creating index for FOREIGN KEY 'FK_ParseAction_ActionType'
CREATE INDEX "IX_FK_ParseAction_ActionType"
ON "SYSTEM"."RuleActions"
   ("ActionTypeId");

-- Creating foreign key on "StepTypeId" in table 'RuleActions'
ALTER TABLE "SYSTEM"."RuleActions"
ADD CONSTRAINT "FK_ParseAction_ParseStepType"
   FOREIGN KEY ("StepTypeId")
   REFERENCES "SYSTEM"."StepTypes"
       ("StepTypeId")
   ENABLE
   VALIDATE;

-- Creating index for FOREIGN KEY 'FK_ParseAction_ParseStepType'
CREATE INDEX "IX_FK_ParseAction_ParseStepType"
ON "SYSTEM"."RuleActions"
   ("StepTypeId");

-- Creating foreign key on "TargetTypeId" in table 'RuleActions'
ALTER TABLE "SYSTEM"."RuleActions"
ADD CONSTRAINT "FK_ParseAction_TargetType"
   FOREIGN KEY ("TargetTypeId")
   REFERENCES "SYSTEM"."TargetTypes"
       ("TargetTypeId")
   ENABLE
   VALIDATE;

-- Creating index for FOREIGN KEY 'FK_ParseAction_TargetType'
CREATE INDEX "IX_FK_ParseAction_TargetType"
ON "SYSTEM"."RuleActions"
   ("TargetTypeId");

-- Creating foreign key on "RuleActionId" in table 'RuleInstances'
ALTER TABLE "SYSTEM"."RuleInstances"
ADD CONSTRAINT "FK_ParseRule_ParseAction"
   FOREIGN KEY ("RuleActionId")
   REFERENCES "SYSTEM"."RuleActions"
       ("RuleActionId")
   ENABLE
   VALIDATE;

-- Creating index for FOREIGN KEY 'FK_ParseRule_ParseAction'
CREATE INDEX "IX_FK_ParseRule_ParseAction"
ON "SYSTEM"."RuleInstances"
   ("RuleActionId");

-- Creating foreign key on "RuleInstanceId" in table 'ExtractSteps'
ALTER TABLE "SYSTEM"."ExtractSteps"
ADD CONSTRAINT "FK_ExtractStep_RuleInstance"
   FOREIGN KEY ("RuleInstanceId")
   REFERENCES "SYSTEM"."RuleInstances"
       ("RuleInstanceId")
   ENABLE
   VALIDATE;

-- Creating index for FOREIGN KEY 'FK_ExtractStep_RuleInstance'
CREATE INDEX "IX_FK_ExtractStep_RuleInstance"
ON "SYSTEM"."ExtractSteps"
   ("RuleInstanceId");

-- Creating foreign key on "HomeStateId" in table 'Clients'
ALTER TABLE "SYSTEM"."Clients"
ADD CONSTRAINT "FK_Client_State"
   FOREIGN KEY ("HomeStateId")
   REFERENCES "SYSTEM"."States"
       ("StateId")
   ENABLE
   VALIDATE;

-- Creating index for FOREIGN KEY 'FK_Client_State'
CREATE INDEX "IX_FK_Client_State"
ON "SYSTEM"."Clients"
   ("HomeStateId");

-- Creating foreign key on "StepTypeId" in table 'ExtractSteps'
ALTER TABLE "SYSTEM"."ExtractSteps"
ADD CONSTRAINT "FK_ExtractStep_ParseStepType"
   FOREIGN KEY ("StepTypeId")
   REFERENCES "SYSTEM"."StepTypes"
       ("StepTypeId")
   ENABLE
   VALIDATE;

-- Creating index for FOREIGN KEY 'FK_ExtractStep_ParseStepType'
CREATE INDEX "IX_FK_ExtractStep_ParseStepType"
ON "SYSTEM"."ExtractSteps"
   ("StepTypeId");

-- Creating foreign key on "TargetTypeId" in table 'ExtractSets'
ALTER TABLE "SYSTEM"."ExtractSets"
ADD CONSTRAINT "FK_ExtractSet_TargetType"
   FOREIGN KEY ("TargetTypeId")
   REFERENCES "SYSTEM"."TargetTypes"
       ("TargetTypeId")
   ENABLE
   VALIDATE;

-- Creating index for FOREIGN KEY 'FK_ExtractSet_TargetType'
CREATE INDEX "IX_FK_ExtractSet_TargetType"
ON "SYSTEM"."ExtractSets"
   ("TargetTypeId");

-- Creating foreign key on "TargetTypeId" in table 'IdentificationSets'
ALTER TABLE "SYSTEM"."IdentificationSets"
ADD CONSTRAINT "FK_IdentificationSet_TargetType"
   FOREIGN KEY ("TargetTypeId")
   REFERENCES "SYSTEM"."TargetTypes"
       ("TargetTypeId")
   ENABLE
   VALIDATE;

-- Creating index for FOREIGN KEY 'FK_IdentificationSet_TargetType'
CREATE INDEX "IX_FK_IdentificationSet_TargetType"
ON "SYSTEM"."IdentificationSets"
   ("TargetTypeId");

-- Creating foreign key on "TargetTypeId" in table 'ParseSets'
ALTER TABLE "SYSTEM"."ParseSets"
ADD CONSTRAINT "FK_ParseSet_TargetType"
   FOREIGN KEY ("TargetTypeId")
   REFERENCES "SYSTEM"."TargetTypes"
       ("TargetTypeId")
   ENABLE
   VALIDATE;

-- Creating index for FOREIGN KEY 'FK_ParseSet_TargetType'
CREATE INDEX "IX_FK_ParseSet_TargetType"
ON "SYSTEM"."ParseSets"
   ("TargetTypeId");

-- Creating foreign key on "TargetTypeId" in table 'RequestFormatSets'
ALTER TABLE "SYSTEM"."RequestFormatSets"
ADD CONSTRAINT "FK_RequestFormatSet_TargetType"
   FOREIGN KEY ("TargetTypeId")
   REFERENCES "SYSTEM"."TargetTypes"
       ("TargetTypeId")
   ENABLE
   VALIDATE;

-- Creating index for FOREIGN KEY 'FK_RequestFormatSet_TargetType'
CREATE INDEX "IX_FK_RequestFormatSet_TargetType"
ON "SYSTEM"."RequestFormatSets"
   ("TargetTypeId");

-- Creating foreign key on "TargetTypeId" in table 'ResponseFormatSets'
ALTER TABLE "SYSTEM"."ResponseFormatSets"
ADD CONSTRAINT "FK_ResponseFormatSet_TargetType"
   FOREIGN KEY ("TargetTypeId")
   REFERENCES "SYSTEM"."TargetTypes"
       ("TargetTypeId")
   ENABLE
   VALIDATE;

-- Creating index for FOREIGN KEY 'FK_ResponseFormatSet_TargetType'
CREATE INDEX "IX_FK_ResponseFormatSet_TargetType"
ON "SYSTEM"."ResponseFormatSets"
   ("TargetTypeId");

-- Creating foreign key on "RuleValueTimeSpanType" in table 'DataSrcBatchRules'
ALTER TABLE "SYSTEM"."DataSrcBatchRules"
ADD CONSTRAINT "FK_DataSrcBatchRules_TimeSpanType"
   FOREIGN KEY ("RuleValueTimeSpanType")
   REFERENCES "SYSTEM"."TimeSpanTypes"
       ("TimeSpanTypeId")
   ENABLE
   VALIDATE;

-- Creating index for FOREIGN KEY 'FK_DataSrcBatchRules_TimeSpanType'
CREATE INDEX "IX_FK_DataSrcBatchRules_TimeSpanType"
ON "SYSTEM"."DataSrcBatchRules"
   ("RuleValueTimeSpanType");

-- Creating foreign key on "UserTypeId" in table 'UserTables'
ALTER TABLE "SYSTEM"."UserTables"
ADD CONSTRAINT "FK_User_UserType"
   FOREIGN KEY ("UserTypeId")
   REFERENCES "SYSTEM"."UserTypes"
       ("UserTypeId")
   ENABLE
   VALIDATE;

-- Creating index for FOREIGN KEY 'FK_User_UserType'
CREATE INDEX "IX_FK_User_UserType"
ON "SYSTEM"."UserTables"
   ("UserTypeId");

-- Creating foreign key on "ValidationOperatorId" in table 'ValidationSetFields'
ALTER TABLE "SYSTEM"."ValidationSetFields"
ADD CONSTRAINT "FK_ValidationSetField_ValidationOperator"
   FOREIGN KEY ("ValidationOperatorId")
   REFERENCES "SYSTEM"."ValidationOperators"
       ("ValidationOperatorId")
   ENABLE
   VALIDATE;

-- Creating index for FOREIGN KEY 'FK_ValidationSetField_ValidationOperator'
CREATE INDEX "IX_FK_ValidationSetField_ValidationOperator"
ON "SYSTEM"."ValidationSetFields"
   ("ValidationOperatorId");

-- Creating foreign key on "ValidationPatternTypeId" in table 'PlateValidationSteps'
ALTER TABLE "SYSTEM"."PlateValidationSteps"
ADD CONSTRAINT "FK_PlateValidationStep_ValidationPatternType"
   FOREIGN KEY ("ValidationPatternTypeId")
   REFERENCES "SYSTEM"."ValidationPatternTypes"
       ("ValidationPatternTypeId")
   ENABLE
   VALIDATE;

-- Creating index for FOREIGN KEY 'FK_PlateValidationStep_ValidationPatternType'
CREATE INDEX "IX_FK_PlateValidationStep_ValidationPatternType"
ON "SYSTEM"."PlateValidationSteps"
   ("ValidationPatternTypeId");

-- Creating foreign key on "NormalizedObjectDefId" in table 'ValidationSetFields'
ALTER TABLE "SYSTEM"."ValidationSetFields"
ADD CONSTRAINT "FK_ValidationSetField_NormalizedObjectDef"
   FOREIGN KEY ("NormalizedObjectDefId")
   REFERENCES "SYSTEM"."NormalizedObjectDefs"
       ("NormalizedObjectDefId")
   ENABLE
   VALIDATE;

-- Creating index for FOREIGN KEY 'FK_ValidationSetField_NormalizedObjectDef'
CREATE INDEX "IX_FK_ValidationSetField_NormalizedObjectDef"
ON "SYSTEM"."ValidationSetFields"
   ("NormalizedObjectDefId");

-- Creating foreign key on "ValidationSetTypeId" in table 'ValidationSets'
ALTER TABLE "SYSTEM"."ValidationSets"
ADD CONSTRAINT "FK_ValidationSet_ValidationSetType"
   FOREIGN KEY ("ValidationSetTypeId")
   REFERENCES "SYSTEM"."ValidationSetTypes"
       ("ValidationSetTypeId")
   ENABLE
   VALIDATE;

-- Creating index for FOREIGN KEY 'FK_ValidationSet_ValidationSetType'
CREATE INDEX "IX_FK_ValidationSet_ValidationSetType"
ON "SYSTEM"."ValidationSets"
   ("ValidationSetTypeId");

-- Creating foreign key on "ValidationSetFieldId" in table 'ValidationTerms'
ALTER TABLE "SYSTEM"."ValidationTerms"
ADD CONSTRAINT "FK_ValidationTerm_ValidationSetField"
   FOREIGN KEY ("ValidationSetFieldId")
   REFERENCES "SYSTEM"."ValidationSetFields"
       ("ValidationSetFieldId")
   ENABLE
   VALIDATE;

-- Creating index for FOREIGN KEY 'FK_ValidationTerm_ValidationSetField'
CREATE INDEX "IX_FK_ValidationTerm_ValidationSetField"
ON "SYSTEM"."ValidationTerms"
   ("ValidationSetFieldId");

-- Creating foreign key on "ValidationTypeId" in table 'ValidationTerms'
ALTER TABLE "SYSTEM"."ValidationTerms"
ADD CONSTRAINT "FK_ValidationTerm_ValidationType"
   FOREIGN KEY ("ValidationTypeId")
   REFERENCES "SYSTEM"."ValidationTypes"
       ("ValidationTypeId")
   ENABLE
   VALIDATE;

-- Creating index for FOREIGN KEY 'FK_ValidationTerm_ValidationType'
CREATE INDEX "IX_FK_ValidationTerm_ValidationType"
ON "SYSTEM"."ValidationTerms"
   ("ValidationTypeId");

-- Creating foreign key on "VehicleMakeId" in table 'ClientMakeFamilyMakes'
ALTER TABLE "SYSTEM"."ClientMakeFamilyMakes"
ADD CONSTRAINT "FK_ClientMakeFamilyMake_VehicleMake"
   FOREIGN KEY ("VehicleMakeId")
   REFERENCES "SYSTEM"."VehicleMakes"
       ("VehicleMakeId")
   ENABLE
   VALIDATE;

-- Creating index for FOREIGN KEY 'FK_ClientMakeFamilyMake_VehicleMake'
CREATE INDEX "IX_FK_ClientMakeFamilyMake_VehicleMake"
ON "SYSTEM"."ClientMakeFamilyMakes"
   ("VehicleMakeId");

-- Creating foreign key on "VehicleMakeId" in table 'DataSrcMakeFamilyMakes'
ALTER TABLE "SYSTEM"."DataSrcMakeFamilyMakes"
ADD CONSTRAINT "FK_DataSrcMakeFamilyMake_VehicleMake"
   FOREIGN KEY ("VehicleMakeId")
   REFERENCES "SYSTEM"."VehicleMakes"
       ("VehicleMakeId")
   ENABLE
   VALIDATE;

-- Creating index for FOREIGN KEY 'FK_DataSrcMakeFamilyMake_VehicleMake'
CREATE INDEX "IX_FK_DataSrcMakeFamilyMake_VehicleMake"
ON "SYSTEM"."DataSrcMakeFamilyMakes"
   ("VehicleMakeId");

-- Creating foreign key on "NormalizedVehicleMakeId" in table 'RequestRecords'
ALTER TABLE "SYSTEM"."RequestRecords"
ADD CONSTRAINT "FK_RequestRecord_VehicleMake"
   FOREIGN KEY ("NormalizedVehicleMakeId")
   REFERENCES "SYSTEM"."VehicleMakes"
       ("VehicleMakeId")
   ENABLE
   VALIDATE;

-- Creating index for FOREIGN KEY 'FK_RequestRecord_VehicleMake'
CREATE INDEX "IX_FK_RequestRecord_VehicleMake"
ON "SYSTEM"."RequestRecords"
   ("NormalizedVehicleMakeId");

-- Creating foreign key on "StatusId" in table 'VehicleMakes'
ALTER TABLE "SYSTEM"."VehicleMakes"
ADD CONSTRAINT "FK_VehicleMake_StatusType"
   FOREIGN KEY ("StatusId")
   REFERENCES "SYSTEM"."Status"
       ("StatusId")
   ENABLE
   VALIDATE;

-- Creating index for FOREIGN KEY 'FK_VehicleMake_StatusType'
CREATE INDEX "IX_FK_VehicleMake_StatusType"
ON "SYSTEM"."VehicleMakes"
   ("StatusId");

-- Creating foreign key on "CreatedBy" in table 'VehicleMakes'
ALTER TABLE "SYSTEM"."VehicleMakes"
ADD CONSTRAINT "FK_VehicleMake_UserTable"
   FOREIGN KEY ("CreatedBy")
   REFERENCES "SYSTEM"."UserTables"
       ("UserId")
   ENABLE
   VALIDATE;

-- Creating index for FOREIGN KEY 'FK_VehicleMake_UserTable'
CREATE INDEX "IX_FK_VehicleMake_UserTable"
ON "SYSTEM"."VehicleMakes"
   ("CreatedBy");

-- Creating foreign key on "ModifiedBy" in table 'VehicleMakes'
ALTER TABLE "SYSTEM"."VehicleMakes"
ADD CONSTRAINT "FK_VehicleMake_UserTable1"
   FOREIGN KEY ("ModifiedBy")
   REFERENCES "SYSTEM"."UserTables"
       ("UserId")
   ENABLE
   VALIDATE;

-- Creating index for FOREIGN KEY 'FK_VehicleMake_UserTable1'
CREATE INDEX "IX_FK_VehicleMake_UserTable1"
ON "SYSTEM"."VehicleMakes"
   ("ModifiedBy");

-- Creating foreign key on "StateId" in table 'Plates'
ALTER TABLE "SYSTEM"."Plates"
ADD CONSTRAINT "FK_Plate_State"
   FOREIGN KEY ("StateId")
   REFERENCES "SYSTEM"."States"
       ("StateId")
   ENABLE
   VALIDATE;

-- Creating index for FOREIGN KEY 'FK_Plate_State'
CREATE INDEX "IX_FK_Plate_State"
ON "SYSTEM"."Plates"
   ("StateId");

-- Creating foreign key on "PlateId" in table 'ResponseRecords'
ALTER TABLE "SYSTEM"."ResponseRecords"
ADD CONSTRAINT "FK_ResponseRecord_Plate"
   FOREIGN KEY ("PlateId")
   REFERENCES "SYSTEM"."Plates"
       ("PlateId")
   ENABLE
   VALIDATE;

-- Creating index for FOREIGN KEY 'FK_ResponseRecord_Plate'
CREATE INDEX "IX_FK_ResponseRecord_Plate"
ON "SYSTEM"."ResponseRecords"
   ("PlateId");

-- Creating foreign key on "AlternatePlateId" in table 'ResponseRecords'
ALTER TABLE "SYSTEM"."ResponseRecords"
ADD CONSTRAINT "FK_ResponseRecord_Plate1"
   FOREIGN KEY ("AlternatePlateId")
   REFERENCES "SYSTEM"."Plates"
       ("PlateId")
   ENABLE
   VALIDATE;

-- Creating index for FOREIGN KEY 'FK_ResponseRecord_Plate1'
CREATE INDEX "IX_FK_ResponseRecord_Plate1"
ON "SYSTEM"."ResponseRecords"
   ("AlternatePlateId");

-- Creating foreign key on "RequestRecordId" in table 'RequestRecordStatus'
ALTER TABLE "SYSTEM"."RequestRecordStatus"
ADD CONSTRAINT "FK_RequestRecordStatus_RequestRecord"
   FOREIGN KEY ("RequestRecordId")
   REFERENCES "SYSTEM"."RequestRecords"
       ("RequestRecordId")
   ENABLE
   VALIDATE;

-- Creating index for FOREIGN KEY 'FK_RequestRecordStatus_RequestRecord'
CREATE INDEX "IX_FK_RequestRecordStatus_RequestRecord"
ON "SYSTEM"."RequestRecordStatus"
   ("RequestRecordId");

-- Creating foreign key on "NoHitsTypeId" in table 'DataSrcs'
ALTER TABLE "SYSTEM"."DataSrcs"
ADD CONSTRAINT "FK_DataSrc_NoHitsType"
   FOREIGN KEY ("NoHitsTypeId")
   REFERENCES "SYSTEM"."NoHitsTypes"
       ("NoHitsTypeId")
   ENABLE
   VALIDATE;

-- Creating index for FOREIGN KEY 'FK_DataSrc_NoHitsType'
CREATE INDEX "IX_FK_DataSrc_NoHitsType"
ON "SYSTEM"."DataSrcs"
   ("NoHitsTypeId");

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------

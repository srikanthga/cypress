<?xml version="1.0" encoding="UTF-8"?>
<schema xmlns="http://purl.oclc.org/dsdl/schematron" xmlns:fn="http://www.w3.org/2005/xpath-functions" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:schemaLocation="http://purl.oclc.org/dsdl/schematron C:/Users/rickg/workspaces-svn/ClientProjects/QRDATesting/measure-specific-schematron/schematron.xsd">
	<ns uri="urn:hl7-org:v3" prefix="cda"/>
	<ns uri="urn:hl7-org:sdtc" prefix="sdtc"/>
	<phase id="warnings">
		<active pattern="p"/>
	</phase>
	<pattern id="p">
		<rule context="/cda:ClinicalDocument">
			<assert test="//*[cda:templateId/@root='2.16.840.1.113883.10.20.24.3.11'][descendant::*/@sdtc:valueSet='2.16.840.1.113883.3.464.0003.05.02.0007']">For QDT pattern 'Diagnosis, Active: Major Depression', QRDA template id "2.16.840.1.113883.10.20.24.3.11" SHOULD be present and SHOULD be bound to value set "2.16.840.1.113883.3.464.0003.05.02.0007". </assert>
			<assert test="//*[cda:templateId/@root='2.16.840.1.113883.10.20.24.3.41'][descendant::*/@sdtc:valueSet='2.16.840.1.113883.3.464.0003.96.02.0213']">For QDT pattern 'Medication, Active: Antidepressant Medication', QRDA template id "2.16.840.1.113883.10.20.24.3.41" SHOULD be present and SHOULD be bound to value set "2.16.840.1.113883.3.464.0003.96.02.0213". </assert>
			<assert test="//*[cda:templateId/@root='2.16.840.1.113883.10.20.24.3.45'][descendant::*/@sdtc:valueSet='2.16.840.1.113883.3.464.0003.96.02.0213']">For QDT pattern 'Medication, Dispensed: Antidepressant Medication', QRDA template id "2.16.840.1.113883.10.20.24.3.45" SHOULD be present and SHOULD be bound to value set "2.16.840.1.113883.3.464.0003.96.02.0213". </assert>
			<assert test="//*[cda:templateId/@root='2.16.840.1.113883.10.20.24.3.55'][descendant::*/@sdtc:valueSet='2.16.840.1.113883.221.5']">For QDT pattern 'Patient Characteristic Payer: Payer', QRDA template id "2.16.840.1.113883.10.20.24.3.55" SHOULD be present and SHOULD be bound to value set "2.16.840.1.113883.221.5". </assert>
		</rule>
	</pattern>
</schema>
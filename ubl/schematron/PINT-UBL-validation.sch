<?xml version="1.0" encoding="UTF-8"?>
<!-- 

            UBL syntax binding to the model  
            Created by Oriol Bausa. (2020) Midran Ltd.
            Timestamp: 2020-02-11 12:09:57 +0200
            
     -->
<schema xmlns="http://purl.oclc.org/dsdl/schematron" xmlns:cac="urn:oasis:names:specification:ubl:schema:xsd:CommonAggregateComponents-2" xmlns:cbc="urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2" xmlns:cn="urn:oasis:names:specification:ubl:schema:xsd:CreditNote-2" xmlns:UBL="urn:oasis:names:specification:ubl:schema:xsd:Invoice-2" queryBinding="xslt2">
  <title>PINT  model bound to UBL</title>
  <ns prefix="ext" uri="urn:oasis:names:specification:ubl:schema:xsd:CommonExtensionComponents-2"/>
  <ns prefix="cbc" uri="urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2"/>
  <ns prefix="cac" uri="urn:oasis:names:specification:ubl:schema:xsd:CommonAggregateComponents-2"/>
  <ns prefix="qdt" uri="urn:oasis:names:specification:ubl:schema:xsd:QualifiedDataTypes-2"/>
  <ns prefix="udt" uri="urn:oasis:names:specification:ubl:schema:xsd:UnqualifiedDataTypes-2"/>
  <ns prefix="cn"  uri="urn:oasis:names:specification:ubl:schema:xsd:CreditNote-2"/>
  <ns prefix="ubl" uri="urn:oasis:names:specification:ubl:schema:xsd:Invoice-2"/>
  <ns prefix="xs"  uri="http://www.w3.org/2001/XMLSchema"/>
  <phase id="PINTmodel_phase">
    <active pattern="UBL-model"/>
  </phase>
  <!-- phase id="codelist_phase">
    <active pattern="Codesmodel"/>
  </phase -->
  <!-- Abstract CEN BII patterns -->
  <!-- ========================= -->
  <include href="abstract/PINT-model.sch"/>
  <!-- Data Binding parameters -->
  <!-- ======================= -->
  <include href="UBL/PINT-UBL-model.sch"/>
  <!-- Code Lists Binding rules -->
  <!-- ======================== -->
  <!-- include href="codelist/PINT-UBL-codes.sch"/ -->
</schema>

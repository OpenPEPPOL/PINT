<schema xmlns="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2">
  <ns prefix="ext" uri="urn:oasis:names:specification:ubl:schema:xsd:CommonExtensionComponents-2" />
  <ns prefix="cbc" uri="urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2" />
  <ns prefix="cac" uri="urn:oasis:names:specification:ubl:schema:xsd:CommonAggregateComponents-2" />
  <ns prefix="qdt" uri="urn:oasis:names:specification:ubl:schema:xsd:QualifiedDataTypes-2" />
  <ns prefix="udt" uri="urn:oasis:names:specification:ubl:schema:xsd:UnqualifiedDataTypes-2" />
  <ns prefix="cn" uri="urn:oasis:names:specification:ubl:schema:xsd:CreditNote-2" />
  <ns prefix="ubl" uri="urn:oasis:names:specification:ubl:schema:xsd:Invoice-2" />
  <ns prefix="xs" uri="http://www.w3.org/2001/XMLSchema" />
  <phase id="PINTmodel_phase">
    <active pattern="UBL-model" />
  </phase>
  <pattern id="UBL-model">
    <rule context="cac:AdditionalDocumentReference">
      <assert id="ibr-52" flag="fatal" test="(cbc:ID) != ''">[ibr-52]-Each Additional supporting document (ibg-24) shall contain a Supporting document reference (ibt-122).    </assert>
    </rule>
    <rule context="/ubl:Invoice/cac:LegalMonetaryTotal/cbc:PayableAmount">
      <assert id="ibr-co-25" flag="fatal" test="((. > 0) and (exists(//cbc:DueDate) or exists(//cac:PaymentTerms/cbc:Note))) or (. &lt;= 0)">[ibr-co-25]-In case the Amount due for payment (ibt-115) is positive, either the Payment due date (ibt-9) or the Payment terms (ibt-20) shall be present.</assert>
    </rule>
    <rule context="cac:AccountingCustomerParty/cac:Party/cbc:EndpointID">
      <assert id="ibr-63" flag="fatal" test="exists(@schemeID)">[ibr-63]-The Buyer electronic address (ibt-49) shall have a Scheme identifier.    </assert>
    </rule>
    <rule context="cac:AccountingCustomerParty/cac:Party/cac:PostalAddress">
      <assert id="ibr-11" flag="fatal" test="(cac:Country/cbc:IdentificationCode) != ''">[ibr-11]-The Buyer postal address shall contain a Buyer country code (ibt-55).</assert>
    </rule>
    <rule context="cac:Delivery/cac:DeliveryLocation/cac:Address">
      <assert id="ibr-57" flag="fatal" test="exists(cac:Country/cbc:IdentificationCode)">[ibr-57]-Each Deliver to address (ibg-15) shall contain a Deliver to country code (ibt-80).</assert>
    </rule>
    <rule context="/ubl:Invoice/cac:AllowanceCharge[cbc:ChargeIndicator = false()] | /cn:CreditNote/cac:AllowanceCharge[cbc:ChargeIndicator = false()]">
      <assert id="ibr-31" flag="fatal" test="exists(cbc:Amount)">[ibr-31]-Each Document level allowance (ibg-20) shall have a Document level allowance amount (ibt-92).</assert>
      <assert id="ibr-33" flag="fatal" test="exists(cbc:AllowanceChargeReason) or exists(cbc:AllowanceChargeReasonCode)">[ibr-33]-Each Document level allowance (ibg-20) shall have a Document level allowance reason (ibt-97) or a Document level allowance reason code (ibt-98).</assert>
      <assert id="ibr-co-05" flag="fatal" test="true()">[ibr-co-05]-Document level allowance reason code (ibt-98) and Document level allowance reason (ibt-97) shall indicate the same type of allowance.</assert>
      <assert id="ibr-co-21" flag="fatal" test="exists(cbc:AllowanceChargeReason) or exists(cbc:AllowanceChargeReasonCode)">[ibr-co-21]-Each Document level allowance (ibg-20) shall contain a Document level allowance reason (ibt-97) or a Document level allowance reason code (ibt-98), or both.</assert>
    </rule>
    <rule context="/ubl:Invoice/cac:AllowanceCharge[cbc:ChargeIndicator = true()] | /cn:CreditNote/cac:AllowanceCharge[cbc:ChargeIndicator = true()]">
      <assert id="ibr-36" flag="fatal" test="exists(cbc:Amount)">[ibr-36]-Each Document level charge (ibg-21) shall have a Document level charge amount (ibt-99).</assert>
      <assert id="ibr-38" flag="fatal" test="exists(cbc:AllowanceChargeReason) or exists(cbc:AllowanceChargeReasonCode)">[ibr-38]-Each Document level charge (ibg-21) shall have a Document level charge reason (ibt-104) or a Document level charge reason code (ibt-105).    </assert>
      <assert id="ibr-co-06" flag="fatal" test="true()">[ibr-co-06]-Document level charge reason code (ibt-105) and Document level charge reason (ibt-104) shall indicate the same type of charge.</assert>
      <assert id="ibr-co-22" flag="fatal" test="exists(cbc:AllowanceChargeReason) or exists(cbc:AllowanceChargeReasonCode)">[ibr-co-22]-Each Document level charge (ibg-21) shall contain a Document level charge reason (ibt-104) or a Document level charge reason code (ibt-105), or both.</assert>
    </rule>
    <rule context="cac:LegalMonetaryTotal">
      <assert id="ibr-12" flag="fatal" test="exists(cbc:LineExtensionAmount)">[ibr-12]-An Invoice shall have the Sum of Invoice line net amount (ibt-106).</assert>
      <assert id="ibr-13" flag="fatal" test="exists(cbc:TaxExclusiveAmount)">[ibr-13]-An Invoice shall have the Invoice total amount without Tax (ibt-109).</assert>
      <assert id="ibr-14" flag="fatal" test="exists(cbc:TaxInclusiveAmount)">[ibr-14]-An Invoice shall have the Invoice total amount with Tax (ibt-112).</assert>
      <assert id="ibr-15" flag="fatal" test="exists(cbc:PayableAmount)">[ibr-15]-An Invoice shall have the Amount due for payment (ibt-115).</assert>
      <assert id="ibr-co-10" flag="fatal" test="(xs:decimal(cbc:LineExtensionAmount) = (round(sum(//(cac:InvoiceLine|cac:CreditNoteLine)/xs:decimal(cbc:LineExtensionAmount)) * 10 * 10) div 100))">[ibr-co-10]-Sum of Invoice line net amount (ibt-106) = Σ Invoice line net amount (ibt-131).</assert>
      <assert id="ibr-co-11" flag="fatal" test="xs:decimal(cbc:AllowanceTotalAmount) = (round(sum(../cac:AllowanceCharge[cbc:ChargeIndicator=false()]/xs:decimal(cbc:Amount)) * 10 * 10) div 100) or  (not(cbc:AllowanceTotalAmount) and not(../cac:AllowanceCharge[cbc:ChargeIndicator=false()]))">[ibr-co-11]-Sum of allowances on document level (ibt-107) = Σ Document level allowance amount (ibt-92).</assert>
      <assert id="ibr-co-12" flag="fatal" test="xs:decimal(cbc:ChargeTotalAmount) = (round(sum(../cac:AllowanceCharge[cbc:ChargeIndicator=true()]/xs:decimal(cbc:Amount)) * 10 * 10) div 100) or (not(cbc:ChargeTotalAmount) and not(../cac:AllowanceCharge[cbc:ChargeIndicator=true()]))">[ibr-co-12]-Sum of charges on document level (ibt-108) = Σ Document level charge amount (ibt-99).</assert>
      <assert id="ibr-co-13" flag="fatal" test="((cbc:ChargeTotalAmount) and (cbc:AllowanceTotalAmount) and (xs:decimal(cbc:TaxExclusiveAmount) = round((xs:decimal(cbc:LineExtensionAmount) + xs:decimal(cbc:ChargeTotalAmount) - xs:decimal(cbc:AllowanceTotalAmount)) * 10 * 10) div 100 ))  or (not(cbc:ChargeTotalAmount) and (cbc:AllowanceTotalAmount) and (xs:decimal(cbc:TaxExclusiveAmount) = round((xs:decimal(cbc:LineExtensionAmount) - xs:decimal(cbc:AllowanceTotalAmount)) * 10 * 10 ) div 100)) or ((cbc:ChargeTotalAmount) and not(cbc:AllowanceTotalAmount) and (xs:decimal(cbc:TaxExclusiveAmount) = round((xs:decimal(cbc:LineExtensionAmount) + xs:decimal(cbc:ChargeTotalAmount)) * 10 * 10 ) div 100)) or (not(cbc:ChargeTotalAmount) and not(cbc:AllowanceTotalAmount) and (xs:decimal(cbc:TaxExclusiveAmount) = xs:decimal(cbc:LineExtensionAmount)))">[ibr-co-13]-Invoice total amount without Tax (ibt-109) = Σ Invoice line net amount (ibt-131) - Sum of allowances on document level (ibt-107) + Sum of charges on document level (ibt-108).</assert>
      <assert id="ibr-co-16" flag="fatal" test="(xs:decimal(cbc:PrepaidAmount) and not(xs:decimal(cbc:PayableRoundingAmount)) and (xs:decimal(cbc:PayableAmount) = (round((xs:decimal(cbc:TaxInclusiveAmount) - xs:decimal(cbc:PrepaidAmount)) * 10 * 10) div 100))) or (not(xs:decimal(cbc:PrepaidAmount)) and not(xs:decimal(cbc:PayableRoundingAmount)) and xs:decimal(cbc:PayableAmount) = xs:decimal(cbc:TaxInclusiveAmount)) or (xs:decimal(cbc:PrepaidAmount) and xs:decimal(cbc:PayableRoundingAmount) and ((round((xs:decimal(cbc:PayableAmount) - xs:decimal(cbc:PayableRoundingAmount)) * 10 * 10) div 100) = (round((xs:decimal(cbc:TaxInclusiveAmount) - xs:decimal(cbc:PrepaidAmount)) * 10 * 10) div 100))) or (not(xs:decimal(cbc:PrepaidAmount)) and xs:decimal(cbc:PayableRoundingAmount) and ((round((xs:decimal(cbc:PayableAmount) - xs:decimal(cbc:PayableRoundingAmount)) * 10 * 10) div 100) = xs:decimal(cbc:TaxInclusiveAmount)))">[ibr-co-16]-Amount due for payment (ibt-115) = Invoice total amount with Tax (ibt-112) -Paid amount (ibt-113) +Rounding amount (ibt-114).</assert>
    </rule>
    <rule context="/ubl:Invoice | /cn:CreditNote">
      <assert id="ibr-01" flag="fatal" test="(cbc:CustomizationID) != ''">[ibr-01]-An Invoice shall have a Specification identifier (ibt-24).   </assert>
      <assert id="ibr-02" flag="fatal" test="(cbc:ID) !=''">[ibr-02]-An Invoice shall have an Invoice number (ibt-1).</assert>
      <assert id="ibr-03" flag="fatal" test="(cbc:IssueDate) !=''">[ibr-03]-An Invoice shall have an Invoice issue date (ibt-2).</assert>
      <assert id="ibr-04" flag="fatal" test="(cbc:InvoiceTypeCode) !='' or (cbc:CreditNoteTypeCode) !=''">[ibr-04]-An Invoice shall have an Invoice type code (ibt-3).</assert>
      <assert id="ibr-05" flag="fatal" test="(cbc:DocumentCurrencyCode) !=''">[ibr-05]-An Invoice shall have an Invoice currency code (ibt-5).</assert>
      <assert id="ibr-06" flag="fatal" test="(cac:AccountingSupplierParty/cac:Party/cac:PartyLegalEntity/cbc:RegistrationName) !=''">[ibr-06]-An Invoice shall contain the Seller name (ibt-27).</assert>
      <assert id="ibr-07" flag="fatal" test="(cac:AccountingCustomerParty/cac:Party/cac:PartyLegalEntity/cbc:RegistrationName) !=''">[ibr-07]-An Invoice shall contain the Buyer name (ibt-44).</assert>
      <assert id="ibr-08" flag="fatal" test="exists(cac:AccountingSupplierParty/cac:Party/cac:PostalAddress)">[ibr-08]-An Invoice shall contain the Seller postal address. </assert>
      <assert id="ibr-10" flag="fatal" test="exists(cac:AccountingCustomerParty/cac:Party/cac:PostalAddress)">[ibr-10]-An Invoice shall contain the Buyer postal address (ibg-8).</assert>
      <assert id="ibr-16" flag="fatal" test="exists(cac:InvoiceLine) or exists(cac:CreditNoteLine)">[ibr-16]-An Invoice shall have at least one Invoice line (ibg-25)</assert>
      <assert id="ibr-53" flag="fatal" test="every $taxcurrency in cbc:TaxCurrencyCode satisfies exists(//cac:TaxTotal/cbc:TaxAmount[@currencyID=$taxcurrency])">[ibr-53]-If the Tax accounting currency code (ibt-6) is present, then the Invoice total Tax amount in accounting currency (ibt-111) shall be provided.</assert>
      <assert id="ibr-co-03" flag="fatal" test="(exists(cbc:TaxPointDate) and not(cac:InvoicePeriod/cbc:DescriptionCode)) or (not(cbc:TaxPointDate) and exists(cac:InvoicePeriod/cbc:DescriptionCode)) or (not(cbc:TaxPointDate) and not(cac:InvoicePeriod/cbc:DescriptionCode))">[ibr-co-03]-Value added tax point date (ibt-7) and Value added tax point date code (ibt-8) are mutually exclusive.</assert>
      <assert id="ibr-co-15" flag="fatal" test="every $Currency in cbc:DocumentCurrencyCode satisfies (cac:LegalMonetaryTotal/xs:decimal(cbc:TaxInclusiveAmount) = round( (cac:LegalMonetaryTotal/xs:decimal(cbc:TaxExclusiveAmount) + cac:TaxTotal/xs:decimal(cbc:TaxAmount[@currencyID=$Currency])) * 10 * 10) div 100)">[ibr-co-15]-Invoice total amount with Tax (ibt-112) = Invoice total amount without Tax (ibt-109) + Invoice total Tax amount (ibt-110).</assert>
      <assert id="ibr-tax-01" flag="fatal" test="every $category in (//cac:AllowanceCharge/cac:TaxCategory/normalize-space(cbc:ID), //cac:ClassifiedTaxCategory/normalize-space(cbc:ID)) satisfies  exists(cac:TaxTotal/cac:TaxSubtotal/cac:TaxCategory[normalize-space(cbc:ID) = $category])">[ibr-tax-01]-An Invoice that contains an Invoice line (ibg-25), a Document level allowance (ibg-20) or a Document level charge (ibg-21) with a TAX category code (ibt-151, ibt-095 or ibt-102) shall contain in the TAX breakdown (ibg-23) at least one identical TAX category code (ibt-118).</assert>
    </rule>
    <rule context="cac:InvoiceLine | cac:CreditNoteLine">
      <assert id="ibr-21" flag="fatal" test="(cbc:ID) != ''">[ibr-21]-Each Invoice line (ibg-25) shall have an Invoice line identifier (ibt-126).</assert>
      <assert id="ibr-22" flag="fatal" test="exists(cbc:InvoicedQuantity) or exists(cbc:CreditedQuantity)">[ibr-22]-Each Invoice line (ibg-25) shall have an Invoiced quantity (ibt-129).</assert>
      <assert id="ibr-23" flag="fatal" test="exists(cbc:InvoicedQuantity/@unitCode) or exists(cbc:CreditedQuantity/@unitCode)">[ibr-23]-An Invoice line (ibg-25) shall have an Invoiced quantity unit of measure code (ibt-130).</assert>
      <assert id="ibr-24" flag="fatal" test="exists(cbc:LineExtensionAmount)">[ibr-24]-Each Invoice line (ibg-25) shall have an Invoice line net amount (ibt-131).</assert>
      <assert id="ibr-25" flag="fatal" test="(cac:Item/cbc:Name) != ''">[ibr-25]-Each Invoice line (ibg-25) shall contain the Item name (ibt-153).</assert>
      <assert id="ibr-26" flag="fatal" test="exists(cac:Price/cbc:PriceAmount)">[ibr-26]-Each Invoice line (ibg-25) shall contain the Item net price (ibt-146).</assert>
      <assert id="ibr-27" flag="fatal" test="(cac:Price/cbc:PriceAmount) >= 0">[ibr-27]-The Item net price (ibt-146) shall NOT be negative.</assert>
      <assert id="ibr-28" flag="fatal" test="(cac:Price/cac:AllowanceCharge/cbc:BaseAmount) >= 0 or not(exists(cac:Price/cac:AllowanceCharge/cbc:BaseAmount))">[ibr-28]-The Item gross price (ibt-148) shall NOT be negative.</assert>
    </rule>
    <rule context="//cac:InvoiceLine/cac:AllowanceCharge[cbc:ChargeIndicator = false()] | //cac:CreditNoteLine/cac:AllowanceCharge[cbc:ChargeIndicator = false()]">
      <assert id="ibr-41" flag="fatal" test="exists(cbc:Amount)">[ibr-41]-Each Invoice line allowance (ibg-27) shall have an Invoice line allowance amount (ibt-136).</assert>
      <assert id="ibr-42" flag="fatal" test="exists(cbc:AllowanceChargeReason) or exists(cbc:AllowanceChargeReasonCode)">[ibr-42]-Each Invoice line allowance (ibg-27) shall have an Invoice line allowance reason (ibt-139) or an Invoice line allowance reason code (ibt-140).</assert>
      <assert id="ibr-co-07" flag="fatal" test="true()">[ibr-co-07]-When both Invoice line allowance reason code (iibt-140) and Invoice line allowance reason (iibt-139) the definition of the code is normative.</assert>
    </rule>
    <rule context="//cac:InvoiceLine/cac:AllowanceCharge[cbc:ChargeIndicator = true()] | //cac:CreditNoteLine/cac:AllowanceCharge[cbc:ChargeIndicator = true()]">
      <assert id="ibr-43" flag="fatal" test="exists(cbc:Amount)">[ibr-43]-Each Invoice line charge (ibg-28) shall have an Invoice line charge amount (ibt-141).</assert>
      <assert id="ibr-44" flag="fatal" test="exists(cbc:AllowanceChargeReason) or exists(cbc:AllowanceChargeReasonCode)">[ibr-44]-Each Invoice line charge shall have an Invoice line charge reason or an invoice line allowance reason code. </assert>
      <assert id="ibr-co-08" flag="fatal" test="true()">[ibr-co-08]-When both Invoice line charge reason code (iibt-145) and Invoice line charge reason (iibt-144) the definition of the code is normative.</assert>
      <assert id="ibr-co-24" flag="fatal" test="exists(cbc:AllowanceChargeReason) or exists(cbc:AllowanceChargeReasonCode)">[ibr-co-24]-Each Invoice line charge (ibg-28) shall contain an Invoice line charge reason (ibt-144) or an Invoice line charge reason code (ibt-145), or both.</assert>
    </rule>
    <rule context="cac:InvoiceLine/cac:InvoicePeriod | cac:CreditNoteLine/cac:InvoicePeriod">
      <assert id="ibr-30" flag="fatal" test="(exists(cbc:EndDate) and exists(cbc:StartDate) and xs:date(cbc:EndDate) >= xs:date(cbc:StartDate)) or not(exists(cbc:StartDate)) or not(exists(cbc:EndDate))">[ibr-30]-If both Invoice line period start date (ibt-134) and Invoice line period end date (ibt-135) are given then the Invoice line period end date (ibt-135) shall be later or equal to the Invoice line period start date (ibt-134).</assert>
      <assert id="ibr-co-20" flag="fatal" test="exists(cbc:StartDate) or exists(cbc:EndDate)">[ibr-co-20]-If Invoice line period (ibg-26) is used, the Invoice line period start date (ibt-134) or the Invoice line period end date (ibt-135) shall be filled, or both.</assert>
    </rule>
    <rule context="cac:InvoicePeriod">
      <assert id="ibr-29" flag="fatal" test="(exists(cbc:EndDate) and exists(cbc:StartDate) and xs:date(cbc:EndDate) >= xs:date(cbc:StartDate)) or not(exists(cbc:StartDate)) or not(exists(cbc:EndDate))">[ibr-29]-If both Invoicing period start date (ibt-73) and Invoicing period end date (ibt-74) are given then the Invoicing period end date (ibt-74) shall be later or equal to the Invoicing period start date (ibt-73).</assert>
      <assert id="ibr-co-19" flag="fatal" test="exists(cbc:StartDate) or exists(cbc:EndDate) or (exists(cbc:DescriptionCode) and not(exists(cbc:StartDate)) and not(exists(cbc:EndDate)))">[ibr-co-19]-If Invoicing period (ibg-14) is used, the Invoicing period start date (ibt-73) or the Invoicing period end date (ibt-74) shall be filled, or both.</assert>
    </rule>
    <rule context="//cac:AdditionalItemProperty">
      <assert id="ibr-54" flag="fatal" test="exists(cbc:Name) and exists(cbc:Value)">[ibr-54]-Each Item attribute (ibg-32) shall contain an Item attribute name (ibt-160) and an Item attribute value (ibt-161).</assert>
    </rule>
    <rule context="cac:InvoiceLine/cac:Item/cac:CommodityClassification/cbc:ItemClassificationCode | cac:CreditNoteLine/cac:Item/cac:CommodityClassification/cbc:ItemClassificationCode">
      <assert id="ibr-65" flag="fatal" test="exists(@listID)">[ibr-65]-The Item classification identifier (ibt-158) shall have a Scheme identifier.</assert>
    </rule>
    <rule context="cac:InvoiceLine/cac:Item/cac:StandardItemIdentification/cbc:ID | cac:CreditNoteLine/cac:Item/cac:StandardItemIdentification/cbc:ID">
      <assert id="ibr-64" flag="fatal" test="exists(@schemeID)">[ibr-64]-The Item standard identifier (ibt-157) shall have a Scheme identifier.</assert>
    </rule>
    <rule context="cac:PayeeParty">
      <assert id="ibr-17" flag="fatal" test="exists(cac:PartyName/cbc:Name) and (not(cac:PartyName/cbc:Name = ../cac:AccountingSupplierParty/cac:Party/cac:PartyName/cbc:Name) and not(cac:PartyIdentification/cbc:ID = ../cac:AccountingSupplierParty/cac:Party/cac:PartyIdentification/cbc:ID) )">[ibr-17]-The Payee name (ibt-59) shall be provided in the Invoice, if the Payee (ibg-10) is different from the Seller (ibg-4)</assert>
    </rule>
    <rule context="cac:PaymentMeans">
      <assert id="ibr-49" flag="fatal" test="exists(cbc:PaymentMeansCode)">[ibr-49]-A Payment instruction (ibg-16) shall specify the Payment means type code (ibt-81).</assert>
    </rule>
    <rule context="cac:BillingReference">
      <assert id="ibr-55" flag="fatal" test="exists(cac:InvoiceDocumentReference/cbc:ID)">[ibr-55]-Each Preceding Invoice reference (ibg-3) shall contain a Preceding Invoice reference (ibt-25).</assert>
    </rule>
    <rule context="cac:AccountingSupplierParty">
      <assert id="ibr-co-26" flag="fatal" test="exists(cac:Party/cac:PartyTaxScheme/cbc:CompanyID) or exists(cac:Party/cac:PartyIdentification/cbc:ID) or exists(cac:Party/cac:PartyLegalEntity/cbc:CompanyID)">[ibr-co-26]-In order for the buyer to automatically identify a supplier, the Seller identifier (ibt-29), the Seller legal registration identifier (ibt-30) and/or the Seller Tax identifier (ibt-31) shall be present.  </assert>
    </rule>
    <rule context="cac:AccountingSupplierParty/cac:Party/cbc:EndpointID">
      <assert id="ibr-62" flag="fatal" test="exists(@schemeID)">[ibr-62]-The Seller electronic address (ibt-34) shall have a Scheme identifier.</assert>
    </rule>
    <rule context="cac:AccountingSupplierParty/cac:Party/cac:PostalAddress">
      <assert id="ibr-09" flag="fatal" test="(cac:Country/cbc:IdentificationCode) != ''">[ibr-09]-The Seller postal address (ibg-5) shall contain a Seller country code (ibt-40).</assert>
    </rule>
    <rule context="cac:TaxRepresentativeParty">
      <assert id="ibr-18" flag="fatal" test="(cac:PartyName/cbc:Name) != ''">[ibr-18]-The Seller tax representative name (ibt-62) shall be provided in the Invoice, if the Seller (ibg-4) has a Seller tax representative party (ibg-11)</assert>
      <assert id="ibr-19" flag="fatal" test="exists(cac:PostalAddress)">[ibr-19]-The Seller tax representative postal address (ibg-12) shall be provided in the Invoice, if the Seller (ibg-4) has a Seller tax representative party (ibg-11).</assert>
      <assert id="ibr-56" flag="fatal" test="exists(cac:PartyTaxScheme/cbc:CompanyID)">[ibr-56]-Each Seller tax representative party (ibg-11) shall have a Seller tax representative Tax identifier (ibt-63).    </assert>
    </rule>
    <rule context="cac:TaxRepresentativeParty/cac:PostalAddress">
      <assert id="ibr-20" flag="fatal" test="(cac:Country/cbc:IdentificationCode) != ''">[ibr-20]-The Seller tax representative postal address (ibg-12) shall contain a Tax representative country code (ibt-69), if the Seller (ibg-4) has a Seller tax representative party (ibg-11).</assert>
    </rule>
    <rule context="cac:TaxTotal/cac:TaxSubtotal">
      <assert id="ibr-tax-08" flag="fatal" test="let $category := cac:TaxCategory/cbc:ID return let $rate := cac:TaxCategory/cbc:Percent return cbc:TaxableAmount = sum(//cac:InvoiceLine[cac:Item/cac:ClassifiedTaxCategory[xs:decimal(cbc:Percent) = $rate and cbc:ID = $category]]/xs:decimal(cbc:LineExtensionAmount)) + sum(//cac:AllowanceCharge[cbc:ChargeIndicator=true()][(cac:TaxCategory/cbc:ID = $category and cac:TaxCategory/xs:decimal(cbc:Percent) = $rate)]/xs:decimal(cbc:Amount)) - sum(//cac:AllowanceCharge[cbc:ChargeIndicator=false()][(cac:TaxCategory/cbc:ID = $category and cac:TaxCategory/xs:decimal(cbc:Percent) = $rate)]/xs:decimal(cbc:Amount))">[ibr-tax-08]-For each combination of tax category rate (ibt-119) and tax category code (ibt-118), the tax category taxable amount (ibt-116) in a tax breakdown (ibg-23) shall equal the sum of Invoice line net amounts (ibt-131) plus the sum of document level charge amounts (ibt-099) minus the sum of document level allowance amounts (ibt-092) combination of tax category code (ibt-151, ibt-102, ibt-095) and the tax rate (ibt-152, ibt-103, ibt-096) is the same.</assert>
      <assert id="ibr-tax-09" flag="fatal" test="(abs(xs:decimal(cbc:TaxAmount)) - 1 &lt;  round((abs(xs:decimal(cbc:TaxableAmount)) * (cac:TaxCategory/xs:decimal(cbc:Percent) div 100)) * 10 * 10) div 100 ) and (abs(xs:decimal(cbc:TaxAmount)) + 1 >  round((abs(xs:decimal(cbc:TaxableAmount)) * (cac:TaxCategory/xs:decimal(cbc:Percent) div 100)) * 10 * 10) div 100 )">[ibr-tax-09]-The tax category tax amount (ibt-117) in a tax breakdown (ibg-23) shall equal the tax category taxable amount (ibt-116) multiplied by the tax category rate (ibt-119).</assert>
    </rule>
  </pattern>
</schema>

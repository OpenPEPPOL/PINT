<!-- Schematron rules generated automatically by Validex Generator Midran ltd -->
<!-- Abstract rules for model -->
<!-- Timestamp: 2020-02-11 12:09:22 +0200 -->
<pattern xmlns="http://purl.oclc.org/dsdl/schematron" abstract="true" id="model">
  <rule context="$Additional_supporting_documents ">
    <assert test="$ibr-52" flag="fatal" id="ibr-52">[ibr-52]-Each Additional supporting document (ibg-24) shall contain a Supporting document reference (ibt-122).    </assert>
  </rule>
  <rule context="$Amount_due">
    <assert test="$ibr-67" flag="fatal" id="ibr-67">[ibr-67]-Invoice amount due for payment (ibt-115) shall have no more than 2 decimals.</assert>
    <assert test="$ibr-co-25" flag="fatal" id="ibr-co-25">[ibr-co-25]-In case the Amount due for payment (ibt-115) is positive, either the Payment due date (ibt-009) or the Payment terms (ibt-020) shall be present.</assert>
  </rule>
  <rule context="$Buyer_electronic_address">
    <assert test="$ibr-63" flag="fatal" id="ibr-63">[ibr-63]-The Buyer electronic address (ibt-049) shall have a Scheme identifier.    </assert>
  </rule>
  <rule context="$Buyer_postal_address">
    <assert test="$ibr-11" flag="fatal" id="ibr-11">[ibr-11]-The Buyer postal address (ibg-089 shall contain a Buyer country code (ibt-055).</assert>
  </rule>
  <rule context="$Deliver_to_address">
    <assert test="$ibr-57" flag="fatal" id="ibr-57">[ibr-57]-Each Deliver to address (ibg-15) shall contain a Deliver to country code (ibt-080).</assert>
  </rule>
  <rule context="$Document_level_allowances ">
    <assert test="$ibr-31" flag="fatal" id="ibr-31">[ibr-31]-Each Document level allowance (ibg-20) shall have a Document level allowance amount (ibt-092).</assert>
    <assert test="$ibr-33" flag="fatal" id="ibr-33">[ibr-33]-Each Document level allowance (ibg-20) shall have a Document level allowance reason (ibt-907) or a Document level allowance reason code (ibt-098).</assert>
    <assert test="$ibr-co-05" flag="fatal" id="ibr-co-05">[ibr-co-05]-Document level allowance reason code (ibt-098) and Document level allowance reason (ibt-097) shall indicate the same type of allowance.</assert>
    <assert test="$ibr-co-21" flag="fatal" id="ibr-co-21">[ibr-co-21]-Each Document level allowance (ibg-20) shall contain a Document level allowance reason (ibt-097) or a Document level allowance reason code (ibt-098), or both.</assert>
  </rule>
  <rule context="$Document_level_charges ">
    <assert test="$ibr-36" flag="fatal" id="ibr-36">[ibr-36]-Each Document level charge (ibg-21) shall have a Document level charge amount (ibt-099).</assert>
    <assert test="$ibr-38" flag="fatal" id="ibr-38">[ibr-38]-Each Document level charge (ibg-21) shall have a Document level charge reason (ibt-104) or a Document level charge reason code (ibt-105).</assert>
    <assert test="$ibr-co-06" flag="fatal" id="ibr-co-06">[ibr-co-06]-Document level charge reason code (ibt-105) and Document level charge reason (ibt-104) shall indicate the same type of charge.</assert>
    <assert test="$ibr-co-22" flag="fatal" id="ibr-co-22">[ibr-co-22]-Each Document level charge (ibg-21) shall contain a Document level charge reason (ibt-104) or a Document level charge reason code (ibt-105), or both.</assert>
  </rule>
  <rule context="$Document_totals ">
    <assert test="$ibr-12" flag="fatal" id="ibr-12">[ibr-12]-An Invoice shall have the Sum of Invoice line net amount (ibt-106).</assert>
    <assert test="$ibr-13" flag="fatal" id="ibr-13">[ibr-13]-An Invoice shall have the Invoice total amount without Tax (ibt-109).</assert>
    <assert test="$ibr-14" flag="fatal" id="ibr-14">[ibr-14]-An Invoice shall have the Invoice total amount with Tax (ibt-112).</assert>
    <assert test="$ibr-15" flag="fatal" id="ibr-15">[ibr-15]-An Invoice shall have the Amount due for payment (ibt-115).</assert>
    <assert test="$ibr-co-10" flag="fatal" id="ibr-co-10">[ibr-co-10]-Sum of Invoice line net amount (ibt-106) = Σ Invoice line net amount (ibt-131).</assert>
    <assert test="$ibr-co-11" flag="fatal" id="ibr-co-11">[ibr-co-11]-Sum of allowances on document level (ibt-107) = Σ Document level allowance amount (ibt-092).</assert>
    <assert test="$ibr-co-12" flag="fatal" id="ibr-co-12">[ibr-co-12]-Sum of charges on document level (ibt-108) = Σ Document level charge amount (ibt-099).</assert>
    <assert test="$ibr-co-13" flag="fatal" id="ibr-co-13">[ibr-co-13]-Invoice total amount without Tax (ibt-109) = Σ Invoice line net amount (ibt-131) - Sum of allowances on document level (ibt-107) + Sum of charges on document level (ibt-108).</assert>
    <assert test="$ibr-co-16" flag="fatal" id="ibr-co-16">[ibr-co-16]-Amount due for payment (ibt-115) = Invoice total amount with Tax (ibt-112) - Paid amount (ibt-113) + Rounding amount (ibt-114).</assert>
  </rule>
  <rule context="$Invoice ">
    <assert test="$ibr-01" flag="fatal" id="ibr-01">[ibr-01]-An Invoice shall have a Specification identifier (ibt-024).   </assert>
    <assert test="$ibr-02" flag="fatal" id="ibr-02">[ibr-02]-An Invoice shall have an Invoice number (ibt-001).</assert>
    <assert test="$ibr-03" flag="fatal" id="ibr-03">[ibr-03]-An Invoice shall have an Invoice issue date (ibt-002).</assert>
    <assert test="$ibr-04" flag="fatal" id="ibr-04">[ibr-04]-An Invoice shall have an Invoice type code (ibt-003).</assert>
    <assert test="$ibr-05" flag="fatal" id="ibr-05">[ibr-05]-An Invoice shall have an Invoice currency code (ibt-005).</assert>
    <assert test="$ibr-06" flag="fatal" id="ibr-06">[ibr-06]-An Invoice shall contain the Seller name (ibt-027).</assert>
    <assert test="$ibr-07" flag="fatal" id="ibr-07">[ibr-07]-An Invoice shall contain the Buyer name (ibt-044).</assert>
    <assert test="$ibr-08" flag="fatal" id="ibr-08">[ibr-08]-An Invoice shall contain the Seller postal address (ibg-05). </assert>
    <assert test="$ibr-10" flag="fatal" id="ibr-10">[ibr-10]-An Invoice shall contain the Buyer postal address (ibg-08).</assert>
    <assert test="$ibr-16" flag="fatal" id="ibr-16">[ibr-16]-An Invoice shall have at least one Invoice line (ibg-25)</assert>
    <assert test="$ibr-53" flag="fatal" id="ibr-53">[ibr-53]-If the Tax accounting currency code (ibt-006) is present, then the Invoice total Tax amount in accounting currency (ibt-111) shall be provided.</assert>
    <!-- assert test="$ibr-co-03" flag="fatal" id="ibr-co-03">[ibr-co-03]-Value added tax point date (ibt-7) and Value added tax point date code (ibt-8) are mutually exclusive.</assert -->
    <assert test="$ibr-co-15" flag="fatal" id="ibr-co-15">[ibr-co-15]-Invoice total amount with Tax (ibt-112) = Invoice total amount without Tax (ibt-109) + Invoice total Tax amount (ibt-110).</assert>
    <assert test="$ibr-tax-01" flag="fatal" id="ibr-tax-01">[ibr-tax-01]-An Invoice that contains an Invoice line (ibg-25), a Document level allowance (ibg-20) or a Document level charge (ibg-21) with a TAX category code (ibt-151, ibt-095 or ibt-102) shall contain in the TAX breakdown (ibg-23) at least one identical TAX category code (ibt-118).</assert>
  </rule>
  <rule context="$Invoice_Line ">
    <assert test="$ibr-21" flag="fatal" id="ibr-21">[ibr-21]-Each Invoice line (ibg-25) shall have an Invoice line identifier (ibt-126).</assert>
    <assert test="$ibr-22" flag="fatal" id="ibr-22">[ibr-22]-Each Invoice line (ibg-25) shall have an Invoiced quantity (ibt-129).</assert>
    <assert test="$ibr-23" flag="fatal" id="ibr-23">[ibr-23]-An Invoice line (ibg-25) shall have an Invoiced quantity unit of measure code (ibt-130).</assert>
    <assert test="$ibr-24" flag="fatal" id="ibr-24">[ibr-24]-Each Invoice line (ibg-25) shall have an Invoice line net amount (ibt-131).</assert>
    <assert test="$ibr-25" flag="fatal" id="ibr-25">[ibr-25]-Each Invoice line (ibg-25) shall contain the Item name (ibt-153).</assert>
    <assert test="$ibr-26" flag="fatal" id="ibr-26">[ibr-26]-Each Invoice line (ibg-25) shall contain the Item net price (ibt-146).</assert>
    <assert test="$ibr-27" flag="fatal" id="ibr-27">[ibr-27]-The Item net price (ibt-146) shall NOT be negative.</assert>
    <assert test="$ibr-28" flag="fatal" id="ibr-28">[ibr-28]-The Item gross price (ibt-148) shall NOT be negative.</assert>
  </rule>
  <rule context="$Invoice_line_allowances ">
    <assert test="$ibr-41" flag="fatal" id="ibr-41">[ibr-41]-Each Invoice line allowance (ibg-27) shall have an Invoice line allowance amount (ibt-136).</assert>
    <assert test="$ibr-42" flag="fatal" id="ibr-42">[ibr-42]-Each Invoice line allowance (ibg-27) shall have an Invoice line allowance reason (ibt-139) or an Invoice line allowance reason code (ibt-140).</assert>
    <assert test="$ibr-co-07" flag="fatal" id="ibr-co-07">[ibr-co-07]-When both Invoice line allowance reason code (iibt-140) and Invoice line allowance reason (iibt-139) the definition of the code is normative.</assert>
  </rule>
  <rule context="$Invoice_line_charges ">
    <assert test="$ibr-43" flag="fatal" id="ibr-43">[ibr-43]-Each Invoice line charge (ibg-28) shall have an Invoice line charge amount (ibt-141).</assert>
    <assert test="$ibr-44" flag="fatal" id="ibr-44">[ibr-44]-Each Invoice line charge (ibg-28) shall have an Invoice line charge reason (ibt-144) or an invoice line allowance reason code (ibt-145). </assert>
    <assert test="$ibr-co-08" flag="fatal" id="ibr-co-08">[ibr-co-08]-When both Invoice line charge reason code (iibt-145) and Invoice line charge reason (iibt-144) the definition of the code is normative.</assert>
    <assert test="$ibr-co-24" flag="fatal" id="ibr-co-24">[ibr-co-24]-Each Invoice line charge (ibg-28) shall contain an Invoice line charge reason (ibt-144) or an Invoice line charge reason code (ibt-145), or both.</assert>
  </rule>
  <rule context="$Invoice_Line_Period ">
    <assert test="$ibr-30" flag="fatal" id="ibr-30">[ibr-30]-If both Invoice line period start date (ibt-134) and Invoice line period end date (ibt-135) are given then the Invoice line period end date (ibt-135) shall be later or equal to the Invoice line period start date (ibt-134).</assert>
    <assert test="$ibr-co-20" flag="fatal" id="ibr-co-20">[ibr-co-20]-If Invoice line period (ibg-26) is used, the Invoice line period start date (ibt-134) or the Invoice line period end date (ibt-135) shall be filled, or both.</assert>
  </rule>
  <rule context="$Invoice_Period ">
    <assert test="$ibr-29" flag="fatal" id="ibr-29">[ibr-29]-If both Invoicing period start date (ibt-073) and Invoicing period end date (ibt-074) are given then the Invoicing period end date (ibt-074) shall be later or equal to the Invoicing period start date (ibt-073).</assert>
    <assert test="$ibr-co-19" flag="fatal" id="ibr-co-19">[ibr-co-19]-If Invoicing period (ibg-14) is used, the Invoicing period start date (ibt-073) or the Invoicing period end date (ibt-074) shall be filled, or both.</assert>
  </rule>
  <rule context="$Item_attributes ">
    <assert test="$ibr-54" flag="fatal" id="ibr-54">[ibr-54]-Each Item attribute (ibg-32) shall contain an Item attribute name (ibt-160) and an Item attribute value (ibt-161).</assert>
  </rule>
  <rule context="$Item_classification_identifier">
    <assert test="$ibr-65" flag="fatal" id="ibr-65">[ibr-65]-The Item classification identifier (ibt-158) shall have a Scheme identifier.</assert>
  </rule>
  <rule context="$Item_standard_identifier">
    <assert test="$ibr-64" flag="fatal" id="ibr-64">[ibr-64]-The Item standard identifier (ibt-157) shall have a Scheme identifier.</assert>
  </rule>
  <rule context="$Payee">
    <assert test="$ibr-17" flag="fatal" id="ibr-17">[ibr-17]-The Payee name (ibt-059) shall be provided in the Invoice, if the Payee (ibg-10) is different from the Seller (ibg-4).</assert>
  </rule>
  <rule context="$Payment_instructions ">
    <assert test="$ibr-49" flag="fatal" id="ibr-49">[ibr-49]-A Payment instruction (ibg-16) shall specify the Payment means type code (ibt-081).</assert>
  </rule>
  <rule context="$Preceding_Invoice">
    <assert test="$ibr-55" flag="fatal" id="ibr-55">[ibr-55]-Each Preceding Invoice reference (ibg-03) shall contain a Preceding Invoice reference (ibt-025).</assert>
  </rule>
  <rule context="$Seller">
    <assert test="$ibr-co-26" flag="fatal" id="ibr-co-26">[ibr-co-26]-In order for the buyer to automatically identify a supplier, the Seller identifier (ibt-029), the Seller legal registration identifier (ibt-030) and/or the Seller Tax identifier (ibt-031) shall be present.</assert>
  </rule>
  <rule context="$Seller_electronic_address">
    <assert test="$ibr-62" flag="fatal" id="ibr-62">[ibr-62]-The Seller electronic address (ibt-034) shall have a Scheme identifier.</assert>
  </rule>
  <rule context="$Seller_postal_address">
    <assert test="$ibr-09" flag="fatal" id="ibr-09">[ibr-09]-The Seller postal address (ibg-05) shall contain a Seller country code (ibt-040).</assert>
  </rule>
  <rule context="$Tax_Representative">
    <assert test="$ibr-18" flag="fatal" id="ibr-18">[ibr-18]-The Seller tax representative name (ibt-062) shall be provided in the Invoice, if the Seller (ibg-04) has a Seller tax representative party (ibg-11)</assert>
    <assert test="$ibr-19" flag="fatal" id="ibr-19">[ibr-19]-The Seller tax representative postal address (ibg-12) shall be provided in the Invoice, if the Seller (ibg-04) has a Seller tax representative party (ibg-11).</assert>
    <assert test="$ibr-56" flag="fatal" id="ibr-56">[ibr-56]-Each Seller tax representative party (ibg-11) shall have a Seller tax representative Tax identifier (ibt-063).</assert>
  </rule>
  <rule context="$Tax_Representative_postal_address">
    <assert test="$ibr-20" flag="fatal" id="ibr-20">[ibr-20]-The Seller tax representative postal address (ibg-12) shall contain a Tax representative country code (ibt-069), if the Seller (ibg-04) has a Seller tax representative party (ibg-11).</assert>
  </rule>
  <rule context="$Tax_subtotal">
    <assert test="$ibr-tax-08" flag="fatal" id="ibr-tax-08">[ibr-tax-08]-For each combination of tax category rate (ibt-119) and tax category code (ibt-118), the tax category taxable amount (ibt-116) in a tax breakdown (ibg-23) shall equal the sum of Invoice line net amounts (ibt-131) plus the sum of document level charge amounts (ibt-099) minus the sum of document level allowance amounts (ibt-092) combination of tax category code (ibt-151, ibt-102, ibt-095) and the tax rate (ibt-152, ibt-103, ibt-096) is the same.</assert>
    <assert test="$ibr-tax-09" flag="fatal" id="ibr-tax-09">[ibr-tax-09]-The tax category tax amount (ibt-117) in a tax breakdown (ibg-23) shall equal the tax category taxable amount (ibt-116) multiplied by the tax category rate (ibt-119).</assert>
  </rule>
  <rule context="$Tax_Total">
      <assert test="$ibr-co-14" flag="fatal" id="ibr-co-14">[ibr-co-14]-Invoice total Tax amount (ibt-110) = Σ Tax category tax amount (ibt-117).</assert>
  </rule>
</pattern>

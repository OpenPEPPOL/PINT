# PINT syntax instruction

The main files are the ubl-invoice.xml and the ubl-creditnote.xml file. They contain only shared PINT business terms or inclusions. The inclusions may be either from the shared folder or from the aligned folder.

All business terms that are shared are either in the main file or in included files from the shared folder. All business terms that can be aligned are in the aligned folder.

This means that individual business domains shall only make changes to business terms that are in files that are in the aligned folder. Additionally, all shared business terms are marked as shared with "Section" tag and aligned business terms with an "Aligned" tag.

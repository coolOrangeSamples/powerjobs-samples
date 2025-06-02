# Sync Properties, Update Revision Block and Create PDF

## Description
With the sample Create PDF job, a PDF is created sometimes with outdated properties or revision block. 

This job will first synchronize properties and updates Revision Block and then finally Creates a PDF file from a drawing.

**Known issues** 
-  Update revision job (separate from the one in this job) runs into error. The reason is because an additional Update revision block job is added 'sometimes' after the sync job finishes which probably finds that the file or CAD application is not currently used by the current executing job.
-  When accessing powerVault's $file's 'Name' or '_Name' property, the sync properties runs into false positive result that it doesn't find any equivalence error on the file. The only workaround currently is not to use the above mentioned properties before or within the sync properties job. This job already makes use of this workaround.
- [#5 - Sync Properties Update Revision Block and Create PDF: ACADM Revision Blocks are not updated correctly](https://github.com/coolOrangeLabs/powerjobs-samples/issues/5)


## Benefit
Ensures up to date PDF generation from drawings before a PDF is created.

## Prerequisites
powerJobs Client version 25.0 or later must be installed on the Vault Explorer Machine(s).

## At your own risk
THE SAMPLE CODE ON THIS REPOSITORY IS PROVIDED "AS IS" WITHOUT WARRANTY OF ANY KIND, EITHER EXPRESSED OR IMPLIED, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE, OR NON-INFRINGEMENT. THE USAGE OF THIS SAMPLE IS AT YOUR OWN RISK AND THERE IS NO SUPPORT RELATED TO IT.

The usage of these samples is at your own risk. There is no free support related to the samples. However, if you have any questions, you can visit https://doc.coolorange.com/ for product documentations or you can start a conversation in our support forum at http://support.coolorange.com/support/discussions

![coolOrange](https://user-images.githubusercontent.com/36075173/46519882-4b518880-c87a-11e8-8dab-dffe826a9630.png)
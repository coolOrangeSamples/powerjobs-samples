# powerjobs-samples

[![Windows](https://img.shields.io/badge/Platform-Windows-lightgray.svg)](https://www.microsoft.com/en-us/windows/)
[![PowerShell](https://img.shields.io/badge/PowerShell-5.1-blue.svg)](https://microsoft.com/PowerShell/)
[![coolOrange powerJobs](https://img.shields.io/badge/coolOrange%20powerJobs-25-orange.svg)](https://doc.coolorange.com/projects/powerjobsprocessor/en/stable/)

## Disclaimer

THE SAMPLE CODE ON THIS REPOSITORY IS PROVIDED "AS IS" WITHOUT WARRANTY OF ANY KIND, EITHER EXPRESSED OR IMPLIED, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE, OR NON-INFRINGEMENT.

THE USAGE OF THIS SAMPLE IS AT YOUR OWN RISK AND **THERE IS NO SUPPORT** RELATED TO IT.

---

## Description

This repository contains various sample jobs that demonstrate the power and flexibility of **coolOrange powerJobs**. As a certified partner, you can use the jobs as samples or templates to speed up your project development/customization and to deliver high quality and flexible jobs to your customer with less effort and less time.

---

## Samples

| Sample | Description |
|--------|-------------|
| [Create DWG 2000 from IDW](Create%20DWG%202000%20from%20IDW/) | Converts an Inventor drawing to an AutoCAD drawing (DWG2000) and adds it to Vault as DesignVisualization |
| [Create DXF from all Drawing Files](Create%20DXF%20from%20all%20Drawing%20Files/) | Converts all drawings to DXF files and adds them to Vault |
| [Create DXF from DWG](Create%20DXF%20from%20DWG/) | Converts an AutoCAD DWG file to DXF using AutoCAD Core Console |
| [Create PDF and Merge multiple Files](Create%20PDF%20and%20Merge%20multiple%20Files/) | Creates PDF files from drawings and combines them into one DesignVisualization file |
| [Create PDF and Upload to SharePoint](Create%20PDF%20and%20Upload%20to%20Sharepoint/) | Creates a PDF file from a drawing and uploads it to a SharePoint folder |
| [Create PDF and Upload to UNC](Create%20PDF%20and%20Upload%20to%20UNC/) | Creates a PDF file from a drawing and copies it to a UNC path |
| [Create PDF and Upload to WeTransfer](Create%20PDF%20and%20Upload%20to%20WeTransfer/) | Creates a PDF file from a drawing and uploads it to WeTransfer |
| [Create PDF and Watermark](Create%20PDF%20and%20Watermark/) | Creates a PDF file from a drawing and adds a watermark |
| [Create PDF and Watermark (PS7)](Create%20PDF%20and%20Watermark%20PS7/) | Creates a PDF file from a drawing and adds a watermark (PowerShell 7) |
| [Create PDF and ZIP multiple Files](Create%20PDF%20and%20ZIP%20multiple%20Files/) | Creates PDF files from drawings and compresses them into a ZIP archive |
| [Create PDF from all Drawing Files](Create%20PDF%20from%20all%20Drawing%20Files/) | Converts all drawings to PDF files and adds them to Vault |
| [Create PDF from AutoCAD Electrical Project](Create%20PDF%20from%20AutoCAD%20Electrical%20Project/) | Creates a merged PDF from all DWGs in an AutoCAD Electrical project |
| [Create PDF from AutoCAD Model or Layouts](Create%20PDF%20from%20AutoCAD%20Model%20or%20Layouts/) | Creates a PDF with options to include/exclude Model space or Layouts |
| [Create SAT from IPT](Create%20SAT%20from%20IPT/) | Converts an Inventor IPT sheet metal file to SAT (unfolded) |
| [Create STL from IPT](Create%20STL%20from%20IPT/) | Converts an Inventor IPT file to STL |
| [Delete PDF on state change](Delete%20PDF%20on%20state%20change/) | Deletes a PDF from a local or network drive when the origin file state changes |
| [Extract File Metadata to Excel](Extract%20File%20Metadata%20to%20Excel/) | Extracts file metadata and exports it to a local Excel file |
| [Extract File Metadata to JSON](Extract%20File%20Metadata%20to%20JSON/) | Extracts file metadata and exports it to a local JSON file |
| [Extract File Metadata to XML](Extract%20File%20Metadata%20to%20XML/) | Extracts file metadata and exports it to a local XML file |
| [Extract File Thumbnail to PNG](Extract%20File%20Thumbnail%20to%20PNG/) | Extracts the thumbnail for a file and exports it as PNG |
| [Publish BOM](Publish%20BOM/) | Extracts an Item BOM to a local XML file |
| [Synchronize File Properties](Synchronize%20File%20Properties/) | Synchronizes file properties according to configured mapping |
| [Sync Properties, Update Revision Block and Create PDF](Sync%20Properties%20Update%20Revision%20Block%20and%20Create%20PDF/) | Syncs properties, updates revision block, then creates a PDF |

---

## Prerequisites

> **Note**: **powerJobs Processor** version **25.0** or greater is required for these samples.

- **powerJobs Processor** installed on the Autodesk Vault **Job Processor machine**

---

## Debugging

To run a script in a code editor such as **Windows PowerShell ISE** or **Visual Studio Code** instead of powerJobs, add the following code to the `.ps1` script:

```powershell
if (-not $IAmRunningInJobProcessor) {
    Import-Module powerJobs
    Open-VaultConnection -Server "localhost" -Vault "Vault" -User "Administrator" -Password ""
    $file = Get-VaultFile -Properties @{Name="Scissors.idw"}
}
```

This logs in to Vault and uses the file `Scissors.idw` if the script is executed by anything other than powerJobs.

---

## At your own risk

The usage of these samples is at your own risk. There is no free support related to the samples. However, if you have questions about powerJobs, visit https://doc.coolorange.com/ for product documentation or start a conversation in our support forum at http://support.coolorange.com/support/discussions

## Author

coolOrange s.r.l.

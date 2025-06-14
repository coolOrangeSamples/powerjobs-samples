# THIS SCRIPT/CODE IS PROVIDED "AS IS" WITHOUT WARRANTY OF ANY KIND, EITHER   #
# EXPRESSED OR IMPLIED, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES #
# OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE, OR NON-INFRINGEMENT.  #
#=============================================================================#
#using Vault API to get the file instead of using powerVault's $file since it runs into property sync job not finding any equivalence problems when '$file.Name' or '$file._Name' is used
$fileForDwfPublish = $vault.DocumentService.GetFileById($file.Id)

Write-Host "Starting job 'Create DWF' for file '$($fileForDwfPublish.Name)' ..."

$JobHandlerDwfPublishAssembly = [System.Reflection.Assembly]::Load("Connectivity.Explorer.JobHandlerDwfPublish")
$dwfPublishJobHandler = $JobHandlerDwfPublishAssembly.CreateInstance("Connectivity.Explorer.JobHandlerDwfPublish.DwfJobHandler",$true, [System.Reflection.BindingFlags]::CreateInstance, $null, $null, $null, $null)

$dwfCreateJob = New-Object Connectivity.Services.Job.DwfCreateJob("vault",[long]$fileForDwfPublish.Id,$fileForDwfPublish.Name) # params - vaultname, fileversionid, filename

$ConnectivityJobProcessorDelegateAssembly = [System.Reflection.Assembly]::Load("Connectivity.JobProcessor.Delegate")
$context = $ConnectivityJobProcessorDelegateAssembly.CreateInstance("Connectivity.JobHandlers.Services.Objects.ServiceJobProcessorServices",$true, [System.Reflection.BindingFlags]::CreateInstance, $null, $null, $null, $null)

$context.GetType().GetProperty("Connection").SetValue($context, $vaultConnection, $null) #need to set the Connection property on the context or else it runs into error

$jobOutcome = $dwfPublishJobHandler.Execute($context,$dwfCreateJob) #call execute to start running the job

if ($jobOutcome -eq "Failure")
{
    throw "Failed job 'Create DWF'" #Failed because of issue that occured in the job
}

Write-Host "Completed job 'Create DWF'"

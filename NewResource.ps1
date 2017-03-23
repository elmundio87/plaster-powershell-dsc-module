param (
        [parameter(Mandatory = $true)]
        [string] $ResourceName,
        [string] $ModuleName = '<%=${PLASTER_PARAM_project_name}%>'
     )

$PlasterParams = @{
 TemplatePath = "C:\PlasterTemplates\plaster-powershell-dsc-resource";
 DestinationPath = "${PSScriptRoot}\packages\${ModuleName}\DSCResources\${ResourceName}"
 project_name = $ResourceName
}

Invoke-Plaster @PlasterParams

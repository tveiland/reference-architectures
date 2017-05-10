# Parameters
$subscriptionID = "d72991ff-73d9-4b31-addf-369e1a4a695b"

$resourceGroupName = "boinfra-rg"

$location = "West Europe"

$templateFile = "..\virtual-machines\n-tier-windows\virtualNetwork.azuredeploy.json "

# Valid values are:
#   - Standard_LRS
#   - Standard_ZRS
#   - Standard_GRS
#   - Standard_RAGRS
#   - Premium_LRS
#$storageAccountType = "Standard_LRS"


# Auxiliary variables
$templateFilePath = Join-Path $PSScriptRoot $templateFile -Resolve

# Login in to Azure
#Login-AzureRmAccount

# Get the subscriptions if you have more
#Get-AzureRmSubscription

# Select the proper subscription if your have more than one
#Select-AzureRmSubscription -SubscriptionId $subscriptionID

#New-AzureRmResourceGroup -Name $resourceGroupName -Location $location
New-AzureRmResourceGroupDeployment -Name ExampleDeployment -ResourceGroupName $resourceGroupName `
  -TemplateFile $templateFilePath -parameterRootUri $parametersRootFolder
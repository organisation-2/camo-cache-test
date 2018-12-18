# This is a powershell module
# but it is not binary

Function Make-SomeChanges {
	[CmdletBinding(DefaultParameterSetName='NoSave')]
}

param 
    (
        [Parameter(Mandatory=$false,ParameterSetName='NoSave')]
	)

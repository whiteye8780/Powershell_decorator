function Decorate-Function {
    [CmdletBinding()]
    param (
        [parameter(Mandatory=$true)]
        [string]$ScriptBlock
    )
   
    begin {
        write-host "begin decoration"
    }
   
    process {
        & ([scriptblock]::Create($ScriptBlock))
    }
   
    end {
        write-host "end decoration"
    }
}


function func(){
    write-host "main function"
}

Decorate-Function -ScriptBlock func

### Mandatory ###
function Set-LocationWithGCI
{
    param(
        $path
    )
    if (Test-Path $path)
    {
        $path = Resolve-Path $path
        Set-Location $path
        Get-ChildItem $path
    }
    else
    {
        "Could not find path $path"
    }
}
Set-Alias cdd Set-LocationWithGCI -Force

### optional ###
Remove-Item alias:\cd
New-Alias cd Set-LocationWithGCI

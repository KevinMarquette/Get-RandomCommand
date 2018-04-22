$obj = [pscustomobject]@{
    PSTypeName = 'MyObject'
    Name = 'test'
    FullName = 'C:\workspace\test.ps1'
    Other = 'data'
}

$TypeData = @{
    TypeName = 'MyObject'
    DefaultDisplayPropertySet = 'Name','FullName'
}
Update-TypeData @TypeData
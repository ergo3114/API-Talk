return 'This is a demo and should be run as such'

# Declare the path to the Windows API library
[string]$assemblyPath = '.\API.Adam\bin\Debug\API.Adam.dll'

# Add into powershell as a type
Add-Type -Path $assemblyPath

# Call function without parameter
[API.Adam.Processes]::GetProcesses()

# Call function with parameter
[API.Adam.Processes]::GetProcess('Code')
[API.Adam.Processes]::GetProcess('pwsh')

# Call function from different class
[API.Adam.OperatingSystem]::GetWindowsTheme()
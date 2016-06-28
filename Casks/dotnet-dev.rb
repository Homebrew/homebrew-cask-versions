cask 'dotnet-dev' do
  version '1.0.0-preview2'
  sha256 'c1ce17a46844291ee327c078e5c354cd5d90817ae2049c450a63522adf9b9c10'

  url 'https://download.microsoft.com/download/0/A/3/0A372822-205D-4A86-BFA7-084D2CBE9EDF/dotnet-dev-osx-x64.1.0.0-preview2-003121.pkg'
  name '.NET Core'
  homepage 'https://www.microsoft.com/net/core#macos'
  license :apache

  pkg 'dotnet-dev-osx-x64.1.0.0-preview2-003121.pkg'

  uninstall pkgutil: 'com.microsoft.dotnet.*'

  caveats "The .NET Core tools collect usage data in order to improve your experience. The data is anonymous and does not include commandline arguments. The data is collected by Microsoft and shared with the community.
You can opt out of telemetry by setting a DOTNET_CLI_TELEMETRY_OPTOUT environment variable to 1 using your favorite shell.
You can read more about .NET Core tools telemetry @ https://aka.ms/dotnet-cli-telemetry.
"
end

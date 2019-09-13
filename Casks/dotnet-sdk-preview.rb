cask 'dotnet-sdk-preview' do
  version '3.0.100-preview9-014004,71504836-0710-43bd-9a92-cda5a3f9ddb8:a8f8e7a94d3c81597dc2787e4e3d1594'
  sha256 '2219d6147deaa7df2112d41f03d100b759abab7817d6e4eafc0752d508c47705'

  url "https://download.visualstudio.microsoft.com/download/pr/#{version.after_comma.before_colon}/#{version.after_colon}/dotnet-sdk-#{version.before_comma}-osx-x64.pkg"
  appcast "https://dotnet.microsoft.com/download/dotnet-core/#{version.major_minor}"
  name '.NET Core SDK'
  homepage 'https://www.microsoft.com/net/core#macos'

  conflicts_with cask: [
                         'dotnet',
                         'dotnet-sdk',
                         'dotnet-preview',
                       ]
  depends_on macos: '>= :sierra'

  pkg "dotnet-sdk-#{version.before_comma}-osx-x64.pkg"
  binary '/usr/local/share/dotnet/dotnet'

  uninstall pkgutil: [
                       'com.microsoft.dotnet.*',
                       'com.microsoft.netstandard.*',
                     ],
            delete:  '/etc/paths.d/dotnet'

  zap trash: '~/.nuget'
end

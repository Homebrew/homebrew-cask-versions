cask 'dotnet-sdk-preview' do
  version '3.0.100-preview6-012264'
  sha256 '109ba444cbce5c284a82292748b959ff59a19194d44dacdd69a316bf5626bb4e'

  url "https://download.visualstudio.microsoft.com/download/pr/31af4401-55f7-487c-adf7-2b6bed7cb1c5/a6aafa2569a628a80a6ebd2a2fd5c6f3/dotnet-sdk-#{version}-osx-x64.pkg"
  appcast 'https://www.microsoft.com/net/download/macos'
  name '.NET Core SDK'
  homepage 'https://www.microsoft.com/net/core#macos'

  conflicts_with cask: [
                         'dotnet',
                         'dotnet-sdk',
                         'dotnet-preview',
                       ]
  depends_on macos: '>= :sierra'

  pkg "dotnet-sdk-#{version}-osx-x64.pkg"
  binary '/usr/local/share/dotnet/dotnet'

  uninstall pkgutil: [
                       'com.microsoft.dotnet.*',
                       'com.microsoft.netstandard.*',
                     ],
            delete:  '/etc/paths.d/dotnet'

  zap trash: '~/.nuget'
end

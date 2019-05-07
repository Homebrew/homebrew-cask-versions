cask 'dotnet-sdk-preview' do
  version '3.0.100-preview5-011568'
  sha256 '42b04e419ca1f4b9a95836d3663f94dd4113a755f808a30a93988fe8e6e4a16e'

  url "https://download.visualstudio.microsoft.com/download/pr/afcef2c8-471f-48aa-8030-010fb6c8517b/75a05bc56f2849f80d5ca7b834bb8722/dotnet-sdk-#{version}-osx-x64.pkg"
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

  uninstall pkgutil: [
                       'com.microsoft.dotnet.*',
                       'com.microsoft.netstandard.*',
                     ],
            delete:  '/etc/paths.d/dotnet'

  zap trash: '~/.nuget'
end

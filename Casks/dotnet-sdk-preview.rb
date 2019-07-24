cask 'dotnet-sdk-preview' do
  version '3.0.100-preview7-012821'
  sha256 '44de66897f4f5a1991e46d6e4689682067a5bef1cd1b28827bc70fd095547f40'

  url "https://download.visualstudio.microsoft.com/download/pr/64cb8405-ee15-4a9a-bf25-1201531f4519/b619596c137a08b204fc79a213bb9763/dotnet-sdk-#{version}-osx-x64.pkg"
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

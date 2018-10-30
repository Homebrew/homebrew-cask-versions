cask 'dotnet-sdk-preview' do
  version '2.2.100-preview2-009404'
  sha256 '0df3645b21197a50bfeaeb34887230cd194c8a160834115f761cbfa3e7019015'

  url "https://download.microsoft.com/download/D/5/9/D593CD8F-04E7-425D-962C-86FF4C90B1DA/dotnet-sdk-#{version}-osx-x64.pkg"
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

  uninstall pkgutil: 'com.microsoft.dotnet.*',
            delete:  '/etc/paths.d/dotnet'

  zap trash: '~/.nuget'
end

cask 'dotnet-sdk-preview' do
  version '3.0.100-preview-010184,9748ef38-c39d-421c-85ba-87cb594f39d7#44971a83ac21284c39927cba8d747d99'
  sha256 'd358732afb8f6a354a020e5446e71c9546eb912888f950aebc60232cd0658c2f'

  url "https://download.visualstudio.microsoft.com/download/pr/#{version.after_comma.sub(%r{#+}, '/')}/dotnet-sdk-#{version.before_comma}-osx-x64.pkg"
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

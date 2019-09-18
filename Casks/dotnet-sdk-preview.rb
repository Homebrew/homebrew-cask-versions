cask 'dotnet-sdk-preview' do
  version '3.0.100-rc1-014190,fa3375a4-e275-4730-ac9c-7521ebd53e0b:f911765e7fa24c37153ab11f453db756'
  sha256 'b7695b64b1efe71188ac61a8242b4aa5c115650e0007a2b6c5fb9234f356faa8'

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

cask 'dotnet-preview' do
  version '5.0.0-preview.3.20214.6,de092180-43f4-4f89-b72c-a149aa86caf4:d603d2b043ae80556f1239946140471a'
  sha256 '859a5d3d55549ccb2d6b65784f3633ac0ac3f4806f88cbce911206f23b23fd6e'

  url "https://download.visualstudio.microsoft.com/download/pr/#{version.after_comma.before_colon}/#{version.after_colon}/dotnet-runtime-#{version.before_comma}-osx-x64.pkg"
  appcast 'https://dotnet.microsoft.com/download/dotnet-core'
  name '.Net Core Runtime'
  homepage 'https://www.microsoft.com/net/core#macos'

  conflicts_with cask: [
                         'dotnet',
                         'dotnet-sdk',
                         'dotnet-sdk-preview',
                       ]
  depends_on macos: '>= :sierra'

  pkg "dotnet-runtime-#{version.before_comma}-osx-x64.pkg"
  binary '/usr/local/share/dotnet/dotnet'

  uninstall pkgutil: 'com.microsoft.dotnet.*',
            delete:  '/etc/paths.d/dotnet'

  zap trash: '~/.nuget'
end

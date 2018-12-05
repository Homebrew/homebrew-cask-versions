cask 'dotnet-sdk-preview' do
  version '3.0.100-preview-009812'
  sha256 '87bf32be80cd24a9086f82adcf0d9fe698ab6e45957657feb8ef409fa61923b4'

  url "https://download.visualstudio.microsoft.com/download/pr/4331e5b4-528a-422d-a03e-6f4f877adc33/54651267c4af9d4b6dedb661f267085d/dotnet-sdk-#{version}-osx-x64.pkg"
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

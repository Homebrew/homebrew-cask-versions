cask 'dotnet-preview' do
  version '3.1.0-preview1.19506.1,50d73b14-9a37-4e53-a2dd-185772a7a8a1:683df9537ff2e24da62f66c624b37211'
  sha256 '4d4f9809c5b33bd9504d979f96b5f32b3f7fba605a73a3607788d2ea0b2f9d51'

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

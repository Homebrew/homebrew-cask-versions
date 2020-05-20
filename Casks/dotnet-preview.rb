cask 'dotnet-preview' do
  version '5.0.0-preview.4.20251.6,25a7898d-1bb3-4472-bae9-ed24c8b4124a:dedf9dbb6d310ac5a9616d7b67fc77d0'
  sha256 '4451c86060914492247b14c12579cf67ffda1a17aa8ac1cdabd949252a5067a6'

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

cask 'dotnet-preview' do
  version '2.2.0-preview2-26905-02'
  sha256 '26c9ad4fe67510f5714f58a5d31ae657675dd9f918e4de083e02eb99609f10cf'

  url "https://download.microsoft.com/download/5/B/A/5BA1012E-5112-45C2-8369-152B49A6AA3B/dotnet-runtime-#{version}-osx-x64.pkg"
  appcast 'https://www.microsoft.com/net/download/macos'
  name '.Net Core Runtime'
  homepage 'https://www.microsoft.com/net/core#macos'

  conflicts_with cask: [
                         'dotnet',
                         'dotnet-sdk',
                         'dotnet-sdk-preview',
                       ]
  depends_on macos: '>= :sierra'

  pkg "dotnet-runtime-#{version}-osx-x64.pkg"

  uninstall pkgutil: 'com.microsoft.dotnet.*',
            delete:  '/etc/paths.d/dotnet'

  zap trash: '~/.nuget'
end

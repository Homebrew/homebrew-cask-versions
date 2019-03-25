cask 'dotnet-sdk-preview' do
  version '3.0.100-preview3-010431'
  sha256 '812827b5a7a38124a6f449ebe52ecbd17a485864849b637424d3660c7bc28e43'

  url "https://download.visualstudio.microsoft.com/download/pr/5f0daf69-7f98-4fa1-96a3-e76b4968b20d/58416a5d79bb578456beb80725c88bd7/dotnet-sdk-#{version}-osx-x64.pkg"
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

cask 'dotnet-preview' do
  version '2.0.0-preview2-25407-01'
  sha256 'a1682bbc89e931ab2a734056604985c59add9e08a1d56d7eb954cd0beab925e3'

  url "https://download.microsoft.com/download/7/C/3/7C310A63-13AC-49A4-9666-4CB26388F852/dotnet-runtime-#{version}-osx-x64.pkg"
  name '.NET Core Preview'
  homepage 'https://www.microsoft.com/net/core/preview#macos'

  depends_on macos: '>= :sierra'

  pkg "dotnet-runtime-#{version}-osx-x64.pkg"

  uninstall pkgutil: 'com.microsoft.dotnet*',
            delete:  '/etc/paths.d/dotnet'

  zap trash: '~/.nuget'
end

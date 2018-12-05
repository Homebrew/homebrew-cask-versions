cask 'dotnet-preview' do
  version '3.0.0-preview-27122-01'
  sha256 'b619abf79ffda8ad4048c8143ac882749dd32132ed1e1a1cfd2ffceb3ee5e543'

  url "https://download.visualstudio.microsoft.com/download/pr/69507539-d683-4ab5-a5c5-6fe356ce0e6a/ec078cea28f02351a1aa63b5615f1e63/dotnet-runtime-#{version}-osx-x64.pkg"
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

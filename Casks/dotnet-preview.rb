cask 'dotnet-preview' do
  version '3.1.0-preview3.19553.2,00df5471-eaaf-4e0b-9c67-1e2b0975629e:b45c781b030d3acaf582ed9ebe537292'
  sha256 '9d92f12934d5c73b16d4d24b9ec8201e040d0c5ce03ecd7e32d97f08544ea7f2'

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

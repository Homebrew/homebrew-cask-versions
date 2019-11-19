cask 'dotnet-sdk-preview' do
  version '3.1.100-preview3-014645,f4377189-a171-425b-8ef6-f8f21e89a8b0:b0d3561b13bd43ab4771bb62a2fddd4d'
  sha256 '61fd5b2630a3ac536cfbf66172f62a246ccf87c7fe7988b188e257089eb0a4aa'

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

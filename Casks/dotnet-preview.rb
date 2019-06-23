cask 'dotnet-preview' do
  version '3.0.0-preview3-27503-5'
  sha256 'e53a5401e724a40a14b4ff115473e2bb28bf1f5eb9f403dd66d0d35bba1782b6'

  url "https://download.visualstudio.microsoft.com/download/pr/87199dc9-d292-44c9-9e60-e0b31bd436a8/e623908b4fb283b793af3f5e3c6f26b0/dotnet-runtime-#{version}-osx-x64.pkg"
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

  postflight do
    FileUtils.ln_sf('/usr/local/share/dotnet/dotnet', "#{HOMEBREW_PREFIX}/bin/dotnet")
  end

  uninstall pkgutil: 'com.microsoft.dotnet.*',
            delete:  [
                       '/etc/paths.d/dotnet',
                       "#{HOMEBREW_PREFIX}/bin/dotnet",
                     ]

  zap trash: '~/.nuget'
end

cask 'mono-mdk-for-visual-studio' do
  version '6.6.0.166'
  sha256 '6169418b4f6967ed4e1bd460c4f224c3b78040e0d69f4681b3a96886a0a4412f'

  url "https://download.mono-project.com/archive/#{version.major_minor_patch}/macos-10-universal/MonoFramework-MDK-#{version}.macos10.xamarin.universal.pkg"
  appcast 'https://www.mono-project.com/download/vs/'
  name 'Mono'
  homepage 'https://www.mono-project.com/'

  conflicts_with cask: 'mono-mdk'

  pkg "MonoFramework-MDK-#{version}.macos10.xamarin.universal.pkg"

  uninstall delete:  [
                       "/Library/Frameworks/Mono.framework/Versions/#{version.major_minor_patch}",
                       '/private/etc/paths.d/mono-commands',
                     ],
            pkgutil: 'com.xamarin.mono-*',
            rmdir:   [
                       '/Library/Frameworks/Mono.framework/Versions',
                       '/Library/Frameworks/Mono.framework',
                     ]

  caveats <<~EOS
    This is a version specific for Visual Studio users. This cask should follow the specific Visual Studio channel/branch maintained by mono developers.

    Installing #{token} removes mono and mono dependant formula binaries in
    /usr/local/bin and adds #{token} to /private/etc/paths.d/
    You may want to:

      brew unlink {formula} && brew link {formula}

    and/or remove /private/etc/paths.d/mono-commands
  EOS
end

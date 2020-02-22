cask 'mono-mdk-for-visual-studio' do
  version '6.6.0.161'
  sha256 '8f0b7f6a34321fc4c46e9e6d7ad83c73ae009289fb689ac9f846eebb51146a6e'

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

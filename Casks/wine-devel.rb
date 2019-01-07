cask 'wine-devel' do
  version '4.0-rc5'
  sha256 'b4c305bd0b3f62ffa78bfda5b3b1158f41dabbe4383abd304dac12449cab6944'

  url "https://dl.winehq.org/wine-builds/macosx/pool/winehq-devel-#{version}.pkg"
  appcast 'https://dl.winehq.org/wine-builds/macosx/download.html'
  name 'WineHQ-devel'
  homepage 'https://wiki.winehq.org/MacOS'

  conflicts_with formula: 'wine',
                 cask:    [
                            'wine-stable',
                            'wine-staging',
                          ]
  depends_on x11: true

  pkg "winehq-devel-#{version}.pkg",
      choices: [
                 {
                   'choiceIdentifier' => 'choice3',
                   'choiceAttribute'  => 'selected',
                   'attributeSetting' => 1,
                 },
               ]
  binary "#{appdir}/Wine Devel.app/Contents/Resources/start/bin/appdb"
  binary "#{appdir}/Wine Devel.app/Contents/Resources/start/bin/winehelp"
  binary "#{appdir}/Wine Devel.app/Contents/Resources/wine/bin/msiexec"
  binary "#{appdir}/Wine Devel.app/Contents/Resources/wine/bin/notepad"
  binary "#{appdir}/Wine Devel.app/Contents/Resources/wine/bin/regedit"
  binary "#{appdir}/Wine Devel.app/Contents/Resources/wine/bin/regsvr32"
  binary "#{appdir}/Wine Devel.app/Contents/Resources/wine/bin/wine"
  binary "#{appdir}/Wine Devel.app/Contents/Resources/wine/bin/wine64"
  binary "#{appdir}/Wine Devel.app/Contents/Resources/wine/bin/wineboot"
  binary "#{appdir}/Wine Devel.app/Contents/Resources/wine/bin/winecfg"
  binary "#{appdir}/Wine Devel.app/Contents/Resources/wine/bin/wineconsole"
  binary "#{appdir}/Wine Devel.app/Contents/Resources/wine/bin/winedbg"
  binary "#{appdir}/Wine Devel.app/Contents/Resources/wine/bin/winefile"
  binary "#{appdir}/Wine Devel.app/Contents/Resources/wine/bin/winemine"
  binary "#{appdir}/Wine Devel.app/Contents/Resources/wine/bin/winepath"
  binary "#{appdir}/Wine Devel.app/Contents/Resources/wine/bin/wineserver"

  uninstall pkgutil: [
                       'org.winehq.wine-devel',
                       'org.winehq.wine-devel-deps',
                       'org.winehq.wine-devel-deps64',
                       'org.winehq.wine-devel32',
                       'org.winehq.wine-devel64',
                     ],
            delete:  '/Applications/Wine Devel.app'

  caveats <<~EOS
    #{token} installs support for running 64 bit applications in Wine, which is considered experimental.
    If you do not want 64 bit support, you should download and install the #{token} package manually.
  EOS
end

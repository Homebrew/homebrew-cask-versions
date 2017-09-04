cask 'wine-devel' do
  version '2.16'
  sha256 'e40605945831f9d61dbc9889695b82a28bb925cfd73af4462d2f080429e7127d'

  url "https://dl.winehq.org/wine-builds/macosx/pool/winehq-devel-#{version}.pkg"
  name 'WineHQ-devel'
  homepage 'https://wiki.winehq.org/MacOS'

  depends_on cask: 'xquartz'

  pkg "winehq-devel-#{version}.pkg",
      choices: [
                 {
                   'choiceIdentifier' => 'choice3',
                   'choiceAttribute'  => 'selected',
                   'attributeSetting' => 1,
                 },
               ]

  uninstall pkgutil: [
                       'org.winehq.wine-devel',
                       'org.winehq.wine-devel-deps',
                       'org.winehq.wine-devel-deps64',
                       'org.winehq.wine-devel32',
                       'org.winehq.wine-devel64',
                     ],
            delete:  '/Applications/Wine Devel.app'

  caveats <<-EOS.undent
    #{token} installs support for running 64 bit applications in Wine, which is considered experimental.
    If you do not want 64 bit support, you should download and install the #{token} package manually.
  EOS
end

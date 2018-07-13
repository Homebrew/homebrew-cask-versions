cask 'wine-devel' do
  version '3.12'
  sha256 '46604a64f7651df883030ea578b1039cbabb7c93bf7e030de713967f17f455b1'

  url "https://dl.winehq.org/wine-builds/macosx/pool/winehq-devel-#{version}.pkg"
  appcast 'https://dl.winehq.org/wine-builds/macosx/download.html'
  name 'WineHQ-devel'
  homepage 'https://wiki.winehq.org/MacOS'

  depends_on x11: true

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

  caveats <<~EOS
    #{token} installs support for running 64 bit applications in Wine, which is considered experimental.
    If you do not want 64 bit support, you should download and install the #{token} package manually.
  EOS
end

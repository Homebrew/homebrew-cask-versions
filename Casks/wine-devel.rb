cask 'wine-devel' do
  version '2.14'
  sha256 '2fc814d4b3fe9815690ccb77275ef7263fe75b102ef60daf931e1a4ad3db7c9a'

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

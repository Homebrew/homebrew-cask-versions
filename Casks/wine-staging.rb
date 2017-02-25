cask 'wine-staging' do
  version '2.2'
  sha256 'aed6cd105b896a94c9ed0efb0ca1c984ddd53ee1cae1ff3aeba1f19aaba82001'

  url "https://repos.wine-staging.com/macosx/i686/winehq-staging-#{version}.pkg"
  name 'WineHQ-staging'
  homepage 'https://www.wine-staging.com/'

  depends_on cask: 'xquartz'

  pkg "winehq-staging-#{version}.pkg",
      choices: [
                 {
                   'choiceIdentifier' => 'choice3',
                   'choiceAttribute'  => 'selected',
                   'attributeSetting' => 1,
                 },
               ]

  uninstall pkgutil: [
                       'org.winehq.wine-staging',
                       'org.winehq.wine-staging-deps',
                       'org.winehq.wine-staging-deps64',
                       'org.winehq.wine-staging32',
                       'org.winehq.wine-staging64',
                     ],
            delete:  '/Applications/Wine Staging.app'

  caveats <<-EOS.undent
    #{token} installs support for running 64 bit applications in Wine, which is considered experimental.
    If you do not want 64 bit support, you should download and install the #{token} package manually.
  EOS
end

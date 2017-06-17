cask 'wine-staging' do
  version '2.10-2'
  sha256 '9f011fb00f18e05a95faf3a86ce9239ddf0c2035f363effe7a02420ef4bdd9e3'

  # dl.winehq.org/wine-builds/macosx was verified as official when first introduced to the cask
  url "https://dl.winehq.org/wine-builds/macosx/pool/winehq-staging-#{version}.pkg"
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

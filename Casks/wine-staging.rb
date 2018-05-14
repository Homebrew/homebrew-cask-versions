cask 'wine-staging' do
  version '3.8'
  sha256 'de01e5758a561dea9b2b9c84f9a69aa1fd9ce2f277a792925f5cc21c589f8ffe'

  # dl.winehq.org/wine-builds/macosx was verified as official when first introduced to the cask
  url "https://dl.winehq.org/wine-builds/macosx/pool/winehq-staging-#{version}.pkg"
  appcast 'https://dl.winehq.org/wine-builds/macosx/download.html',
          checkpoint: '0bb1396b2d74d73c1b9a90f87a014dfc2c301224763ae52b30c51c6f8c08b480'
  name 'WineHQ-staging'
  homepage 'https://www.wine-staging.com/'

  depends_on x11: true

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

  caveats <<~EOS
    #{token} installs support for running 64 bit applications in Wine, which is considered experimental.
    If you do not want 64 bit support, you should download and install the #{token} package manually.
  EOS
end

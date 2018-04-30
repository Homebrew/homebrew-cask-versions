cask 'wine-staging' do
  version '3.7'
  sha256 'c50474f5bd76749c2382e59b0e24a3e4b9936e546048a3ca69d732a92cea013d'

  # dl.winehq.org/wine-builds/macosx was verified as official when first introduced to the cask
  url "https://dl.winehq.org/wine-builds/macosx/pool/winehq-staging-#{version}.pkg"
  appcast 'https://dl.winehq.org/wine-builds/macosx/download.html',
          checkpoint: '0cbf008dcc329fc2e2c1d3bf928e5cd745c74a5cdc6ebeebb8613cc2237550eb'
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

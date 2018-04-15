cask 'github-beta' do
  version '1.1.2-beta2-54018eea'
  sha256 'ab8ad507450743d54d78ffa5e5be51589be5199c0d2dfdfedea3ad0533dcd255'

  # githubusercontent.com was verified as official when first introduced to the cask
  url "https://desktop.githubusercontent.com/releases/#{version}/GitHubDesktop.zip"
  appcast 'https://github.com/desktop/desktop/releases.atom',
          checkpoint: '9c0da56754cf4b28f37a93e745f2fb5ed84e2f34bee49e8393d55af1591bd7b2'
  name 'GitHub Desktop'
  homepage 'https://desktop.github.com/'

  auto_updates true

  app 'GitHub Desktop.app'
  binary "#{appdir}/GitHub Desktop.app/Contents/Resources/app/static/github.sh", target: 'github'

  zap trash: [
               '~/Library/Application Support/GitHub Desktop',
               '~/Library/Application Support/com.github.GitHubClient',
               '~/Library/Application Support/com.github.GitHubClient.ShipIt',
               '~/Library/Application Support/ShipIt_stderr.log',
               '~/Library/Application Support/ShipIt_stdout.log',
               '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.github.GitHubClient.sfl*',
               '~/Library/Caches/com.github.GitHubClient',
               '~/Library/Caches/com.github.GitHubClient.ShipIt',
               '~/Library/Preferences/com.github.GitHubClient.helper.plist',
               '~/Library/Preferences/com.github.GitHubClient.plist',
             ],
      rmdir: '~/.config/git'
end

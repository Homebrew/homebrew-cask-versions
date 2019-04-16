cask 'github-beta' do
  version '1.7.0-beta1-4d3f07e8'
  sha256 '75b2b991d030cd1cd71bcf576f1fb396bf3989305210a654af0511353296b189'

  # githubusercontent.com was verified as official when first introduced to the cask
  url "https://desktop.githubusercontent.com/releases/#{version}/GitHubDesktop.zip"
  appcast 'https://github.com/desktop/desktop/releases.atom'
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

cask 'github-beta' do
  version '1.1.1-beta4-6774b7f9'
  sha256 'b7cb55e6d3d851b9639d34fb5e8bfdc376adfd86b5e6bb4a3c529492ed143900'

  # githubusercontent.com was verified as official when first introduced to the cask
  url "https://desktop.githubusercontent.com/releases/#{version}/GitHubDesktop.zip"
  appcast 'https://github.com/desktop/desktop/releases.atom',
          checkpoint: '6ecaffd1adf33542af9ada033e98723fbe62b59b1acb260550a393777ac603d6'
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

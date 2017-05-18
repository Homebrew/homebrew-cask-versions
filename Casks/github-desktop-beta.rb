cask 'github-desktop-beta' do
  version '0.5.3'
  sha256 '7d676199512dd4179eb61afe4d12d1a73645cb1a0568c8ce97bc3bb5400b48bb'

  url 'https://central.github.com/deployments/desktop/desktop/latest/darwin'
  appcast 'https://github.com/desktop/desktop/releases.atom',
          checkpoint: '003d5f31f2038dccab13d83f8ed48db8f4c9fd328e440d37e99b25724ee025bb'
  name 'GitHub Desktop'
  homepage 'https://desktop.github.com/'

  auto_updates true

  app 'GitHub Desktop.app'

  postflight do
    suppress_move_to_applications
  end

  zap delete: [
                '~/Library/Application Support/GitHub Desktop',
                '~/Library/Application Support/ShipIt_stderr.log',
                '~/Library/Application Support/ShipIt_stdout.log',
                '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.github.GitHubClient.sfl',
                '~/Library/Application Support/com.github.GitHubClient',
                '~/Library/Application Support/com.github.GitHubClient.ShipIt',
                '~/Library/Caches/com.github.GitHubClient',
                '~/Library/Caches/com.github.GitHubClient.ShipIt',
                '~/Library/Preferences/com.github.GitHubClient.helper.plist',
                '~/Library/Preferences/com.github.GitHubClient.plist',
              ],
      rmdir:  '~/.config/git'
end

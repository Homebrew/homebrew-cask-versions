cask 'slack-beta' do
  version '2.3.4'
  sha256 'f2ed659a8990330fbdd3564bc45cc2bba0ddaae784a1fdff83f68f6d0a8bc336'

  # downloads.slack-edge.com was verified as official when first introduced to the cask
  url "https://downloads.slack-edge.com/mac_releases_beta/Slack-#{version}-macOS.zip"
  name 'Slack'
  homepage 'https://slack.com/beta/osx'

  auto_updates true

  app 'Slack.app'

  uninstall quit: 'com.tinyspeck.slackmacgap'

  zap delete: [
                '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.tinyspeck.slackmacgap.sfl',
                '~/Library/Application Support/Slack',
                '~/Library/Caches/com.tinyspeck.slackmacgap',
                '~/Library/Containers/com.tinyspeck.slackmacgap',
                '~/Library/Containers/com.tinyspeck.slackmacgap.SlackCallsService',
                '~/Library/Cookies/com.tinyspeck.slackmacgap.binarycookies',
                '~/Library/Preferences/com.tinyspeck.slackmacgap.plist',
                '~/Library/Saved Application State/com.tinyspeck.slackmacgap.savedState',
              ]
end

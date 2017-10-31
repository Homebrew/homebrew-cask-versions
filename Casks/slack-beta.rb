cask 'slack-beta' do
  version '3.0.0-beta2638bae9'
  sha256 '1e3ed085e1ee4eb767cc9d9d7267c67dba41f75be9ff0c25e79c75982ae03aa2'

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

cask 'slack-beta' do
  version '2.7.0-beta53287a7'
  sha256 'a1c82b1e59c1bf27fcdd6452341ab64a116ec93565dc64e5c1155d94a2545472'

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

cask 'slack-beta' do
  version '3.0.0-beta32161c03'
  sha256 '746276bfbae60d7a93b1c8ac7b5973b03568733efd2f89e1b6da84288515a758'

  # downloads.slack-edge.com was verified as official when first introduced to the cask
  url "https://downloads.slack-edge.com/mac_releases_beta/Slack-#{version}-macOS.zip"
  name 'Slack'
  homepage 'https://slack.com/beta/osx'

  auto_updates true

  app 'Slack.app'

  uninstall quit: 'com.tinyspeck.slackmacgap'

  zap trash: [
               '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.tinyspeck.slackmacgap.sfl*',
               '~/Library/Application Support/Slack',
               '~/Library/Caches/com.tinyspeck.slackmacgap',
               '~/Library/Containers/com.tinyspeck.slackmacgap',
               '~/Library/Containers/com.tinyspeck.slackmacgap.SlackCallsService',
               '~/Library/Cookies/com.tinyspeck.slackmacgap.binarycookies',
               '~/Library/Preferences/com.tinyspeck.slackmacgap.plist',
               '~/Library/Saved Application State/com.tinyspeck.slackmacgap.savedState',
             ]
end

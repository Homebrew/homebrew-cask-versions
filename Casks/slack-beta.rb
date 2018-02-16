cask 'slack-beta' do
  version '3.1.0-beta12f99420'
  sha256 'e6e82d5011991ccd6395e16f0753c4458f964ec25535affa2fa473175ed762f1'

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

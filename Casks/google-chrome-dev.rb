cask 'google-chrome-dev' do
  version '64.0.3269.3'
  sha256 '91f674fa08c396b670f77ba1c0bc6b16e437eaf34ac9883ead6e656d5312862d'

  url 'https://dl.google.com/chrome/mac/dev/googlechrome.dmg'
  appcast 'https://omahaproxy.appspot.com/history?os=mac;channel=dev',
          checkpoint: '1b0c531165fe32bac802816cfa1768f4f6a818085ee279961c39ce36b6dedbfe'
  name 'Google Chrome'
  homepage 'https://www.google.com/chrome/browser/desktop/index.html?extra=devchannel'

  conflicts_with cask: [
                         'google-chrome',
                         'google-chrome-beta',
                       ]

  app 'Google Chrome.app'

  uninstall launchctl: [
                         'com.google.keystone.agent',
                         'com.google.keystone.daemon',
                       ]

  zap trash: [
               '/Library/Caches/com.google.SoftwareUpdate.*',
               '/Library/Google/Google Chrome Brand.plist',
               '/Library/Google/GoogleSoftwareUpdate',
               '~/Library/Application Support/Google/Chrome',
               '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.google.chrome.app.*.sfl*',
               '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.google.chrome.sfl*',
               '~/Library/Caches/Google/Chrome',
               '~/Library/Caches/com.google.Chrome',
               '~/Library/Caches/com.google.Chrome.helper.*',
               '~/Library/Caches/com.google.Keystone',
               '~/Library/Caches/com.google.Keystone.Agent',
               '~/Library/Caches/com.google.SoftwareUpdate',
               '~/Library/Google/Google Chrome Brand.plist',
               '~/Library/Google/GoogleSoftwareUpdate',
               '~/Library/LaunchAgents/com.google.keystone.agent.plist',
               '~/Library/Logs/GoogleSoftwareUpdateAgent.log',
               '~/Library/Preferences/com.google.Chrome.plist',
               '~/Library/Preferences/com.google.Keystone.Agent.plist',
               '~/Library/Saved Application State/com.google.Chrome.app.*.savedState',
               '~/Library/Saved Application State/com.google.Chrome.savedState',
               '~/Library/WebKit/com.google.Chrome',
             ],
      rmdir: [
               '/Library/Google',
               '~/Library/Application Support/Google',
               '~/Library/Caches/Google',
               '~/Library/Google',
             ]
end

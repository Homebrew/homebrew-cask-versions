cask 'google-chrome-canary' do
  version '64.0.3273.0'
  sha256 '9b0b0052625bfe8aba077c206bc15ef11cdd6602679fe99c68683612b2a5775e'

  url 'https://dl.google.com/release2/q/canary/googlechrome.dmg'
  appcast 'https://omahaproxy.appspot.com/history?os=mac;channel=canary',
          checkpoint: '09e2da142b1a49116417a24bc94f3d918a81a7c6673d237b028190499f1afc93'
  name 'Google Chrome Canary'
  homepage 'https://www.google.com/chrome/browser/canary.html?platform=mac'

  auto_updates true

  app 'Google Chrome Canary.app'

  uninstall launchctl: [
                         'com.google.keystone.agent',
                         'com.google.keystone.daemon',
                       ]

  zap trash: [
               '/Library/Caches/com.google.SoftwareUpdate.*',
               '/Library/Google/Google Chrome Brand.plist',
               '/Library/Google/GoogleSoftwareUpdate',
               '~/Library/Application Support/Google/Chrome Canary',
               '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.google.chrome.app.*.sfl*',
               '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.google.chrome.sfl*',
               '~/Library/Caches/Google/Chrome Canary',
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

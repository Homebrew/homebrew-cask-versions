cask 'intika-firefox-esr' do
  version '2.1,60.4.0:64.0.0'
  sha256 '1c29e57a8c7ffdefedd70d897b8edbc327e6370b99c9e0f22b528def9f91764b'

  url "https://github.com/intika/Librefox/releases/download/Librefox-v#{version.before_comma}-v#{version.after_colon}/Librefox-#{version.before_comma}-Firefox-Mac-#{version.after_comma.before_colon}-x64-ESR.dmg"
  appcast 'https://github.com/intika/Librefox/releases.atom'
  name 'Librefox'
  homepage 'https://github.com/intika/Librefox'

  conflicts_with cask: [
                         'intika-firefox',
                         'firefox',
                         'firefox-beta',
                         'firefox-esr',
                       ]

  app 'Firefox.app'

  zap trash: [
               '/Library/Logs/DiagnosticReports/firefox_*',
               '~/Library/Application Support/Firefox',
               '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.mozilla.firefox.sfl*',
               '~/Library/Caches/Firefox',
               '~/Library/Caches/Mozilla/updates/Applications/Firefox',
               '~/Library/Preferences/org.mozilla.firefox.plist',
             ],
      rmdir: [
               '~/Library/Application Support/Mozilla',
               '~/Library/Caches/Mozilla/updates/Applications',
               '~/Library/Caches/Mozilla/updates',
               '~/Library/Caches/Mozilla',
             ]
end

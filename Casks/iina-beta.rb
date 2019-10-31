cask 'iina-beta' do
  version '1.0.0-rc'
  sha256 '40fb3442705e8ca1ab27c16e6dbdab9d41f926e4eeecb65c8f7829196b9cb863'

  url "https://dl-portal.iina.io/IINA.v#{version}.dmg"
  appcast 'https://www.iina.io/appcast-beta.xml'
  name 'IINA'
  homepage 'https://iina.io/'

  auto_updates true
  conflicts_with cask: [
                         'iina',
                         'iina-nightly',
                       ]
  depends_on macos: '>= :el_capitan'

  app 'IINA.app'
  binary "#{appdir}/IINA.app/Contents/MacOS/iina-cli", target: 'iina'

  zap trash: [
               '~/Library/Application Scripts/com.colliderli.iina.OpenInIINA',
               '~/Library/Application Support/com.colliderli.iina',
               '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.colliderli.iina.sfl*',
               '~/Library/Application Support/CrashReporter/IINA*.plist',
               '~/Library/Caches/com.colliderli.iina',
               '~/Library/Containers/com.colliderli.iina.OpenInIINA',
               '~/Library/Cookies/com.colliderli.iina.binarycookies',
               '~/Library/Logs/com.colliderli.iina',
               '~/Library/Logs/DiagnosticReports/IINA*.crash',
               '~/Library/Preferences/com.colliderli.iina.plist',
               '~/Library/Safari/Extensions/Open in IINA*.safariextz',
               '~/Library/Saved Application State/com.colliderli.iina.savedState',
             ]
end

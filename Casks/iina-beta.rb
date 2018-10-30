cask 'iina-beta' do
  version '1.0.0-beta4-build92'
  sha256 'b1eebda515978b620a0447a7b3cd043653f97079bfd9fe4571fac0218d4ed3bd'

  # dl-portal.iina.io was verified as official when first introduced to the cask
  url "https://dl-portal.iina.io/IINA.v#{version}.dmg"
  appcast 'https://www.iina.io/appcast-beta.xml'
  name 'IINA'
  homepage 'https://lhc70000.github.io/iina/'

  auto_updates true
  conflicts_with cask: 'iina'
  depends_on macos: '>= :el_capitan'

  app 'IINA.app'
  binary "#{appdir}/IINA.app/Contents/MacOS/iina-cli", target: 'iina'

  zap trash: [
               '~/Library/Application Support/com.colliderli.iina',
               '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.colliderli.iina.sfl*',
               '~/Library/Caches/com.colliderli.iina',
               '~/Library/Cookies/com.colliderli.iina.binarycookies',
               '~/Library/Logs/DiagnosticReports/IINA*.crash',
               '~/Library/Preferences/com.colliderli.iina.plist',
               '~/Library/Safari/Extensions/Open in IINA*.safariextz',
               '~/Library/Saved Application State/com.colliderli.iina.savedState',
             ]
end

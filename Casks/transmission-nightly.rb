cask 'transmission-nightly' do
  version :latest
  sha256 :no_check

  url do
    require 'open-uri'
    base_url = 'https://build.transmissionbt.com/job/trunk-mac/lastSuccessfulBuild/artifact/release/'
    file = open(base_url).read.scan(%r{href="([^"]+.dmg)"}).flatten.first
    "#{base_url}#{file}"
  end
  name 'Transmission'
  homepage 'https://transmissionbt.com/'

  app 'Transmission.app'

  zap delete: [
                '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.m0k.transmission.sfl*',
                '~/Library/Caches/com.apple.helpd/SDMHelpData/Other/English/HelpSDMIndexFile/org.m0k.transmission.help',
                '~/Library/Caches/com.apple.helpd/SDMHelpData/Other/English/HelpSDMIndexFile/Transmission Help*',
                '~/Library/Caches/org.m0k.transmission',
                '~/Library/Cookies/org.m0k.transmission.binarycookies',
                '~/Library/Preferences/org.m0k.transmission.LSSharedFileList.plist',
                '~/Library/Saved Application State/org.m0k.transmission.savedState',
              ],
      trash:  [
                '~/Library/Application Support/Transmission',
                '~/Library/Preferences/org.m0k.transmission.plist',
              ]
end

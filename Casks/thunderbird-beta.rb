cask 'thunderbird-beta' do
  version '60.0b4'

  language 'cs' do
    sha256 '2c77d08a8b48ce87a06e7421485f62b56acb9fedb375b2ae58e91b8864efb313'
    'cs'
  end

  language 'en', default: true do
    sha256 '5183774410be1926a94810d2a1a2ad4399f47f86219bada45eb0366b7d1dc25b'
    'en-US'
  end

  language 'ru' do
    sha256 '494e40708f7e3bafe911ff46e908d786d2d390194287c08ef302b9ebf8a36726'
    'ru'
  end

  language 'uk' do
    sha256 'd441e602c8c6c5e6c79122db52406dcb5bb0df28fbede6e16257e8d858d9643a'
    'uk'
  end

  url "https://ftp.mozilla.org/pub/thunderbird/releases/#{version}/mac/#{language}/Thunderbird%20#{version}.dmg"
  name 'Mozilla Thunderbird'
  homepage 'https://www.mozilla.org/en-US/thunderbird/beta/all/'

  conflicts_with cask: [
                         'thunderbird',
                         'thunderbird-daily',
                       ]

  app 'Thunderbird.app'

  zap trash: [
               '~/Library/Thunderbird',
               '~/Library/Caches/Thunderbird',
               '~/Library/Saved Application State/org.mozilla.thunderbird.savedState',
               '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.mozilla.thunderbird.sfl*',
             ]
end

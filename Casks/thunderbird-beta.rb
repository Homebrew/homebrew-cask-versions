cask 'thunderbird-beta' do
  version '58.0b2'

  language 'cs' do
    sha256 'e4208ce8ea84efe9d7100182b18f95a95ebced21302fccca968960163afe443a'
    'cs'
  end

  language 'en', default: true do
    sha256 'abcdfb038f5be15ae6ab277a437d30dc89ae4bf768179e37d81c94183f192d07'
    'en-US'
  end

  language 'ru' do
    sha256 '19e33911ec408ebc8798c47dd36ce77062915a09fc5c1596b4d13a60fba8ef9e'
    'ru'
  end

  language 'uk' do
    sha256 'c1a6699c80cd2cfeeee184b2a557175b48b2b22bb598328c77ad094a36547011'
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

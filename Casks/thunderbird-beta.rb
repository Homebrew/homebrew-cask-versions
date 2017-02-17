cask 'thunderbird-beta' do
  version '52.0b3'

  language 'en', default: true do
    sha256 '7ee39ab3e4f4091d7e493903cb5eaa41565dcb5be20130a0f5670bcb36eeaf4e'
    'en-US'
  end

  language 'ru' do
    sha256 'a9916ec9ad1da079795b1234b6779f1239fa5bf94468a54a6a4920c66b730958'
    'ru'
  end

  language 'uk' do
    sha256 '1b45b850e2c8b69606c96727d13139767cb5b68392bdc1914c6b862cd9949faa'
    'uk'
  end

  url "https://ftp.mozilla.org/pub/thunderbird/releases/#{version}/mac/#{language}/Thunderbird%20#{version}.dmg"
  name 'Mozilla Thunderbird'
  homepage 'https://www.mozilla.org/en-US/thunderbird/beta/all/'

  app 'Thunderbird.app'
end

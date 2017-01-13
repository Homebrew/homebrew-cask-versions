cask 'thunderbird-beta' do
  version '51.0b1'

  language 'en', default: true do
    sha256 '0cf4bf0356e13adfb8becfa3de9534e3e31fd3364c62a6d114fc83f1b1922ccd'
    'en-US'
  end

  language 'ru' do
    sha256 'f5f6158e1fe42bb48704e59ee443d0e5c98d95ad3c8672768c1e94fce0143961'
    'ru'
  end

  language 'uk' do
    sha256 '3df92e290bbf3a645d6a21329e7c2df8f402badc971f0b31221e9b7da5dc21a0'
    'uk'
  end

  url "https://ftp.mozilla.org/pub/thunderbird/releases/#{version}/mac/#{language}/Thunderbird%20#{version}.dmg"
  name 'Mozilla Thunderbird'
  homepage 'https://www.mozilla.org/en-US/thunderbird/beta/all/'

  app 'Thunderbird.app'
end

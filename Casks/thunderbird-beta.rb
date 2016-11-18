cask 'thunderbird-beta' do
  version '50.0b2'

  language 'en', default: true do
    sha256 'f924a127173df26ae8eb36c12c924bec5e5ef679325c7ec5390ab7a177208aa2'
    'en-US'
  end

  language 'ru' do
    sha256 'c8e1e1d11d7a087d7b0e17e06b92a9680a5510a1710740a3dc5611558b56ccc1'
    'ru'
  end

  language 'uk' do
    sha256 'e2dccf8b8631fe5d468f1bab2f8976de95bc23f1218b9e8fc4680ba7088c3891'
    'uk'
  end

  url "https://ftp.mozilla.org/pub/thunderbird/releases/#{version}/mac/#{language}/Thunderbird%20#{version}.dmg"
  name 'Mozilla Thunderbird'
  homepage 'https://www.mozilla.org/en-US/thunderbird/beta/all/'

  app 'Thunderbird.app'
end

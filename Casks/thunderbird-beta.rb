cask 'thunderbird-beta' do
  version '52.0b4'

  language 'en', default: true do
    sha256 '22ad888bd5ada8cd3738a3ce9d7e94385496e1a753451643af4c7c586a7524b7'
    'en-US'
  end

  language 'ru' do
    sha256 '09558d0358958301c2c9124b424ad7fd79ce8dd680ed6e75bc5f87a238dc1db5'
    'ru'
  end

  language 'uk' do
    sha256 '141ef8805c9c0c5558aec11eea9a87eac13df2e9d559d58ad3d259a8af3d1fcc'
    'uk'
  end

  url "https://ftp.mozilla.org/pub/thunderbird/releases/#{version}/mac/#{language}/Thunderbird%20#{version}.dmg"
  name 'Mozilla Thunderbird'
  homepage 'https://www.mozilla.org/en-US/thunderbird/beta/all/'

  app 'Thunderbird.app'
end

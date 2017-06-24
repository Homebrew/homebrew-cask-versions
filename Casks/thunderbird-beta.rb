cask 'thunderbird-beta' do
  version '53.0b2'

  language 'cs' do
    sha256 '0f6266af5f436ecfa52493e227cc2dd2bfa2cf10093d52f7e28a5c5efa3a7e0b'
    'cs'
  end

  language 'en', default: true do
    sha256 'd55bfa4c6422dd820ee14a826d2705cfb7a90e37503d10bbd195c296e87e7a08'
    'en-US'
  end

  language 'ru' do
    sha256 '0e4398ef8dbc68bdf593b243008ad13055b3effb8dd5feba480cb2b0984ce446'
    'ru'
  end

  language 'uk' do
    sha256 'd6b0929753ad90a8af9a86e7d1f1c508d9c15b7bc3417cd41c1a198d0dc7605d'
    'uk'
  end

  url "https://ftp.mozilla.org/pub/thunderbird/releases/#{version}/mac/#{language}/Thunderbird%20#{version}.dmg"
  name 'Mozilla Thunderbird'
  homepage 'https://www.mozilla.org/en-US/thunderbird/beta/all/'

  app 'Thunderbird.app'
end

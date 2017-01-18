cask 'thunderbird-beta' do
  version '51.0b2'

  language 'en', default: true do
    sha256 '3f8ffaa52e6e71006c829cf4a5cb24465c3f020670edd5771036165f6d35147d'
    'en-US'
  end

  language 'ru' do
    sha256 'a3b0c14f20697b46765652ffce0ba842151dc87cd32c95e5a79a164d9fd1359f'
    'ru'
  end

  language 'uk' do
    sha256 '76b2276ec26c9f7965531d7925346b11509e812b5be2dd0a77ad16b9b70b4682'
    'uk'
  end

  url "https://ftp.mozilla.org/pub/thunderbird/releases/#{version}/mac/#{language}/Thunderbird%20#{version}.dmg"
  name 'Mozilla Thunderbird'
  homepage 'https://www.mozilla.org/en-US/thunderbird/beta/all/'

  app 'Thunderbird.app'
end

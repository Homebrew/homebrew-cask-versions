cask 'thunderbird-beta' do
  version '49.0b1'

  language 'en', default: true do
    sha256 '7edbe8645f4c14fc9fa40646353db96009b5bfa726179bd655568ff7e172874f'
    'en-US'
  end

  language 'ru' do
    sha256 '7fb61dd169418bc832758fb2b5f4c5a0fd033fbd17fb53e8f7e2a0f5301ba557'
    'ru'
  end

  language 'uk' do
    sha256 'e25269f3776be5d46b4b60ff7c683f2694b8285392f1c686d4592015373491df'
    'uk'
  end

  url "https://ftp.mozilla.org/pub/thunderbird/releases/#{version}/mac/#{language}/Thunderbird%20#{version}.dmg"
  name 'Mozilla Thunderbird'
  homepage 'https://www.mozilla.org/en-US/thunderbird/all-beta.html'

  app 'Thunderbird.app'
end

cask 'thunderbird-beta' do
  version '50.0b3'

  language 'en', default: true do
    sha256 '66009a8090ac4610ec868792f64d5858ff0189721ad646b6eae920494862227d'
    'en-US'
  end

  language 'ru' do
    sha256 '382630b123fb43905178138f1ca270f7f06e1cf9bf84991c039005794fdb4e83'
    'ru'
  end

  language 'uk' do
    sha256 '5896a79978c55711b3ca694932c3861079b47d9dec5d96a9e1293af631bd33e2'
    'uk'
  end

  url "https://ftp.mozilla.org/pub/thunderbird/releases/#{version}/mac/#{language}/Thunderbird%20#{version}.dmg"
  name 'Mozilla Thunderbird'
  homepage 'https://www.mozilla.org/en-US/thunderbird/beta/all/'

  app 'Thunderbird.app'
end

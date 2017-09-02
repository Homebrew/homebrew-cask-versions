cask 'thunderbird-beta' do
  version '56.0b3'

  language 'cs' do
    sha256 'c6158f144573f20cf3b389ad37ac317dfc54c52512996664047a00a62653a50f'
    'cs'
  end

  language 'en', default: true do
    sha256 '48c353b966c3dc534250e78f80a7e5680870d065f633de4ecf4b7669f5289da1'
    'en-US'
  end

  language 'ru' do
    sha256 'd75dcd7d1b8ef3b9d0a5af70313af784a41e146c33e5036e084d3611cd52edbb'
    'ru'
  end

  language 'uk' do
    sha256 '7ca26f68c83fc3b49366d6206ed1f881176b1d04aade6d59a407999a1e669c75'
    'uk'
  end

  url "https://ftp.mozilla.org/pub/thunderbird/releases/#{version}/mac/#{language}/Thunderbird%20#{version}.dmg"
  name 'Mozilla Thunderbird'
  homepage 'https://www.mozilla.org/en-US/thunderbird/beta/all/'

  app 'Thunderbird.app'
end

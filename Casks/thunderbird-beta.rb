cask 'thunderbird-beta' do
  version '52.0b1'

  language 'en', default: true do
    sha256 'e4418679343661b92d6bc605b92fca16ae22e533f483325516b4799e4c94c7ed'
    'en-US'
  end

  language 'ru' do
    sha256 '52d897483d0c71fca63b00d94457d5c5ee8f5b695628ebe084b668d4bcc0ba1a'
    'ru'
  end

  language 'uk' do
    sha256 'c764ee8158beef24e2c811283701e30c6eef590da9905c98ef072a9940fbd71a'
    'uk'
  end

  url "https://ftp.mozilla.org/pub/thunderbird/releases/#{version}/mac/#{language}/Thunderbird%20#{version}.dmg"
  name 'Mozilla Thunderbird'
  homepage 'https://www.mozilla.org/en-US/thunderbird/beta/all/'

  app 'Thunderbird.app'
end

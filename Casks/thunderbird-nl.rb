cask 'thunderbird-nl' do
  version '45.3.0'
  sha256 '17dfec5caec0216dd5d2caefc2284c354514434ebae2117d2a9639d369a0668a'

  url "https://download.mozilla.org/?product=thunderbird-#{version}&os=osx&lang=nl"
  name 'Mozilla Mozilla Thunderbird'
  homepage 'https://www.mozilla.org/nl/thunderbird/'
  license :mpl

  app 'Thunderbird.app'
end

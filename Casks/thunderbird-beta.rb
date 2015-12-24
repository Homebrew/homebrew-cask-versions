cask 'thunderbird-beta' do
  version '42.0b2'
  sha256 '98081c29a30ffbe77de900de1149fba018bffb1134f7e70bfb96367cfbeec276'

  url "https://download.mozilla.org/?product=thunderbird-#{version}&os=osx&lang=en-US"
  name 'Mozilla Thunderbird'
  homepage 'https://www.mozilla.org/en-US/thunderbird/all-beta.html'
  license :mpl

  app 'Thunderbird.app'
end

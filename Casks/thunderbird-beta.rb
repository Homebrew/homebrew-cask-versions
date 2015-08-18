cask :v1 => 'thunderbird-beta' do
  version '40.0b1'
  sha256 'e90832ab7fa2e3bca4ff8e09480faaf96e660e42252f8d1c2fbf275b88613df6'

  url "https://download.mozilla.org/?product=thunderbird-#{version}&os=osx&lang=en-US"
  name 'Mozilla Thunderbird'
  homepage 'https://www.mozilla.org/en-US/thunderbird/all-beta.html'
  license :mpl
  tags :vendor => 'Mozilla'

  app 'Thunderbird.app'
end

cask 'thunderbird-beta' do
  version '45.0b4'
  sha256 'e38876b00693d7860635ff9c6b126d10b379a58a8bf2597389d7fc797e40b718'

  url "https://download.mozilla.org/?product=thunderbird-#{version}&os=osx&lang=en-US"
  name 'Mozilla Thunderbird'
  homepage 'https://www.mozilla.org/en-US/thunderbird/all-beta.html'
  license :mpl

  app 'Thunderbird.app'
end

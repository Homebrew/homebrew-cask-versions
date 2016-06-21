cask 'thunderbird-beta' do
  version '47.0b2'
  sha256 '220a010a948caaebc5a1c8a6d35d66a550dd3c6130bde0a502fc3e4d215e4845'

  url "https://download.mozilla.org/?product=thunderbird-#{version}&os=osx&lang=en-US"
  name 'Mozilla Thunderbird'
  homepage 'https://www.mozilla.org/en-US/thunderbird/all-beta.html'
  license :mpl

  app 'Thunderbird.app'
end

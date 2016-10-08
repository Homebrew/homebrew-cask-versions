cask 'thunderbird-ja' do
  version '45.4.0'
  sha256 'b5b73d0aa26dea74c7473875e8e112fe5ac4bb57a6d5042376475470154ae076'

  # mozilla.org was verified as official when first introduced to the cask
  url "https://download.mozilla.org/?product=thunderbird-#{version}&os=osx&lang=ja-JP-mac"
  name 'Mozilla Thunderbird'
  homepage 'https://www.mozilla.jp/thunderbird/'

  app 'Thunderbird.app'
end

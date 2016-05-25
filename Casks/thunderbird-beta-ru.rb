cask 'thunderbird-beta-ru' do
  version '45.2b1'
  sha256 '50bbc2843de76a17566b3af1aec3af0349891b31dd3fa542eb206644acfc5cba'

  url "https://download.mozilla.org/?product=thunderbird-#{version}&os=osx&lang=ru"
  name 'Mozilla Thunderbird'
  homepage 'https://www.mozilla.org/en-US/thunderbird/all-beta.html'
  license :mpl

  app 'Thunderbird.app'
end

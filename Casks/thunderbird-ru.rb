cask 'thunderbird-ru' do
  version '38.5.1'
  sha256 '1cd6544c9a475f0ad5c4949e67568d2801cdba7b58478001c6d8e96b27d60cec'

  url "https://download.mozilla.org/?product=thunderbird-#{version}&os=osx&lang=ru"
  name 'Mozilla Thunderbird'
  homepage 'https://www.mozilla.org/ru/thunderbird/'
  license :mpl

  app 'Thunderbird.app'
end

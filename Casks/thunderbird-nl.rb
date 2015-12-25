cask 'thunderbird-nl' do
  version '38.5.0'
  sha256 '2512ae26df8c0ad87fc9961ec1a29bf8935b1d25460784bc6c8f99a96fe88c43'

  url "https://download.mozilla.org/?product=thunderbird-#{version}&os=osx&lang=nl"
  name 'Mozilla Mozilla Thunderbird'
  homepage 'http://www.mozilla.org/nl/thunderbird/'
  license :mpl

  app 'Thunderbird.app'
end

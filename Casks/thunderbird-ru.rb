cask :v1 => 'thunderbird-ru' do
  version '38.0.1'
  sha256 '846209f52343ad50c5f8b33dfaa1e22dddbc4ab73039fbf53e69303ff82648f2'

  url "https://download.mozilla.org/?product=thunderbird-#{version}&os=osx&lang=ru"
  name 'Mozilla Thunderbird'
  homepage 'http://www.mozilla.org/ru/thunderbird/'
  license :mpl
  tags :vendor => 'Mozilla'

  app 'Thunderbird.app'
end

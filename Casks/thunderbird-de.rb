cask :v1 => 'thunderbird-de' do
  version '31.5.0'
  sha256 'e797f9e2d4d18674cb6b0cc931491dc4f986e1988d0b1ecd60055e133b5ccc94'

  url "https://download.mozilla.org/?product=thunderbird-#{version}&os=osx&lang=de"
  name 'Mozilla Thunderbird'
  homepage 'http://www.mozilla.org/de/thunderbird/'
  license :mpl
  tags :vendor => 'Mozilla'

  app 'Thunderbird.app'
end

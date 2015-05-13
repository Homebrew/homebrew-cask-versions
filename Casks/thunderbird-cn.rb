cask :v1 => 'thunderbird-cn' do
  version '31.6.0'
  sha256 'fbc95c8a169d5a8bf7b998b8017608a8e42a9232ddce7ae2c443c09112c783a9'

  url "https://download.mozilla.org/?product=thunderbird-#{version}&os=osx&lang=zh-CN"
  homepage 'https://www.mozilla.org/zh-CN/thunderbird/'
  license :mpl
  tags :vendor => 'Mozilla'

  app 'Thunderbird.app'
end

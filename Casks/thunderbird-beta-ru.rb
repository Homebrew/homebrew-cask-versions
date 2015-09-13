cask :v1 => 'thunderbird-beta-ru' do
  version '41.0b1'
  sha256 '376620c0e4549ec90ae0038575662f700a74500a754cf9a72c99ed7050d75849'

  url "https://download.mozilla.org/?product=thunderbird-#{version}&os=osx&lang=ru"
  name 'Mozilla Thunderbird'
  homepage 'https://www.mozilla.org/en-US/thunderbird/all-beta.html'
  license :mpl
  tags :vendor => 'Mozilla'

  app 'Thunderbird.app'
end

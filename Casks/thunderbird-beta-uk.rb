cask 'thunderbird-beta-uk' do
  version '45.0b2'
  sha256 'ac61007d025c2d0f9338c8e22c1636778a231594d112ae666bf499d3506a2e9d'

  url "https://download.mozilla.org/?product=thunderbird-#{version}&os=osx&lang=uk"
  name 'Mozilla Thunderbird'
  homepage 'https://www.mozilla.org/en-US/thunderbird/all-beta.html'
  license :mpl

  app 'Thunderbird.app'
end

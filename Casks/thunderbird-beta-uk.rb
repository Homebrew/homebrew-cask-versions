cask :v1 => 'thunderbird-beta-uk' do
  version '40.0b1'
  sha256 '67091364bab88006dd3bdc8473f1cf2c64df61d71f7860edd61f8cce4ba0cef1'

  url "https://download.mozilla.org/?product=thunderbird-#{version}&os=osx&lang=uk"
  name 'Mozilla Thunderbird'
  homepage 'https://www.mozilla.org/en-US/thunderbird/all-beta.html'
  license :mpl
  tags :vendor => 'Mozilla'

  app 'Thunderbird.app'
end

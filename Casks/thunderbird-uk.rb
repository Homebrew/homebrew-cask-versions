cask :v1 => 'thunderbird-uk' do
  version '31.7.0'
  sha256 '3849a1dfabc3809c018b4125cbc07becdbaab414ef2cf55c7f829ae79c977af5'

  url "https://download.mozilla.org/?product=thunderbird-#{version}&os=osx&lang=uk"
  name 'Mozilla Thunderbird'
  homepage 'http://www.mozilla.org/uk/thunderbird/'
  license :mpl
  tags :vendor => 'Mozilla'

  app 'Thunderbird.app'
end

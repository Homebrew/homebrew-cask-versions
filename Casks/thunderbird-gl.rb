cask 'thunderbird-gl' do
  version '38.5.0'
  sha256 '6c0aecce31ea1a2ff20c8e2a6a975e09ca45106c56286a7d7ca3e3a645e64c66'

  url "https://download.mozilla.org/?product=thunderbird-#{version}&os=osx&lang=gl"
  name 'Mozilla Thunderbird'
  homepage 'https://www.mozilla.org/gl/thunderbird/'
  license :mpl

  app 'Thunderbird.app'
end

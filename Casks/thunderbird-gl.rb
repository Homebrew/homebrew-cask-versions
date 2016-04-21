cask 'thunderbird-gl' do
  version '45.0'
  sha256 '70679ecba2557b51af471b3d5fb1f407f459424106ea75644a4dea2de3225645'

  url "https://download.mozilla.org/?product=thunderbird-#{version}&os=osx&lang=gl"
  name 'Mozilla Thunderbird'
  homepage 'https://www.mozilla.org/gl/thunderbird/'
  license :mpl

  app 'Thunderbird.app'
end

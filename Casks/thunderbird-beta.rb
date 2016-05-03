cask 'thunderbird-beta' do
  version '45.1b1'
  sha256 '5a345899cd55433a0d22ba060afbd40f936922f967fe3db491344053394519da'

  url "https://download.mozilla.org/?product=thunderbird-#{version}&os=osx&lang=en-US"
  name 'Mozilla Thunderbird'
  homepage 'https://www.mozilla.org/en-US/thunderbird/all-beta.html'
  license :mpl

  app 'Thunderbird.app'
end

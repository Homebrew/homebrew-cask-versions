cask 'thunderbird-pt-br' do
  version '38.5.0'
  sha256 'c6d4ac633d66e3e30f5efcb51bd9898d78f203704898b0a2a1c474316215a638'

  url "https://download.mozilla.org/?product=thunderbird-#{version}&os=osx&lang=pt-BR"
  name 'Mozilla Thunderbird'
  homepage 'https://www.mozilla.org/pt/thunderbird/'
  license :mpl

  app 'Thunderbird.app'
end

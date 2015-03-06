cask :v1 => 'firefox-beta-de' do
  version '37.0b2'
  sha256 '140dd45ca602d25be58e97921e43bfd35cc2baba46adfab63fcb966135e26232'

  url "https://download.mozilla.org/?product=firefox-#{version}-SSL&os=osx&lang=de"
  homepage 'https://www.mozilla.org/de/firefox/beta/'
  license :mpl

  app 'Firefox.app'
end

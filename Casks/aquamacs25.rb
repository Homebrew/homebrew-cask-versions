cask 'aquamacs25' do
  version '2.5'
  sha256 '5857848d8d46bba43d160c02393b098a370e2156608be24b288419f668210be9'

  url "http://braeburn.aquamacs.org/releases/Aquamacs-Emacs-#{version}.dmg"
  name 'Aquamacs'
  homepage 'http://aquamacs.org/'
  license :gpl

  app 'Aquamacs.app'
  
  zap :delete => '~/Library/Caches/Aquamacs Emacs'
end

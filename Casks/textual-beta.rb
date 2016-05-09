cask 'textual-beta' do
  version :latest
  sha256 :no_check

  url 'https://www.codeux.com/textual/downloads/Textual-Beta.zip'
  name 'Textual'
  homepage 'https://help.codeux.com/textual/Release-Notes:-Version-6.0.0.kb'
  license :commercial

  app 'Textual.app'
end

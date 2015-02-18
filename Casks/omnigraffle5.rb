cask :v1 => 'omnigraffle5' do
  version '5.4.4'
  sha256 '7bcc64093f46bd4808b1a4cb86cf90c0380a5c5ffffd55ce8f742712818558df'

  url "http://www.omnigroup.com/ftp/pub/software/MacOSX/10.6/OmniGraffle-#{version}.dmg"
  homepage 'http://www.omnigroup.com/products/omnigraffle'
  license :closed

  app 'OmniGraffle 5.app'
end

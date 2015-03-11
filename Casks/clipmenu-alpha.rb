cask :v1 => 'clipmenu-alpha' do
  version '1.0.0a1'
  sha256 'ce92a6efa7397d39e0d73bdd5394438ceb1f66543c2e4695969d7acfaad1434e'

  # dropbox.com is the official download host per the vendor homepage
  url "https://dl.dropbox.com/u/1140644/clipmenu/ClipMenu-#{version}.dmg"
  name 'ClipMenu'
  homepage 'http://www.clipmenu.com/'
  license :mit

  app 'ClipMenu.app'

  depends_on :macos => '>= :mavericks'
end

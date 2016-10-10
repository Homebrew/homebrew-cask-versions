cask 'clipmenu-alpha' do
  version '1.0.0a1'
  sha256 'ce92a6efa7397d39e0d73bdd5394438ceb1f66543c2e4695969d7acfaad1434e'

  # dropbox.com/u/1140644 was verified as official when first introduced to the cask
  url "https://dl.dropbox.com/u/1140644/clipmenu/ClipMenu-#{version}.dmg"
  name 'ClipMenu'
  homepage 'http://www.clipmenu.com/'

  depends_on macos: '>= :mavericks'

  app 'ClipMenu.app'
end

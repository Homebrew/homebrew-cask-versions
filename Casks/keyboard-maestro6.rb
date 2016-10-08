cask 'keyboard-maestro6' do
  version '6.4.8'
  sha256 '74276c1bbb2f3b6f188e3883519c6f94cca333b40dd5a38ef79af37c3d6c5c06'

  # stairways.com was verified as official when first introduced to the cask
  url "https://files.stairways.com/keyboardmaestro-#{version.no_dots}.zip"
  name 'Keyboard Maestro'
  homepage 'https://www.keyboardmaestro.com/'

  depends_on macos: '>= :mountain_lion'

  app 'Keyboard Maestro.app'
end

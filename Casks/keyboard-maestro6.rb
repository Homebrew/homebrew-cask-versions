cask 'keyboard-maestro6' do
  version '6.4.8'
  sha256 'd83dda790e7043cb5b012bc608ebe687a01f5979cc7f447462b009e17ac92a74'

  # stairways.com was verified as official when first introduced to the cask
  url "https://files.stairways.com/keyboardmaestro-#{version.no_dots}.zip"
  name 'Keyboard Maestro'
  homepage 'https://www.keyboardmaestro.com/'

  depends_on macos: '>= :mountain_lion'

  app 'Keyboard Maestro.app'
end

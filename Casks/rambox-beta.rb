cask 'rambox-beta' do
  version '0.6.2'
  sha256 '3192de3a040ea1bfa0b7c9623f2faf0b01c5d8242bf9e7e7850f6b46a491dcf3'

  # github.com/ramboxapp/community-edition was verified as official when first introduced to the cask
  url "https://github.com/ramboxapp/community-edition/releases/download/#{version}/Rambox-#{version}-mac.dmg"
  appcast 'https://github.com/ramboxapp/community-edition/releases.atom'
  name 'Rambox'
  homepage 'https://rambox.pro/'

  conflicts_with cask: 'rambox'

  app 'Rambox.app'

  uninstall login_item: 'Rambox'
end

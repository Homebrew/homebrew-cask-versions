cask 'openbazaar-beta' do
  version '2.1.0-rc1'
  sha256 '57d79aedbfce514ddd5f181bd3445d5c6229bd3ebd96d9306f902de9a5aa8630'

  # github.com/OpenBazaar/openbazaar-desktop was verified as official when first introduced to the cask
  url "https://github.com/OpenBazaar/openbazaar-desktop/releases/download/v#{version}/OpenBazaar#{version.major}-#{version.major_minor_patch}.dmg"
  appcast 'https://github.com/OpenBazaar/openbazaar-desktop/releases.atom',
          checkpoint: 'f03b7af797ea8a25a87c6deeed7aa1a500c1c8cc3eff29f95026c7b858d1caf9'
  name 'OpenBazaar Beta'
  homepage 'https://www.openbazaar.org/'

  app "OpenBazaar#{version.major}.app"
end

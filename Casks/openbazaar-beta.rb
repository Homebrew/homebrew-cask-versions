cask 'openbazaar-beta' do
  version '2.1.0-rc4'
  sha256 'a52f4492ee3167c741dc7e62e15c39794b54f8d1adea903edc22eaf8e8de758e'

  # github.com/OpenBazaar/openbazaar-desktop was verified as official when first introduced to the cask
  url "https://github.com/OpenBazaar/openbazaar-desktop/releases/download/v#{version}/OpenBazaar#{version.major}-#{version.major_minor_patch}.dmg"
  appcast 'https://github.com/OpenBazaar/openbazaar-desktop/releases.atom',
          checkpoint: 'fa513ea51dd4ac79b5e7a2133a74926dccd2ac8f401a76ab2340060a828915ff'
  name 'OpenBazaar Beta'
  homepage 'https://www.openbazaar.org/'

  app "OpenBazaar#{version.major}.app"
end

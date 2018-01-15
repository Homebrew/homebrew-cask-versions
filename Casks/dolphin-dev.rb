cask 'dolphin-dev' do
  version '5.0-6197'
  sha256 '29d17a4755945ac51c0d7698d4edebe79c08f37dfeb80edaceb9a07396f8e89e'

  url "https://dl.dolphin-emu.org/builds/dolphin-master-#{version}.dmg"
  appcast 'https://github.com/dolphin-emu/dolphin/releases.atom',
          checkpoint: 'bd796a158ad316236eec0063dfee85e4d063e9cb7697f99ce0872f62d56074c2'
  name 'dolphin-dev'
  homepage 'https://dolphin-emu.org/'

  conflicts_with cask: 'dolphin'

  app 'Dolphin.app'
end

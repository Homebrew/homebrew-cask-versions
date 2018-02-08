cask 'dolphin-dev' do
  version '5.0-6203'
  sha256 '7621be713bdc105dabd12eccbe6817f8da045cc84248d20ddb3bb286b4810839'

  url "https://dl.dolphin-emu.org/builds/dolphin-master-#{version}.dmg"
  appcast 'https://github.com/dolphin-emu/dolphin/releases.atom',
          checkpoint: 'bd796a158ad316236eec0063dfee85e4d063e9cb7697f99ce0872f62d56074c2'
  name 'dolphin-dev'
  homepage 'https://dolphin-emu.org/'

  conflicts_with cask: 'dolphin'

  app 'Dolphin.app'
end

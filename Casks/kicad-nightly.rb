cask 'kicad-nightly' do
  version '20170407-035928.70c961f'
  sha256 'fdf85baee984d477e1d0cc24817012ab4355c2b591b16a861977aeafe087b378'

  url "http://downloads.kicad-pcb.org/osx/nightly/kicad-#{version}-c4osx.dmg"
  name 'KiCad'
  homepage 'http://kicad-pcb.org/'

  suite 'Kicad-apps', target: 'Kicad'
  artifact 'kicad', target: '/Library/Application Support/kicad'

  preflight do
    FileUtils.cd staged_path do
      FileUtils.mkdir 'Kicad-apps'
      FileUtils.mv Dir.glob('Kicad/*.app'), 'Kicad-apps'
    end
  end

  zap delete: '~/Library/Preferences/kicad'
end

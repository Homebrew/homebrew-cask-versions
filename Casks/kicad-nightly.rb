cask 'kicad-nightly' do
  version '20170815-032730.0e41632'
  sha256 '25113b5687670e145e419489cdb6317854b314c0c22dc7d6db1e3a5f4fe6e1a2'

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

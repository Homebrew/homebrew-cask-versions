cask 'kicad-nightly' do
  version '20170618-032444.fa66a5a'
  sha256 '9d207656e1028edb000a90cdb005d1ab89c616a63d290259aae3bd4f05dd29d6'

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

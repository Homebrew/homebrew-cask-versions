cask 'kicad-nightly' do
  version :latest
  sha256 :no_check

  url do
    require 'open-uri'
    base_url = 'http://downloads.kicad-pcb.org/osx/nightly/'
    file = open(base_url).read.scan(%r{href="([^"]+.dmg)"}).flatten.last
    "#{base_url}#{file}"
  end
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

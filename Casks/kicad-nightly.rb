cask 'kicad-nightly' do
  version '20161025-032734.4ee344e'
  sha256 'ac50493fd179640c36853a7610b6171f0e3d8605e7e1e7621500ec51947aaf78'

  url "http://downloads.kicad-pcb.org/osx/nightly/kicad-#{version}-c4osx.dmg"
  name 'KiCad'
  homepage 'http://kicad-pcb.org/'

  suite 'Kicad-apps', target: 'Kicad'
  artifact 'kicad', target: "#{ENV['HOME']}/Library/Application Support/kicad"

  preflight do
    system_command '/bin/mkdir', args: ['--', "#{staged_path}/Kicad-apps"]
    system_command '/bin/mv', args: ['--', *Dir["#{staged_path}/Kicad/*.app"], "#{staged_path}/Kicad-apps/"]
  end
end

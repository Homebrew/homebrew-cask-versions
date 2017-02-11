cask 'kicad-nightly' do
  version '20170207-032746.6561c8e'
  sha256 '3a5aa3d5170450f1a24c552383ef65042f125b9b4f62f8ad30c33887e111b5c1'

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

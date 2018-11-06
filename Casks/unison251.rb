cask 'unison251' do
  version '2.51.2'
  sha256 '0738a6978fa29bb2af409322069cc20df293b770877942ac4b8774f06e774aa5'

  # github.com/bcpierce00/unison was verified as official when first introduced to the cask
  url "https://github.com/bcpierce00/unison/releases/download/v#{version}/Unison-#{version}.OS.X.zip"
  appcast 'https://github.com/bcpierce00/unison/releases.atom'
  name 'Unison'
  homepage 'https://www.cis.upenn.edu/~bcpierce/unison/'

  conflicts_with formula: 'unison',
                 cask:    [
                            'unison',
                            'unison240',
                            'unison251',
                          ]
  depends_on macos: '>= :el_capitan'

  app 'Unison.app'
  binary "#{appdir}/Unison.app/Contents/MacOS/cltool", target: 'unison'

  postflight do
    system_command '/usr/bin/defaults', args: ['write', 'edu.upenn.cis.Unison', 'CheckCltool', '-bool', 'false']
  end
end

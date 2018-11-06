cask 'unison240' do
  version '2.40.69'
  sha256 '2bcc460511f2b43fa1613cc5f9ba4dd59bb12d40b5b9fb2e9f21adaf854bcf3b'

  # unison-binaries.inria.fr was verified as official when first introduced to the cask
  url "https://unison-binaries.inria.fr/files/Unison-#{version}_x64.dmg"
  appcast 'https://github.com/bcpierce00/unison/releases.atom'
  name 'Unison'
  homepage 'https://www.cis.upenn.edu/~bcpierce/unison/'

  conflicts_with formula: 'unison',
                 cask:    [
                            'unison',
                            'unison248',
                            'unison251',
                          ]

  app 'Unison.app'
  binary "#{appdir}/Unison.app/Contents/MacOS/cltool", target: 'unison'

  postflight do
    system_command '/usr/bin/defaults', args: ['write', 'edu.upenn.cis.Unison', 'CheckCltool', '-bool', 'false']
  end
end

cask 'unison248' do
  version '2.48.3'
  sha256 'd578196d8b38f35c1e0410a1c86ff4e115a91f7eb211201db7a940a3a3e0f099'

  # github.com/bcpierce00/unison was verified as official when first introduced to the cask
  url "https://github.com/bcpierce00/unison/releases/download/#{version}/Unison-OS-X-#{version}.zip"
  appcast 'https://github.com/bcpierce00/unison/releases.atom'
  name 'Unison'
  homepage 'https://www.cis.upenn.edu/~bcpierce/unison/'

  conflicts_with formula: 'unison',
                 cask:    [
                            'unison',
                            'unison240',
                            'unison251',
                          ]
  depends_on macos: '>= :mavericks'

  app 'Unison.app'
  binary "#{appdir}/Unison.app/Contents/MacOS/cltool", target: 'unison'

  postflight do
    system_command '/usr/bin/defaults', args: ['write', 'edu.upenn.cis.Unison', 'CheckCltool', '-bool', 'false']
  end
end

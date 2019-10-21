cask 'inkscape-beta' do
  version '1.0beta1'
  sha256 '68831989b3919e3137d5acfb130a844933706748addc8b4cd7f957348c1c60a3'

  url "https://media.inkscape.org/dl/resources/file/Inkscape-#{version}_OEMhoXK.dmg"
  name 'Inkscape'
  homepage 'https://inkscape.org/'

  conflicts_with cask: 'inkscape'

  app 'Inkscape.app'

  zap trash: [
               '~/Library/Application Support/Inkscape',
               '~/Library/Saved Application State/org.inkscape.Inkscape.savedState',
               '~/.cache/inkscape',
             ]
end

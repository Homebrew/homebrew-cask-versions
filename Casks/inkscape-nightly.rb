cask 'inkscape-nightly' do
  version :latest
  sha256 :no_check

  url 'http://alpha.inkscape.org/prereleases/Inkscape-latest.dmg'
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

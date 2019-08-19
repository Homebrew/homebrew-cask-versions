cask 'inkscape-nightly' do
  version :latest
  sha256 :no_check

  # gitlab.com/inkscape/inkscape was verified as official when first introduced to the cask
  url 'https://gitlab.com/inkscape/inkscape/-/jobs/artifacts/master/download?job=inkscape:mac'
  name 'Inkscape'
  homepage 'https://inkscape.org/'

  conflicts_with cask: 'inkscape'
  container nested: 'artifacts/Inkscape.dmg'

  app 'Inkscape.app'

  zap trash: [
               '~/Library/Application Support/Inkscape',
               '~/Library/Saved Application State/org.inkscape.Inkscape.savedState',
               '~/.cache/inkscape',
             ]
end

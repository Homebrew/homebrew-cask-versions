cask 'toggldesktop-beta' do
  version '7.4.58'
  sha256 'd911ec53fdc4c0ffc678d024eb47cd3a1564c0882afd1884e4be4a434f5a52fe'

  # github.com/toggl/toggldesktop was verified as official when first introduced to the cask
  url "https://github.com/toggl/toggldesktop/releases/download/v#{version}/TogglDesktop-#{version.dots_to_underscores}.dmg"
  appcast 'https://assets.toggl.com/installers/darwin_beta_appcast.xml',
          checkpoint: 'c6b053eba1131199ddf91f4d95993821d15141991e65ed6f6dc5b673873ae425'
  name 'TogglDesktop'
  homepage 'https://www.toggl.com/'

  conflicts_with cask: [
                         'toggldesktop',
                         'toggldesktop-dev',
                       ]

  app 'TogglDesktop.app'
end

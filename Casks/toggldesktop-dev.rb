cask 'toggldesktop-dev' do
  version '7.4.58'
  sha256 'd911ec53fdc4c0ffc678d024eb47cd3a1564c0882afd1884e4be4a434f5a52fe'

  # github.com/toggl/toggldesktop was verified as official when first introduced to the cask
  url "https://github.com/toggl/toggldesktop/releases/download/v#{version}/TogglDesktop-#{version.dots_to_underscores}.dmg"
  appcast 'https://assets.toggl.com/installers/darwin_dev_appcast.xml',
          checkpoint: '3113f66b737c678f225090bb5f6f0814876e6bdbd672fe4c0a839f0b15aeb53e'
  name 'TogglDesktop'
  homepage 'https://www.toggl.com/'

  conflicts_with cask: [
                         'toggldesktop',
                         'toggldesktop-beta',
                       ]

  app 'TogglDesktop.app'
end

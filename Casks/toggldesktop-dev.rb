cask 'toggldesktop-dev' do
  version '7.4.48'
  sha256 '9a6ad3b2d8a843091bb2a185090d0b25cf5ef2991ce01ebaf9dcbdf5278db55a'

  # github.com/toggl/toggldesktop was verified as official when first introduced to the cask
  url "https://github.com/toggl/toggldesktop/releases/download/v#{version}/TogglDesktop-#{version.dots_to_underscores}.dmg"
  appcast 'https://assets.toggl.com/installers/darwin_dev_appcast.xml',
          checkpoint: 'f97d9c99738e14f2ee92b87da235e28ba09cbedc09d837b9788c038f78d4da33'
  name 'TogglDesktop'
  homepage 'https://www.toggl.com/'

  conflicts_with cask: [
                         'toggldesktop',
                         'toggldesktop-beta',
                       ]

  app 'TogglDesktop.app'
end

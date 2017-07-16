cask 'toggldesktop-dev' do
  version '7.4.55'
  sha256 'c620aafb4488dec6afcf943fa7f71b66218fc86e51103ec6e9821a577d30548d'

  # github.com/toggl/toggldesktop was verified as official when first introduced to the cask
  url "https://github.com/toggl/toggldesktop/releases/download/v#{version}/TogglDesktop-#{version.dots_to_underscores}.dmg"
  appcast 'https://assets.toggl.com/installers/darwin_dev_appcast.xml',
          checkpoint: '3a3cf3ec1b6b2ac7bbc4b4c924600622995efac8b4e8180053d9875d6e859d7f'
  name 'TogglDesktop'
  homepage 'https://www.toggl.com/'

  conflicts_with cask: [
                         'toggldesktop',
                         'toggldesktop-beta',
                       ]

  app 'TogglDesktop.app'
end

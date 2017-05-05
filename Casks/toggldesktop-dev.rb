cask 'toggldesktop-dev' do
  version '7.4.38'
  sha256 '58bb90a92bb96efeb22d1cec4bcef42e2c202cfe592f797026a15165aea6ba89'

  # github.com/toggl/toggldesktop was verified as official when first introduced to the cask
  url "https://github.com/toggl/toggldesktop/releases/download/v#{version}/TogglDesktop-#{version.dots_to_underscores}.dmg"
  appcast 'https://assets.toggl.com/installers/darwin_dev_appcast.xml',
          checkpoint: 'c6d7c5fe7b030bf0cd63b3ae985344768ad9ebdc9eff70f44ac496bc156f0cb3'
  name 'TogglDesktop'
  homepage 'https://www.toggl.com/'

  conflicts_with cask: [
                         'toggldesktop',
                         'toggldesktop-beta',
                       ]

  app 'TogglDesktop.app'
end

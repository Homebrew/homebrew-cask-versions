cask 'toggldesktop-beta' do
  version '7.4.38'
  sha256 '58bb90a92bb96efeb22d1cec4bcef42e2c202cfe592f797026a15165aea6ba89'

  # github.com/toggl/toggldesktop was verified as official when first introduced to the cask
  url "https://github.com/toggl/toggldesktop/releases/download/v#{version}/TogglDesktop-#{version.dots_to_underscores}.dmg"
  appcast 'https://assets.toggl.com/installers/darwin_beta_appcast.xml',
          checkpoint: 'a0307899bc768e57bc5e4f644e676497b599c75225504720eabf52f51e79299f'
  name 'TogglDesktop'
  homepage 'https://www.toggl.com/'

  conflicts_with cask: [
                         'toggldesktop',
                         'toggldesktop-dev',
                       ]

  app 'TogglDesktop.app'
end

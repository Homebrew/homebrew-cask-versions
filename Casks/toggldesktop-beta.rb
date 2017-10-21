cask 'toggldesktop-beta' do
  version '7.4.71'
  sha256 'bfab01fe4f09017828d0c69bd3e4f11efc96abb417e1a1a766b92a218452f44a'

  # github.com/toggl/toggldesktop was verified as official when first introduced to the cask
  url "https://github.com/toggl/toggldesktop/releases/download/v#{version}/TogglDesktop-#{version.dots_to_underscores}.dmg"
  appcast 'https://assets.toggl.com/installers/darwin_beta_appcast.xml',
          checkpoint: '98fd3640c1c821617f63d30998fe6929913c033dfe734119820bffbeae7a22d8'
  name 'TogglDesktop'
  homepage 'https://www.toggl.com/'

  conflicts_with cask: [
                         'toggldesktop',
                         'toggldesktop-dev',
                       ]

  app 'TogglDesktop.app'
end

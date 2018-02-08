cask 'toggl-beta' do
  version '7.4.111'
  sha256 'd40f458b784bf9ab625135f93287c3c9e8095d275e63fb9adc3c52deb30a9e34'

  # github.com/toggl/toggldesktop was verified as official when first introduced to the cask
  url "https://github.com/toggl/toggldesktop/releases/download/v#{version}/TogglDesktop-#{version.dots_to_underscores}.dmg"
  appcast 'https://assets.toggl.com/installers/darwin_beta_appcast.xml',
          checkpoint: '49d04d5cd8de4a761c6c5ecbfead65c67b687c91782e822a84bae6d22c8f207a'
  name 'TogglDesktop'
  homepage 'https://www.toggl.com/'

  conflicts_with cask: [
                         'toggl',
                         'toggl-dev',
                       ]

  app 'TogglDesktop.app'
end

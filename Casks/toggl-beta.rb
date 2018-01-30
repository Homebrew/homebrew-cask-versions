cask 'toggl-beta' do
  version '7.4.91'
  sha256 'db15819a99fc8df8eeb797ec3d2f0ef424a69d90a1a088cc62314858e03edb28'

  # github.com/toggl/toggldesktop was verified as official when first introduced to the cask
  url "https://github.com/toggl/toggldesktop/releases/download/v#{version}/TogglDesktop-#{version.dots_to_underscores}.dmg"
  appcast 'https://assets.toggl.com/installers/darwin_beta_appcast.xml',
          checkpoint: 'e8c237f002835fd7d03a39f0d84052d24d3b5186238385e5b6d38d20638b2adc'
  name 'TogglDesktop'
  homepage 'https://www.toggl.com/'

  conflicts_with cask: [
                         'toggl',
                         'toggl-dev',
                       ]

  app 'TogglDesktop.app'
end

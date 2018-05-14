cask 'toggl-beta' do
  version '7.4.155'
  sha256 'db8fe1b569aa294857d75d98e2bf78451230ba8d491ed403be9409427d4a1fda'

  # github.com/toggl/toggldesktop was verified as official when first introduced to the cask
  url "https://github.com/toggl/toggldesktop/releases/download/v#{version}/TogglDesktop-#{version.dots_to_underscores}.dmg"
  appcast 'https://assets.toggl.com/installers/darwin_beta_appcast.xml',
          checkpoint: '598582cb65cec5966006cfe6df67d7b621c57f95fe15675dbb2779bbcc534dff'
  name 'TogglDesktop'
  homepage 'https://www.toggl.com/'

  conflicts_with cask: [
                         'toggl',
                         'toggl-dev',
                       ]

  app 'TogglDesktop.app'
end

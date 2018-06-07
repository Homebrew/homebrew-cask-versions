cask 'toggl-dev' do
  version '7.4.184'
  sha256 '15b9b4429dd72bcc0ea136ee856dc47b6b542643d24bf6663db76d7b661b247b'

  # github.com/toggl/toggldesktop was verified as official when first introduced to the cask
  url "https://github.com/toggl/toggldesktop/releases/download/v#{version}/TogglDesktop-#{version.dots_to_underscores}.dmg"
  appcast 'https://assets.toggl.com/installers/darwin_dev_appcast.xml',
          checkpoint: 'af131add8c864e2e81d18b21e98c7bfeca1937a7e945d60a7834537c9a5d1484'
  name 'TogglDesktop'
  homepage 'https://www.toggl.com/'

  conflicts_with cask: [
                         'toggl',
                         'toggl-beta',
                       ]

  app 'TogglDesktop.app'
end

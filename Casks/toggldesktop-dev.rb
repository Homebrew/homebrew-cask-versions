cask 'toggldesktop-dev' do
  version '7.4.68'
  sha256 '02ca17e1d4655a9076173eab8b04b64d768c8cc9ed5fa9e771ee1eea044b3f92'

  # github.com/toggl/toggldesktop was verified as official when first introduced to the cask
  url "https://github.com/toggl/toggldesktop/releases/download/v#{version}/TogglDesktop-#{version.dots_to_underscores}.dmg"
  appcast 'https://assets.toggl.com/installers/darwin_dev_appcast.xml',
          checkpoint: 'fc588d8baeb658d188663c6ff57b84c2958a5d35bd0ab3f3e465a4af9a36432c'
  name 'TogglDesktop'
  homepage 'https://www.toggl.com/'

  conflicts_with cask: [
                         'toggldesktop',
                         'toggldesktop-beta',
                       ]

  app 'TogglDesktop.app'
end

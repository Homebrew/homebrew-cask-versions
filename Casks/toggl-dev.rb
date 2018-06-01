cask 'toggl-dev' do
  version '7.4.171'
  sha256 '5ecfe954e21fc8e5f6de5699cfbde8fa8aad62165ab647bfa6036e8c467e5261'

  # github.com/toggl/toggldesktop was verified as official when first introduced to the cask
  url "https://github.com/toggl/toggldesktop/releases/download/v#{version}/TogglDesktop-#{version.dots_to_underscores}.dmg"
  appcast 'https://assets.toggl.com/installers/darwin_dev_appcast.xml',
          checkpoint: '24531e270a408ec217d024870c03f7854668956ea3676405b8c03522bbe0ed03'
  name 'TogglDesktop'
  homepage 'https://www.toggl.com/'

  conflicts_with cask: [
                         'toggl',
                         'toggl-beta',
                       ]

  app 'TogglDesktop.app'
end

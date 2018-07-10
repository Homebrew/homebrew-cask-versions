cask 'clementine-latest' do
  version :latest
  sha256 :no_check

  url do
    require 'open-uri'
    base_url = 'https://builds.clementine-player.org/mac/'
    versions = URI(base_url.to_s)
               .open
               .read
               .scan(%r{href="clementine\-((?:\d+\.?)+\-\d+\-\w+)\.dmg"})
               .flatten

    versions.sort_by { |version| Gem::Version.new(version) }

    latest_version = versions.last

    file = "clementine-#{latest_version}.dmg"

    "#{base_url}#{file}"
  end
  name 'Clementine'
  homepage 'https://www.clementine-player.org/'

  conflicts_with cask: [
                         'clementine',
                         'clementine-rc',
                       ]

  app 'Clementine.app'

  preflight do
    set_permissions "#{staged_path}/Clementine.app", '0755'
  end

  zap trash: [
               '~/Library/Application Support/Clementine',
               '~/Library/Caches/org.clementine-player.Clementine',
               '~/Library/Saved Application State/org.clementine-player.Clementine.savedState',
               '~/Library/Preferences/org.clementine-player.Clementine.plist',
             ]
end

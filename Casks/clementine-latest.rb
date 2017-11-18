cask 'clementine-latest' do
  version :latest
  sha256 :no_check

  url do
    require 'open-uri'
    last_modified_query = '?C=M;O=D'
    base_url = 'https://builds.clementine-player.org/mac/'
    file = open("#{base_url}#{last_modified_query}")
           .read
           .scan(%r{href="(clementine-[^"]+.dmg)"})
           .flatten
           .first
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

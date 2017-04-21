cask 'audacity-nightly' do
  version :latest
  sha256 :no_check

  # audacity.homerow.net was verified as official when first introduced to the cask
  url do
    require 'open-uri'
    base_url = 'http://www.audacity.homerow.net/index.php?dir=mac/'
    builds_url = "#{base_url}&sort=m_time&sort_mode=d"
    open(builds_url) do |builds|
      pattern = %r{(?<=\/index.php\?dir=mac\/)audacity-nightly-\d{4}\.\d{2}\.\d{2}-\d{2}\.\d{2}-[[:xdigit:]]{7}(?=\/\">)}
      latest_build_directory = "#{base_url}#{pattern.match(builds.read)}"
      open(latest_build_directory) do |build|
        pattern = %r{(?<=\/index.php\?dir=mac\/audacity-nightly-\d{4}\.\d{2}\.\d{2}-\d{2}\.\d{2}-[[:xdigit:]]{7}\/&amp;file=)audacity-macosx-\d.*\.dmg(?=\">)}
        latest_build_filename = pattern.match(build.read).to_s
        "#{latest_build_directory}&file=#{latest_build_filename}"
      end
    end
  end
  name 'Audacity'
  homepage 'http://www.audacityteam.org/'

  depends_on macos: '>= :snow_leopard'

  app 'Audacity.app'

  zap delete: '~/Library/Application Support/audacity'
end

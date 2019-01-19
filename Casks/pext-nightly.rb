cask 'pext-nightly' do
  version :latest
  sha256 :no_check

  # github.com/Pext/Pext was verified as official when first introduced to the cask
  url do
    require 'open-uri'
    require 'json'

    JSON.parse(open('https://api.github.com/repos/Pext/Pext/releases', 'User-Agent' => 'Homebrew').read)
        .select { |r| r['prerelease'] }[0]['assets']
        .select { |k| k['browser_download_url'] =~ %r{/.*dmg/} }[0]['browser_download_url']
  end
  name 'Pext'
  homepage 'https://pext.io/'

  conflicts_with cask: 'pext'

  app 'Pext.app'
end

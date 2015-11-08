cask :v1 => 'julia-nightly' do
  version '0.5.0-137abf537d'
  sha256 'c78990d050cb14a2f7bd66eaba8973ba40a4b3930e7c088c4e04703d02a4ef36'

  # amazonaws.com is the official download host per vendor homepage
  url "https://s3.amazonaws.com/julianightlies/bin/osx/x64/#{version.sub(%r{(\d+\.\d+).*},'\1')}/julia-#{version}-osx.dmg"
  name 'Julia'
  homepage 'http://julialang.org'
  license :mit

  app "Julia-#{version.sub(%r{(.+)-(.+)},'\1-dev-\2')}.app"
  binary "Julia-#{version.sub(%r{(.+)-(.+)},'\1-dev-\2')}.app/Contents/Resources/julia/bin/julia"

  depends_on :macos => '>= :lion'

  zap :delete => '~/.julia'
end

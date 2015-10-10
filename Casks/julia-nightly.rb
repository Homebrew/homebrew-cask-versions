cask :v1 => 'julia-nightly' do
  version '0.5.0-c842e8627a'
  sha256 '729a14973935af7966eb3fa3e89dc5a4b754d5e2447fb17b5f8679682c6654a6'

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

cask :v1 => 'julia-nightly' do
  version '0.4.0-13d6a8e73a'
  sha256 'ac2182238aa0f029ebd5a22808dcac48c5ade884a302186413a0b455b40a20ca'

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

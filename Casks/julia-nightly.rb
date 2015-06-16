cask :v1 => 'julia-nightly' do
  version '0.4.0-419dd2e737'
  sha256 'af8cd6f5e8244ec4b112ad5f58389870877a0a8b73fc4285c98b81b762ad962c'

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

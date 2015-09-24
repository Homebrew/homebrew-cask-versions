cask :v1 => 'julia-nightly' do
  version '0.5.0-da085b479c'
  sha256 'c2337d5ec94dac6750777e43e17d395ffdda7ebae2c20a03a2540b009b4b44ea'

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

cask 'julia-nightly' do
  version '0.5.0-3642c96ea1'
  sha256 '60dae0dc7c13800d724f4a6c356ad21fb87d94467ca52dc0915738e0369063b9'

  # amazonaws.com is the official download host per vendor homepage
  url "https://s3.amazonaws.com/julianightlies/bin/osx/x64/#{version.sub(%r{(\d+\.\d+).*}, '\1')}/julia-#{version}-osx.dmg"
  name 'Julia'
  homepage 'http://julialang.org'
  license :mit

  depends_on :macos => '>= :lion'

  app "Julia-#{version.sub(%r{(.+)-(.+)}, '\1-dev-\2')}.app"
  binary "Julia-#{version.sub(%r{(.+)-(.+)}, '\1-dev-\2')}.app/Contents/Resources/julia/bin/julia"

  zap :delete => '~/.julia'
end

cask 'julia-nightly' do
  version '0.5.0-e55c22a793'
  sha256 'e3d6587836f9a638b3e1856710146460711482901890a50996a2b5dec876b03b'

  # amazonaws.com is the official download host per vendor homepage
  url "https://s3.amazonaws.com/julianightlies/bin/osx/x64/#{version.sub(%r{(\d+\.\d+).*}, '\1')}/julia-#{version}-osx.dmg"
  name 'Julia'
  homepage 'http://julialang.org'
  license :mit

  depends_on macos: '>= :lion'

  app "Julia-#{version.sub(%r{(.+)-(.+)}, '\1-dev-\2')}.app"
  binary "#{appdir}/Julia-#{version.sub(%r{(.+)-(.+)}, '\1-dev-\2')}.app/Contents/Resources/julia/bin/julia"

  zap delete: '~/.julia'
end

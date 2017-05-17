cask 'julia-nightly' do
  version '0.7.0-448acca718'
  sha256 'bf862dbb9bd69058f0bab8f9eb4f283b1ac7b47babdb1992ccfc457451513f28'

  # amazonaws.com/julianightlies was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/julianightlies/bin/osx/x64/#{version.sub(%r{(\d+\.\d+).*}, '\1')}/julia-#{version}-osx.dmg"
  name 'Julia'
  homepage 'https://julialang.org/'

  depends_on macos: '>= :lion'

  app "Julia-#{version.sub(%r{(.+)-(.+)}, '\1-dev-\2')}.app"
  binary "#{appdir}/Julia-#{version.sub(%r{(.+)-(.+)}, '\1-dev-\2')}.app/Contents/Resources/julia/bin/julia"

  zap delete: '~/.julia'
end

cask :v1 => 'scala-ide-nightly' do
  version :latest
  sha256 :no_check

  url "http://download.scala-ide.org/nightly-scala-ide-4.0.x-211x.zip"
  homepage 'http://scala-ide.org/'
  license :bsd

  # Renamed for clarity: app name is inconsistent with its branding.
  # Also renamed to avoid conflict with other eclipse Casks.
  # Original discussion: https://github.com/caskroom/homebrew-cask/pull/2731
  app 'eclipse/Eclipse.app', :target => 'Scala IDE.app'
end

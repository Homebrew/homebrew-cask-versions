cask :v1 => 'go14' do

  if MacOS.release <= :snow_leopard
    version '1.4.2'
    sha256 '8b8fe5c723663c2da0381643b2f04b0a597f623149095db61818c3fe22be9582'
    url "https://storage.googleapis.com/golang/go#{version}.darwin-amd64-osx10.6.pkg"
    pkg "go#{version}.darwin-amd64-osx10.6.pkg"
  else
    version '1.4.3'
    sha256 'cb9eaf5d7be6f0a785937fa6888a8b4e3376abd4c425b5716112da9093ed4094'
    url "https://storage.googleapis.com/golang/go#{version}.darwin-amd64.pkg"
    pkg "go#{version}.darwin-amd64.pkg"
  end

  name 'Go'
  homepage 'https://golang.org/'
  license :bsd

  depends_on :macos => '>= :snow_leopard'

  uninstall :pkgutil => 'com.googlecode.go'
end

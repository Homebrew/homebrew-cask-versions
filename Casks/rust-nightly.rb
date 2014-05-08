class RustNightly < Cask
  arch = `uname -m`.chomp
  arch = 'i686' if arch.empty?
  pkgname = "rust-nightly-#{arch}-apple-darwin.pkg"

  url "http://static.rust-lang.org/dist/#{pkgname}"
  homepage 'http://www.rust-lang.org/'
  version 'latest'
  install pkgname
  sha256 :no_check
  uninstall :pkgutil => 'org.rust-lang.rust'
end

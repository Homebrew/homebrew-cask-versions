cask 'jgrasp-beta' do
  version '2.0.5b3'
  sha256 'a88a9887ed1741b302c1e66fb150aa04e7b69fc05fda07c76e4d901c3e5c61f7'

  url "http://www.jgrasp.org/dl4g/jgrasp/jgrasp#{version.no_dots}.pkg"
  name 'jgrasp'
  homepage 'http://jgrasp.org/index.html'

  pkg "jgrasp#{version.no_dots}.pkg"

  uninstall pkgutil: 'jgrasp'

  caveats do
    depends_on_java '6+'
  end
end

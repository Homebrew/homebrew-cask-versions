class Zephyros52 < Cask
  # version 5.2 is necessary for OSX 10.8 and older.
  version '5.2'
  sha256 '7e6dc16d4639b27e0e3a20537bc6a36d0f11900027888d7b39d884d3668d04e3'

  url 'https://raw.github.com/sdegutis/zephyros/master/Builds/Zephyros-5.2.app.tar.gz'
  homepage 'https://github.com/sdegutis/zephyros'

  link 'Zephyros.app'
end

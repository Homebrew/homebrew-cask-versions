class Zephyros52 < Cask
  # version 5.2 is necessary for OSX 10.8 and older.
  url 'https://raw.github.com/sdegutis/zephyros/master/Builds/Zephyros-5.2.app.tar.gz'
  homepage 'https://github.com/sdegutis/zephyros'
  version '5.2'
  no_checksum
  link 'Zephyros.app'
end

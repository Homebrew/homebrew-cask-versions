cask 'godot-nightly' do
  version :latest
  sha256 :no_check

  url 'https://archive.hugo.pro/builds/godot/master/editor/godot-macos-nightly-x86_64.dmg'
  name 'Godot Nightly'
  homepage 'https://hugo.pro/projects/godot-builds/'

  app 'Godot.app', target: 'Godot Nightly.app'
end

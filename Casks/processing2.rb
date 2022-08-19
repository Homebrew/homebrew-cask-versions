cask "processing2" do
  version "2.2.1"
  sha256 "8c237b3eb50626e8ffc648bfdeddaa18ceffbd6a48f8fec77a8eab5b774971fc"

  url "https://download.processing.org/processing-#{version}-macosx.zip"
  name "Processing"
  desc "Flexible software sketchbook and a language for learning how to code"
  homepage "https://processing.org/"

  conflicts_with cask: [
    "processing",
    "processing3",
    "processing-beta",
  ]

  app "Processing.app"

  uninstall quit: "org.processing.app"

  zap trash: "~/Library/Processing/preferences.txt"

  caveats do
    discontinued
  end
end

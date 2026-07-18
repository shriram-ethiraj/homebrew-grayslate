cask "grayslate" do
  version "0.1.5"
  sha256 "b4b475e87b1bad356292204c7962620b26a049c0aa20ca8fc1faacdbb1e95b36"

  url "https://github.com/shriram-ethiraj/grayslate/releases/download/v#{version}/Grayslate-#{version}-macos-universal-homebrew.dmg"
  name "Grayslate"
  desc "Fast scratchpad for code, data, and quick thinking"
  homepage "https://grayslate.app/"

  depends_on macos: :big_sur

  app "Grayslate.app"

  caveats <<~EOS
    Grayslate is currently ad-hoc signed and is not Apple-notarized. If macOS
    blocks the first launch, open System Settings > Privacy & Security and
    choose Open Anyway after confirming the download came from the official
    Grayslate GitHub release.
  EOS
end

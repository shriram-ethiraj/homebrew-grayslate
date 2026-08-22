cask "grayslate" do
  version "0.4.0"
  sha256 "732bc5f0fdea26560db841c5066bf1670f8c8f7fa80768ff0f6eb33473348a88"

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

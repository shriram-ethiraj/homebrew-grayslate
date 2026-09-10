cask "grayslate" do
  version "0.5.0"
  sha256 "319294eb02df06ad8b31aed17361186327e5ae82dd4cc426f24f0557dd5ae2af"

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

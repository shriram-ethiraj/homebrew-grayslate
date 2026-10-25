cask "grayslate" do
  version "0.5.2"
  sha256 "812cecfa141b5cf761062a8cc5dddc0b9d885f5588b6b1746e1fcd18f776ee9b"

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

cask "grayslate" do
  version "0.2.0"
  sha256 "87b6cf7ea8a6b6a5529d3e221fbef6eb2782dff30c42e5013e2bd04ed8d57a0d"

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

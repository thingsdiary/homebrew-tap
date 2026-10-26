cask "thingsdiary" do
  version "1.7.1"
  sha256 "b3c597b78f612eed0e634e709390167c471d443a6d38ea31635c9bcd051914e0"

  url "https://github.com/thingsdiary/thingsdiary-mac/releases/download/v#{version}/thingsdiary.dmg"
  name "thingsdiary"
  desc "Desktop client for thingsdiary.io"
  homepage "https://github.com/thingsdiary/thingsdiary-mac"

  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "thingsdiary.app"

  caveats <<~EOS
    This build has an ad-hoc signature rather than an Apple Developer ID.
    On first launch, macOS may block it. Try opening it once, then go to
    System Settings > Privacy & Security and click Open Anyway.
  EOS
end

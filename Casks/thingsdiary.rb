cask "thingsdiary" do
  version "1.7.4"
  sha256 "96cbb786204bdbcc9773c70ad45a58b8df074e0f32459e2a87c8bffee30696d3"

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

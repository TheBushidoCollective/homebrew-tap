# typed: false
# frozen_string_literal: true

class Han < Formula
  desc "Sophisticated Claude Code Plugins with Superior Accuracy"
  homepage "https://han.guru"
  version "1.42.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.42.3/han-darwin-arm64"
      sha256 "b90db71b96582c0b10cf866942be6527e1f63ce8fb7e824d69e6da4c87ac3423"
    else
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.42.3/han-darwin-x64"
      sha256 "23c60d863987c665c4a357483f293614caee7ea05ca9ae3096cb50881d600611"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.42.3/han-linux-arm64"
      sha256 "d3c73f8bacf8a0539d3752ea37063fd9976d8cefb1e827ce3bcd0cc5c197b5ea"
    else
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.42.3/han-linux-x64"
      sha256 "cf4dad1624d8c01bd88d111fac976442500181ba1df15971f5022e4782e608de"
    end
  end

  def install
    bin.install Dir["han-*"].first => "han"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/han --version")
  end
end

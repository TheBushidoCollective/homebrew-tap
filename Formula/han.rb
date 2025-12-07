# typed: false
# frozen_string_literal: true

class Han < Formula
  desc "Sophisticated Claude Code Plugins with Superior Accuracy"
  homepage "https://han.guru"
  version "1.51.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.51.2/han-darwin-arm64"
      sha256 "0bbefdbcd2fb3954727a8a6ac7288f383d79cbf8595af36ffd3465bc29c5b070"
    else
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.51.2/han-darwin-x64"
      sha256 "3d47198f55974eaa193348bdae862681c2b5cfdddea68b81146ebf8ec3daef15"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.51.2/han-linux-arm64"
      sha256 "e6c582a6c1c238658a2c559668f9f47f5ee5239a38cdbab64fc1d77ef5580efa"
    else
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.51.2/han-linux-x64"
      sha256 "a9902e92abca617dcc77bd3b0b681811a35a343cfc543c8dbc14e60ca63a68cb"
    end
  end

  def install
    bin.install Dir["han-*"].first => "han"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/han --version")
  end
end

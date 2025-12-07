# typed: false
# frozen_string_literal: true

class Han < Formula
  desc "Sophisticated Claude Code Plugins with Superior Accuracy"
  homepage "https://han.guru"
  version "1.52.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.52.3/han-darwin-arm64"
      sha256 "c6ca9af80f73f6891fcf57f8973d0ef23f089e58e3d6efe65c274e924af402d3"
    else
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.52.3/han-darwin-x64"
      sha256 "dd2fdbee5d11a4242503ba0d445b13058f2039fd884123814ecb08fa5cf53ac4"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.52.3/han-linux-arm64"
      sha256 "bf1158475c30ceca270f534dd0031c3a2b0e0ba3550f3d8cf654d7571870c867"
    else
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.52.3/han-linux-x64"
      sha256 "44f862b9611c9688df7e79c7486595bf62d37f740a86668ad8105b5692b9148a"
    end
  end

  def install
    bin.install Dir["han-*"].first => "han"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/han --version")
  end
end

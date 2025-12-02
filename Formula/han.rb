# typed: false
# frozen_string_literal: true

class Han < Formula
  desc "Sophisticated Claude Code Plugins with Superior Accuracy"
  homepage "https://han.guru"
  version "1.31.11"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.31.11/han-darwin-arm64"
      sha256 "da4e78f96589565d9d3b5548b1f5a60ad775242f2ca97be24c61957ba4cc6602"
    else
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.31.11/han-darwin-x64"
      sha256 "a9d6afcf738ee68bbc8b1414289af762cb2e203f880d1a1b82f7c0c20461553c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.31.11/han-linux-arm64"
      sha256 "6dfd4c4c1b29e5a73299450d7fdf259896eadc7ff62ceb5bd291b31b6b7df025"
    else
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.31.11/han-linux-x64"
      sha256 "20f16223ec3c186eac1661c435dd4cb1c24dacd59ec606f2fe04ecd994a29e0d"
    end
  end

  def install
    bin.install Dir["han-*"].first => "han"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/han --version")
  end
end

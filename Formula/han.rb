# typed: false
# frozen_string_literal: true

class Han < Formula
  desc "Sophisticated Claude Code Plugins with Superior Accuracy"
  homepage "https://han.guru"
  version "1.52.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.52.1/han-darwin-arm64"
      sha256 "df16f6076ce99d2c2d1ccc9773942b3c8b5135ef928badeec2225a3122b07eb9"
    else
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.52.1/han-darwin-x64"
      sha256 "7f57e768a04360a76acaf839a1eddef92359130f2ad7ba67b7eb9fa32b1e323f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.52.1/han-linux-arm64"
      sha256 "cae9b9ee9848b36c3602fd4258352943992aed222a7a297a9087af0ef56935d6"
    else
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.52.1/han-linux-x64"
      sha256 "2c64a6ca2080c3665331d73639c251ddaa208a5cc3a07388d6bfbaa75f0b44c9"
    end
  end

  def install
    bin.install Dir["han-*"].first => "han"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/han --version")
  end
end

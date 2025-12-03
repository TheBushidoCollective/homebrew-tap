# typed: false
# frozen_string_literal: true

class Han < Formula
  desc "Sophisticated Claude Code Plugins with Superior Accuracy"
  homepage "https://han.guru"
  version "1.36.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.36.3/han-darwin-arm64"
      sha256 "6bc46483629d9ca9faae1ad21c3fc5aab047e05810fcf4041af2d1f68bc32ef3"
    else
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.36.3/han-darwin-x64"
      sha256 "f101fa6e781a2a39158357c6e2de09e20da23466de13396e68bc6d395879dce6"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.36.3/han-linux-arm64"
      sha256 "d076287144113a632bbce723899bf3b7748d4682ebe87fde4599c6f280a7a263"
    else
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.36.3/han-linux-x64"
      sha256 "e40c1586a6b5c6ec3a24171f0c324eaf2d0c0d50760f69985c1401d6454dc17d"
    end
  end

  def install
    bin.install Dir["han-*"].first => "han"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/han --version")
  end
end

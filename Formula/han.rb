# typed: false
# frozen_string_literal: true

class Han < Formula
  desc "Sophisticated Claude Code Plugins with Superior Accuracy"
  homepage "https://han.guru"
  version "1.51.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.51.0/han-darwin-arm64"
      sha256 "244f2cc37add56b2d59a76f3194f4d9b3154e1e2e470ce8075a3dd46d8ad4051"
    else
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.51.0/han-darwin-x64"
      sha256 "76e6d5fc33472537ab8e67381309de490c2cc026b280dca7c200b919399335ec"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.51.0/han-linux-arm64"
      sha256 "fd23cb85cdf32d86ed6bf23948cbba02c4e782729cfacd906919821c0486a96c"
    else
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.51.0/han-linux-x64"
      sha256 "4f48f724f54b4f9539a2657973b68c10e1e365fb0ef6a52a9ea2a3efe3014d80"
    end
  end

  def install
    bin.install Dir["han-*"].first => "han"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/han --version")
  end
end

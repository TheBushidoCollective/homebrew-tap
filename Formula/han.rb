# typed: false
# frozen_string_literal: true

class Han < Formula
  desc "Sophisticated Claude Code Plugins with Superior Accuracy"
  homepage "https://han.guru"
  version "3.9.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/TheBushidoCollective/han/releases/download/v3.9.1/han-darwin-arm64"
      sha256 "a4e1f5d56d86729adc35f5f5c3e09118a34b59748ea02a10667833b459779662"
    else
      url "https://github.com/TheBushidoCollective/han/releases/download/v3.9.1/han-darwin-x64"
      sha256 "aec6cbb421dc50ae181949573ee06cb9590b18174d11ae605d3d941d68891f6d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/TheBushidoCollective/han/releases/download/v3.9.1/han-linux-arm64"
      sha256 "f7944cb17277943053200b33b995259854a9e6b1d00ea560346bf1ffd4dea124"
    else
      url "https://github.com/TheBushidoCollective/han/releases/download/v3.9.1/han-linux-x64"
      sha256 "52b34acab6fcea25a19d9512584295d5dcbfe181000bf38ba10541be9c2dfb39"
    end
  end

  def install
    bin.install Dir["han-*"].first => "han"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/han --version")
  end
end

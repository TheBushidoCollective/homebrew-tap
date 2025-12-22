# typed: false
# frozen_string_literal: true

class Han < Formula
  desc "Sophisticated Claude Code Plugins with Superior Accuracy"
  homepage "https://han.guru"
  version "2.2.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/TheBushidoCollective/han/releases/download/v2.2.2/han-darwin-arm64"
      sha256 "a7d6512af84ac9a22ae3b62fe7a2c5f7dc5f67e1c11643e04181bf24584d4ddd"
    else
      url "https://github.com/TheBushidoCollective/han/releases/download/v2.2.2/han-darwin-x64"
      sha256 "dc011bbd5770b238a56cc908b37d3608128ddaa1154a1acd95415c02a6ed2e6c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/TheBushidoCollective/han/releases/download/v2.2.2/han-linux-arm64"
      sha256 "c3fba959ca722dbf2528d989b9a5465955ca68b8605e1d21b1deccaf0f667e3f"
    else
      url "https://github.com/TheBushidoCollective/han/releases/download/v2.2.2/han-linux-x64"
      sha256 "c4ca5b3cf757683f86c8928fc41132deab1c44062f97284beac9196077b29e2d"
    end
  end

  def install
    bin.install Dir["han-*"].first => "han"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/han --version")
  end
end

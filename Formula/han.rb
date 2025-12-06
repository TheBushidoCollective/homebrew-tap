# typed: false
# frozen_string_literal: true

class Han < Formula
  desc "Sophisticated Claude Code Plugins with Superior Accuracy"
  homepage "https://han.guru"
  version "1.49.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.49.2/han-darwin-arm64"
      sha256 "59faa3f6bdf31c3e6a93a3982b5c5a50b5d7d1ac8eb70e21047ccdf9d80ac0ee"
    else
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.49.2/han-darwin-x64"
      sha256 "2155e357e5f63ddcbee3511fa7ef3fca8fa808fdd8bc54f959bb4ccff8b1bb99"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.49.2/han-linux-arm64"
      sha256 "69a550daf8dbb1bd9d3d8a70c075f0e44e2bd2cc6fbf5283e743e3d6ae40def7"
    else
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.49.2/han-linux-x64"
      sha256 "1e638bb5c369487df4047004e1560a545fab10d18cea9d2c113b0f8faf8e3dd1"
    end
  end

  def install
    bin.install Dir["han-*"].first => "han"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/han --version")
  end
end

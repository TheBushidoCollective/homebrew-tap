# typed: false
# frozen_string_literal: true

class Han < Formula
  desc "Sophisticated Claude Code Plugins with Superior Accuracy"
  homepage "https://han.guru"
  version "3.9.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/TheBushidoCollective/han/releases/download/v3.9.3/han-darwin-arm64"
      sha256 "419d996894daa3f5d01984e6917181852d5034d40058d6a927920745c17c0f55"
    else
      url "https://github.com/TheBushidoCollective/han/releases/download/v3.9.3/han-darwin-x64"
      sha256 "0ba0ee2b4cc022010d3cdbf7f2e8fb93e2ebc2037d91368ccba97bd8234ddba6"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/TheBushidoCollective/han/releases/download/v3.9.3/han-linux-arm64"
      sha256 "31910acd53e2da29f054d3b7c0444e71bcb77448daf00fe1c07cb09b76f5cda2"
    else
      url "https://github.com/TheBushidoCollective/han/releases/download/v3.9.3/han-linux-x64"
      sha256 "fdeec90b2b0d728ddd4494d2b6b62f3d4926d13ff6bb8d747cc0fc876a51d4ae"
    end
  end

  def install
    bin.install Dir["han-*"].first => "han"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/han --version")
  end
end

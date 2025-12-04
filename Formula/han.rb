# typed: false
# frozen_string_literal: true

class Han < Formula
  desc "Sophisticated Claude Code Plugins with Superior Accuracy"
  homepage "https://han.guru"
  version "1.44.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.44.1/han-darwin-arm64"
      sha256 "d214496059b07855a2f3c88ef0943056a6573ee8fd7d7dcbbe3ac2f341706968"
    else
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.44.1/han-darwin-x64"
      sha256 "d82ea1402a688dbf806e7aea3748dd75103515030bd8286bae832fd9d22a5794"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.44.1/han-linux-arm64"
      sha256 "7721aa05a357d1ec45a11ae5974718c08f1d9a4964ad474a03a0b103ff4c1355"
    else
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.44.1/han-linux-x64"
      sha256 "d88e56fa9acddf5055e450d4c64d2d1709df70ba980b8d450a76e405d2483350"
    end
  end

  def install
    bin.install Dir["han-*"].first => "han"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/han --version")
  end
end

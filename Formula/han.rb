# typed: false
# frozen_string_literal: true

class Han < Formula
  desc "Sophisticated Claude Code Plugins with Superior Accuracy"
  homepage "https://han.guru"
  version "1.35.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.35.0/han-darwin-arm64"
      sha256 "b68ad75b05b28d9c3010d947abad7d4d9542b5a6c27a06f0b5eb8711c10c0e14"
    else
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.35.0/han-darwin-x64"
      sha256 "c14aea1c4baebe3a2afda23d0321766dc08364dc654775372efaa73f6537434b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.35.0/han-linux-arm64"
      sha256 "5b14a8f57d97dda53d623097418beea4544d0912da6e4a4127d986e50b535188"
    else
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.35.0/han-linux-x64"
      sha256 "f6ce8d37088c7eaacf982c8f0b85aa1a9c59863535a6cbfa98d74798fe62642d"
    end
  end

  def install
    bin.install Dir["han-*"].first => "han"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/han --version")
  end
end

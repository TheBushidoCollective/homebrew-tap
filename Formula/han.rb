# typed: false
# frozen_string_literal: true

class Han < Formula
  desc "Sophisticated Claude Code Plugins with Superior Accuracy"
  homepage "https://han.guru"
  version "1.61.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.61.4/han-darwin-arm64"
      sha256 "d3bdf7dacf95e10aa9abb10e3f2ae5bb27e354ffe31d994a60f0ca4ce6363c55"
    else
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.61.4/han-darwin-x64"
      sha256 "2baac1896377a1586f766f95934b34e793470f84555562302225ef202691a91d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.61.4/han-linux-arm64"
      sha256 "e198f6cdf12af1bea3328ccf5f134a51345fc5931d6a0741eb396f4f2772779c"
    else
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.61.4/han-linux-x64"
      sha256 "45583f5976429c7f72e9faa70171e873b9e58e84ae083bbdd86f5c9be446f531"
    end
  end

  def install
    bin.install Dir["han-*"].first => "han"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/han --version")
  end
end

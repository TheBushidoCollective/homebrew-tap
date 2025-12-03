# typed: false
# frozen_string_literal: true

class Han < Formula
  desc "Sophisticated Claude Code Plugins with Superior Accuracy"
  homepage "https://han.guru"
  version "1.34.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.34.3/han-darwin-arm64"
      sha256 "bb593359da0ff1cfe2e314c7d2aff58bf73b849fc780d3fe632dab503919e415"
    else
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.34.3/han-darwin-x64"
      sha256 "88d1b04bf7de351190426557a751ce3612a99afee62176283673aedd7e524f3a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.34.3/han-linux-arm64"
      sha256 "31d2a104997592f6a9a95e52505902e4266ed521b301c049683054bf8b385058"
    else
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.34.3/han-linux-x64"
      sha256 "798b16736ace099212a4d096bd209bc1b2f3e0f675e404d681776e6b7ea89e56"
    end
  end

  def install
    bin.install Dir["han-*"].first => "han"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/han --version")
  end
end

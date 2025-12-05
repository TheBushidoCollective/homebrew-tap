# typed: false
# frozen_string_literal: true

class Han < Formula
  desc "Sophisticated Claude Code Plugins with Superior Accuracy"
  homepage "https://han.guru"
  version "1.49.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.49.1/han-darwin-arm64"
      sha256 "83c5283b7900f41320142703c68097fa1dcfe2c9c0e2a56ff27746b75f3c3cbf"
    else
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.49.1/han-darwin-x64"
      sha256 "51f96e388ea954a0cc09e1476bb84479a140590d0e9f8310a47c88c1908b4e12"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.49.1/han-linux-arm64"
      sha256 "681a058d46fc592b78dbdf0f1a0aa6037fc5b15f7c46de90041e98171576387f"
    else
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.49.1/han-linux-x64"
      sha256 "81050f4d2954ea2ead5a9c490b7bf558d5e165c856ba7b69bf180854640e5764"
    end
  end

  def install
    bin.install Dir["han-*"].first => "han"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/han --version")
  end
end

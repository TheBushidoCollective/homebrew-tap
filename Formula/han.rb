# typed: false
# frozen_string_literal: true

class Han < Formula
  desc "Sophisticated Claude Code Plugins with Superior Accuracy"
  homepage "https://han.guru"
  version "3.12.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/TheBushidoCollective/han/releases/download/v3.12.3/han-darwin-arm64"
      sha256 "4e5b1a26d43c549a9c2551371539c9692eedcdb07db88ade0e2968c999fd3a13"
    else
      url "https://github.com/TheBushidoCollective/han/releases/download/v3.12.3/han-darwin-x64"
      sha256 "37cca7120439db4362f95806c75cfd05177f944c2a6a8232a57d7d0834140040"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/TheBushidoCollective/han/releases/download/v3.12.3/han-linux-arm64"
      sha256 "1829a111e19e1f5c4a479ef4b01c66087b96ce2577f263d235964607b360d4d5"
    else
      url "https://github.com/TheBushidoCollective/han/releases/download/v3.12.3/han-linux-x64"
      sha256 "1b7f86c57fa644869d373c038a7488466a1d6e8760357d58e2f8326a1b70d628"
    end
  end

  def install
    bin.install Dir["han-*"].first => "han"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/han --version")
  end
end

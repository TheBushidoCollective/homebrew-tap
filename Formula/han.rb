# typed: false
# frozen_string_literal: true

class Han < Formula
  desc "Sophisticated Claude Code Plugins with Superior Accuracy"
  homepage "https://han.guru"
  version "1.28.5"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.28.5/han-darwin-arm64"
      sha256 "6e40dfa66b5be6d27002b366570428d8d46ce9415bce90635ffc26390700fc46"
    else
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.28.5/han-darwin-x64"
      sha256 "ead5cfe2e9e3bacfdf042d7c35fc579eb88b377c0575080b66f1efd6e164f290"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.28.5/han-linux-arm64"
      sha256 "fdc577111c311a0e482587f3336b1e35a0aff277e6d4edb61eaafe121890af3f"
    else
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.28.5/han-linux-x64"
      sha256 "a3060646644aacd1867662a6e13a49229192f68f358e4b2fa1e2dbfd497aa117"
    end
  end

  def install
    bin.install Dir["han-*"].first => "han"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/han --version")
  end
end

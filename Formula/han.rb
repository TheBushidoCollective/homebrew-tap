# typed: false
# frozen_string_literal: true

class Han < Formula
  desc "Sophisticated Claude Code Plugins with Superior Accuracy"
  homepage "https://han.guru"
  version "3.12.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/TheBushidoCollective/han/releases/download/v3.12.0/han-darwin-arm64"
      sha256 "8de71b3b5f47ce6e371da83d31d4581011845c799b4cb8b7b2b3ff60ea092266"
    else
      url "https://github.com/TheBushidoCollective/han/releases/download/v3.12.0/han-darwin-x64"
      sha256 "126d5ffe4b2f40a66d741b4c459c5d909de7518d62e132e02fbbc466f89bfc54"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/TheBushidoCollective/han/releases/download/v3.12.0/han-linux-arm64"
      sha256 "a7b9e451216cfa864df3acfae3ef060c92a1013bb5fa3151bcb9bc8766f372c0"
    else
      url "https://github.com/TheBushidoCollective/han/releases/download/v3.12.0/han-linux-x64"
      sha256 "6ba7a7f33e2904a50efde8a1588651390c0bd15737f6fd172aff16297b6dbe10"
    end
  end

  def install
    bin.install Dir["han-*"].first => "han"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/han --version")
  end
end

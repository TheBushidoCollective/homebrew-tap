# typed: false
# frozen_string_literal: true

class Han < Formula
  desc "Sophisticated Claude Code Plugins with Superior Accuracy"
  homepage "https://han.guru"
  version "1.61.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.61.3/han-darwin-arm64"
      sha256 "04906050fcf6f4f0cbfdf81790ae49e06b69a2abe7f28eac429162efb6b0af92"
    else
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.61.3/han-darwin-x64"
      sha256 "77b292d2e5767628641d00942ba0f8a85818a9af39b03e71c0ea0484bfb825c4"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.61.3/han-linux-arm64"
      sha256 "c7f9a80fd4e753932e4e71fb3f4b96e81cb529f541d165f166003eb3c7224024"
    else
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.61.3/han-linux-x64"
      sha256 "a78c30e2d89ece0d02174ad6498ade6eca469a8923ffb15e502027241e9e1822"
    end
  end

  def install
    bin.install Dir["han-*"].first => "han"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/han --version")
  end
end

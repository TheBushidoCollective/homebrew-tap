# typed: false
# frozen_string_literal: true

class Han < Formula
  desc "Sophisticated Claude Code Plugins with Superior Accuracy"
  homepage "https://han.guru"
  version "3.20.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/TheBushidoCollective/han/releases/download/v3.20.0/han-darwin-arm64"
      sha256 "e0f0029bae2699daef8550e240083632cfd41c6d9ba491e842cc78ce9e302eba"
    else
      url "https://github.com/TheBushidoCollective/han/releases/download/v3.20.0/han-darwin-x64"
      sha256 "e0ece8fd8b51136726695704359646c44581ae6ba937ab748ebe60d5a131dc22"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/TheBushidoCollective/han/releases/download/v3.20.0/han-linux-arm64"
      sha256 "7ebdf5c4fb2405f74717595c8c6a2b2f1b2fbf3ff0a0cfd2bd7fbd0099d4ced9"
    else
      url "https://github.com/TheBushidoCollective/han/releases/download/v3.20.0/han-linux-x64"
      sha256 "4b97b2318aa4e39e1034b2e0e9dbacb6832e60428e6d93037644849133ef825a"
    end
  end

  def install
    bin.install Dir["han-*"].first => "han"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/han --version")
  end
end

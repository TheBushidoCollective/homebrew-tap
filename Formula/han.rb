# typed: false
# frozen_string_literal: true

class Han < Formula
  desc "Sophisticated Claude Code Plugins with Superior Accuracy"
  homepage "https://han.guru"
  version "1.37.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.37.1/han-darwin-arm64"
      sha256 "bc2513fba231b6ab11e4ae60ea2eba1f8995472a5497d21569b87cf5d20144c2"
    else
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.37.1/han-darwin-x64"
      sha256 "a4b7e607a9fd2a5d3ab31931f38474f8755acfba0548394b4445be180be5c730"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.37.1/han-linux-arm64"
      sha256 "a38a31c1a665d5273f366b7700f6d4159c4b85a1371c1d3eaa2a641fac927d86"
    else
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.37.1/han-linux-x64"
      sha256 "858ac7b2097bf4f2d6a27082258206d8d7eff06451f4965f8142221126840dd1"
    end
  end

  def install
    bin.install Dir["han-*"].first => "han"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/han --version")
  end
end

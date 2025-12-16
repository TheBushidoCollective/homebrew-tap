# typed: false
# frozen_string_literal: true

class Han < Formula
  desc "Sophisticated Claude Code Plugins with Superior Accuracy"
  homepage "https://han.guru"
  version "2.2.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/TheBushidoCollective/han/releases/download/v2.2.0/han-darwin-arm64"
      sha256 "e6a5b1e98b343cf5961b817177dcc38da28d7c3bbb961f0a04ffe6958bc2e469"
    else
      url "https://github.com/TheBushidoCollective/han/releases/download/v2.2.0/han-darwin-x64"
      sha256 "f670cfba8b35b75e7147f79eae45c209284167486ecbc0265018bdbabf348df8"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/TheBushidoCollective/han/releases/download/v2.2.0/han-linux-arm64"
      sha256 "0aef76656cefe286194312f253eb36aa42d88c1ed8f9e8083801fdcfdd8f88de"
    else
      url "https://github.com/TheBushidoCollective/han/releases/download/v2.2.0/han-linux-x64"
      sha256 "2d5c9d5cd88617f39433b3b20c564dee9f840beed668b0508b86d3b348b9775f"
    end
  end

  def install
    bin.install Dir["han-*"].first => "han"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/han --version")
  end
end

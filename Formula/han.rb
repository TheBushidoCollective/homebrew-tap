# typed: false
# frozen_string_literal: true

class Han < Formula
  desc "Sophisticated Claude Code Plugins with Superior Accuracy"
  homepage "https://han.guru"
  version "1.53.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.53.0/han-darwin-arm64"
      sha256 "edf8153ea1e6363c9e661b9f3360556a7dae7acef45573c62af3609bb4935c4b"
    else
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.53.0/han-darwin-x64"
      sha256 "194e461d6a46efb05d378b4c861cdbdc12bdf50a5394441c82317e1f1d11ca52"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.53.0/han-linux-arm64"
      sha256 "717f88d73d97f5c416821213b746da931c07ed7bda224c5edb91c89eddefffe2"
    else
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.53.0/han-linux-x64"
      sha256 "30f5e002d28da82043ac0d3696bc927998788f1b959077739b093ad4c6ec43db"
    end
  end

  def install
    bin.install Dir["han-*"].first => "han"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/han --version")
  end
end

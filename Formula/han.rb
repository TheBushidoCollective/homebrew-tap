# typed: false
# frozen_string_literal: true

class Han < Formula
  desc "Sophisticated Claude Code Plugins with Superior Accuracy"
  homepage "https://han.guru"
  version "1.44.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.44.0/han-darwin-arm64"
      sha256 "55ff33ebf80d5e304dc129399f07c58181f4f13a3d0e4b8620183b22a2c522ff"
    else
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.44.0/han-darwin-x64"
      sha256 "156490c2bb312ef73e03ef580d2bdb140406cde56750622215b4e41e802f2503"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.44.0/han-linux-arm64"
      sha256 "1aabf597566390d682c8882aeae7b83be70ae95ae42cc5029737329417ed6499"
    else
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.44.0/han-linux-x64"
      sha256 "ee3a680bad9adb1a26bf35d72eb1372b41cb8b3580591c098668daecdc1b0596"
    end
  end

  def install
    bin.install Dir["han-*"].first => "han"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/han --version")
  end
end

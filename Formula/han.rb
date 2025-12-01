# typed: false
# frozen_string_literal: true

class Han < Formula
  desc "Sophisticated Claude Code Plugins with Superior Accuracy"
  homepage "https://han.guru"
  version "1.25.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.25.0/han-darwin-arm64"
      sha256 "1b19c228ee201ec4b9bf32a49037a2c52470d64d479f22ccc5078e2967b55351"
    else
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.25.0/han-darwin-x64"
      sha256 "59b171780c5d6519760f94294953bc76fc25330f8bd4922cbd3ac4b179d888d3"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.25.0/han-linux-arm64"
      sha256 "9839f8e3aba9c38b57ae66ec2d48da2378375310a4e480db897e6a9664f86690"
    else
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.25.0/han-linux-x64"
      sha256 "de8f7218d39ad131b31f10212258529d3a9aa4caeb19792265186b033699bf9f"
    end
  end

  def install
    bin.install Dir["*"].first => "han"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/han --version")
  end
end

# typed: false
# frozen_string_literal: true

class Han < Formula
  desc "Sophisticated Claude Code Plugins with Superior Accuracy"
  homepage "https://han.guru"
  version "1.53.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.53.2/han-darwin-arm64"
      sha256 "1f17b8e209aa39a6d4b7b2212257d7fb26144f15791a4dd1b495e7a168402fe3"
    else
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.53.2/han-darwin-x64"
      sha256 "9b8f4b3467a64121e8a093ef5d5185274ea48d3b51b6131534491dd07a60dbdf"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.53.2/han-linux-arm64"
      sha256 "f50a2e7a85e32d309e98c64ff88709f7588c8156f231464b3c7259de4e43102a"
    else
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.53.2/han-linux-x64"
      sha256 "713ad200fe08aebc06d6abe2d5d68f9f22b011a0c0a03223ff3e00169c853790"
    end
  end

  def install
    bin.install Dir["han-*"].first => "han"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/han --version")
  end
end

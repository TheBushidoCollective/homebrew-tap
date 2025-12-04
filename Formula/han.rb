# typed: false
# frozen_string_literal: true

class Han < Formula
  desc "Sophisticated Claude Code Plugins with Superior Accuracy"
  homepage "https://han.guru"
  version "1.40.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.40.0/han-darwin-arm64"
      sha256 "6132a70c6b11e40da6d3db34f9c88644636d56f459c0ce8908f839b6562cddbb"
    else
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.40.0/han-darwin-x64"
      sha256 "a6e4c567af049130cb5ec4122472450faa80bf66efb78654a3bf4f83a77a0467"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.40.0/han-linux-arm64"
      sha256 "9090540acb011820bb1a2b6c308e7f661a15e4a2e8e212cc31342368b9299891"
    else
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.40.0/han-linux-x64"
      sha256 "2fd42a08c0d69c989a2e9f994cdfa82dcd3679a5d937cfb80a095278e43ded6f"
    end
  end

  def install
    bin.install Dir["han-*"].first => "han"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/han --version")
  end
end

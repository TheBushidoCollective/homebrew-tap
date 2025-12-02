# typed: false
# frozen_string_literal: true

class Han < Formula
  desc "Sophisticated Claude Code Plugins with Superior Accuracy"
  homepage "https://han.guru"
  version "1.31.6"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.31.6/han-darwin-arm64"
      sha256 "86b158482800ee3678d7b18c1f191f36a592ae787aea0e40941200d5db0577fc"
    else
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.31.6/han-darwin-x64"
      sha256 "8c5531d24eff5962de58330f155fd1b34dbc0c837a42c03674934dae843b5d6d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.31.6/han-linux-arm64"
      sha256 "a8d1df5d4c19aeb4c568170bc5e2115863780092d51d8cf7c6b04259cd89b228"
    else
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.31.6/han-linux-x64"
      sha256 "e6517775ccf2a7216324a8b63cdc153dd206d00ea311342f240eea178f125060"
    end
  end

  def install
    bin.install Dir["han-*"].first => "han"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/han --version")
  end
end

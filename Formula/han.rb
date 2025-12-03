# typed: false
# frozen_string_literal: true

class Han < Formula
  desc "Sophisticated Claude Code Plugins with Superior Accuracy"
  homepage "https://han.guru"
  version "1.35.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.35.1/han-darwin-arm64"
      sha256 "6e24f2dcf4f803e10bb10993c366be3c3ceb89967235d815a5733b16d2ca28d7"
    else
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.35.1/han-darwin-x64"
      sha256 "a034852de4da4eab7c27e5eee13a4cb9b77b9c78e9077008766502643d0c20af"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.35.1/han-linux-arm64"
      sha256 "958b7372193cd93a3fe288f2a71ad6042d396ecf5709e517bc99b8450be10fa4"
    else
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.35.1/han-linux-x64"
      sha256 "11b240f1092f2d0047fd8fbe05b971f6f5109d641080b9bba7747faded0b15ad"
    end
  end

  def install
    bin.install Dir["han-*"].first => "han"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/han --version")
  end
end

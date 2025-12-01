# typed: false
# frozen_string_literal: true

class Han < Formula
  desc "Sophisticated Claude Code Plugins with Superior Accuracy"
  homepage "https://han.guru"
  version "1.28.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.28.2/han-darwin-arm64"
      sha256 "fe663a19a8270036f0ed0cce892ca16ae20f8ca109f8154811512bdfe983461b"
    else
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.28.2/han-darwin-x64"
      sha256 "ecf0fbb5cae7348a888e59fbfcb7f879a54a8f8b5375a2fa84aa4a5705a45e9c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.28.2/han-linux-arm64"
      sha256 "d6642a96b043401228e3677c85d37dce7c8257aeea04fa08b8b95a38b2f0bf6c"
    else
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.28.2/han-linux-x64"
      sha256 "65c56b44f0c5509da6654e5844f5856744e9e254a161bba0f46d24296370bf15"
    end
  end

  def install
    bin.install Dir["han-*"].first => "han"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/han --version")
  end
end

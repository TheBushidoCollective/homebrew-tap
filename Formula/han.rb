# typed: false
# frozen_string_literal: true

class Han < Formula
  desc "Sophisticated Claude Code Plugins with Superior Accuracy"
  homepage "https://han.guru"
  version "1.52.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.52.2/han-darwin-arm64"
      sha256 "1cbfce13c191c509fe046e92901c053645cd57f79e59325d5d48dab913007134"
    else
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.52.2/han-darwin-x64"
      sha256 "6d7fbdf904e4294fff0ee79dcedb0e6c5f7cf8d7089776b6c36570bef17a5b32"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.52.2/han-linux-arm64"
      sha256 "a364504a336c89ea7fe42a5d4e7ca67506a291863db4d7a9d4d23082c61f7cd4"
    else
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.52.2/han-linux-x64"
      sha256 "22227d916fbde44c6152903ebf740236ec617303d5df8aeebabbd6fb4c2c934b"
    end
  end

  def install
    bin.install Dir["han-*"].first => "han"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/han --version")
  end
end

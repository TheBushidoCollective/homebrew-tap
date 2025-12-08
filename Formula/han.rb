# typed: false
# frozen_string_literal: true

class Han < Formula
  desc "Sophisticated Claude Code Plugins with Superior Accuracy"
  homepage "https://han.guru"
  version "1.56.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.56.2/han-darwin-arm64"
      sha256 "ae7c4eb38765bd16bbb3cd08ecf4d5e9936b52582966be92182df8aef011135b"
    else
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.56.2/han-darwin-x64"
      sha256 "0e9f7eab57fabfca25b50fe516cc345eca75f112763ffdca1381d500dfcc5ba3"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.56.2/han-linux-arm64"
      sha256 "51624842dadd3d9336427e6041258ff0f4bd20f12e81a9039f3f302b8e68aa89"
    else
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.56.2/han-linux-x64"
      sha256 "90e34a0768c0b1fae9986e9b696171d82c376255d7e207cc921da0f9232d7a27"
    end
  end

  def install
    bin.install Dir["han-*"].first => "han"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/han --version")
  end
end

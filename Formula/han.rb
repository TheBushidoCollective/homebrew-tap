# typed: false
# frozen_string_literal: true

class Han < Formula
  desc "Sophisticated Claude Code Plugins with Superior Accuracy"
  homepage "https://han.guru"
  version "3.12.5"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/TheBushidoCollective/han/releases/download/v3.12.5/han-darwin-arm64"
      sha256 "672e9b0b2ce12d88ab25a638283279645be9264c1b6c65521bf409fc450a341d"
    else
      url "https://github.com/TheBushidoCollective/han/releases/download/v3.12.5/han-darwin-x64"
      sha256 "7b19050f08815b9f752619537f2df889477f699a0cc1f549c138d13c66b8e65f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/TheBushidoCollective/han/releases/download/v3.12.5/han-linux-arm64"
      sha256 "22beec3c2210505a0fc39cf55070f640e9136ec37ebbe535538865c477608a80"
    else
      url "https://github.com/TheBushidoCollective/han/releases/download/v3.12.5/han-linux-x64"
      sha256 "18ba2fb14df9cb1942374f83b90e600289604058b2e1e3849141c207386a1eea"
    end
  end

  def install
    bin.install Dir["han-*"].first => "han"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/han --version")
  end
end

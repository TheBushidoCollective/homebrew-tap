# typed: false
# frozen_string_literal: true

class Han < Formula
  desc "Sophisticated Claude Code Plugins with Superior Accuracy"
  homepage "https://han.guru"
  version "1.56.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.56.3/han-darwin-arm64"
      sha256 "c97dd25e3c95a06bd878400a920a2f90e1b1e398caceb7d7e7c74df199cc021b"
    else
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.56.3/han-darwin-x64"
      sha256 "2261dc7c406964595b61748d0a25ed264ccca066624b1695ba0877764261db75"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.56.3/han-linux-arm64"
      sha256 "80f2da548cab5b1d17e88fc08844f86ebc9782a88aa47f206708d0ed1abe9c27"
    else
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.56.3/han-linux-x64"
      sha256 "1ce70c134b1ae2a4e797aa2ac63f228cd640b6235400e7007d801da71ed2853a"
    end
  end

  def install
    bin.install Dir["han-*"].first => "han"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/han --version")
  end
end

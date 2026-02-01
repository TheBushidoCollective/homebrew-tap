# typed: false
# frozen_string_literal: true

class Han < Formula
  desc "Sophisticated Claude Code Plugins with Superior Accuracy"
  homepage "https://han.guru"
  version "3.4.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/TheBushidoCollective/han/releases/download/v3.4.2/han-darwin-arm64"
      sha256 "e3696c35a464e60d4c9174d1f60b95e3d50f67ade330abf554418bfc97e652aa"
    else
      url "https://github.com/TheBushidoCollective/han/releases/download/v3.4.2/han-darwin-x64"
      sha256 "82b148967e6c2bb8608c93139f5d3dd34bd5b5b5ee0cea43e437f7ab88fc3112"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/TheBushidoCollective/han/releases/download/v3.4.2/han-linux-arm64"
      sha256 "6415b44ce1daca7cd5d91c21bcc154ae61a6eb7eeec0a54f4ddb4fa4f15e9523"
    else
      url "https://github.com/TheBushidoCollective/han/releases/download/v3.4.2/han-linux-x64"
      sha256 "98eb2a440956153d0cee602f0b4321a0c8fba12198cf40b0944c924d5d52b929"
    end
  end

  def install
    bin.install Dir["han-*"].first => "han"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/han --version")
  end
end

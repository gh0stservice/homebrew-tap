class Gh0stcli < Formula
  desc "Local gh0stcloud client and MCP adapter"
  homepage "https://gitlab.gh0stservice.com/gh0stlab/gh0stcli"
  version "0.1.5"
  license "LGPL-3.0-or-later"

  on_macos do
    if Hardware::CPU.arm?
      url "https://nbg1.your-objectstorage.com/gh0stservice-updates-vb4/gh0stcli/releases/v0.1.5/gh0stcli_0.1.5_darwin_arm64.tar.gz"
      sha256 "e0b0770925591bfb44509f94009947ef5732a3195e6ca4d6d0625a57ea1017bb"
    else
      url "https://nbg1.your-objectstorage.com/gh0stservice-updates-vb4/gh0stcli/releases/v0.1.5/gh0stcli_0.1.5_darwin_amd64.tar.gz"
      sha256 "efa857791ae6dd2dd23bf472cbaf4235f4442581e3c94edfdb5b5480ca8e413b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://nbg1.your-objectstorage.com/gh0stservice-updates-vb4/gh0stcli/releases/v0.1.5/gh0stcli_0.1.5_linux_arm64.tar.gz"
      sha256 "aa96cb42d4c3753487af0421045a0fef5fafeb214c9a671538423cf697ed86c3"
    else
      url "https://nbg1.your-objectstorage.com/gh0stservice-updates-vb4/gh0stcli/releases/v0.1.5/gh0stcli_0.1.5_linux_amd64.tar.gz"
      sha256 "8faa11390bbbae69473065f565fb62b254ee3058ce5e7d8c4c348f800dbd2432"
    end
  end

  def install
    bin.install "gh0stcli"
  end

  test do
    system bin/"gh0stcli", "--help"
  end
end

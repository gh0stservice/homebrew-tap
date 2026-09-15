class Gh0stcli < Formula
  desc "Client and MCP server for the gh0stcloud managed Kubernetes platform"
  homepage "https://gh0stservice.com/en/gh0stcloud/self-service"
  version "0.5.0"
  license "LGPL-3.0-or-later"

  on_macos do
    if Hardware::CPU.arm?
      url "https://nbg1.your-objectstorage.com/gh0stservice-updates-vb4/gh0stcli/releases/v0.5.0/gh0stcli_0.5.0_darwin_arm64.tar.gz"
      sha256 "6c5fb8f8bec19b275c29799aa6704449a7b73204df992319f1e3c0e8ed35d545"
    else
      url "https://nbg1.your-objectstorage.com/gh0stservice-updates-vb4/gh0stcli/releases/v0.5.0/gh0stcli_0.5.0_darwin_amd64.tar.gz"
      sha256 "6d46943143db1964e80e72a3e345ad16633db1c6706d7687ca43b41318e54922"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://nbg1.your-objectstorage.com/gh0stservice-updates-vb4/gh0stcli/releases/v0.5.0/gh0stcli_0.5.0_linux_arm64.tar.gz"
      sha256 "cb0db467c29105888ac0120876c36a48195e57d4bd9b4994bd4ae33a813273a5"
    else
      url "https://nbg1.your-objectstorage.com/gh0stservice-updates-vb4/gh0stcli/releases/v0.5.0/gh0stcli_0.5.0_linux_amd64.tar.gz"
      sha256 "78170ccc73b1358bcfd910723b7912e46df10f5f4a1d300cba36935267b15d40"
    end
  end

  def install
    bin.install "gh0stcli"
  end

  test do
    system bin/"gh0stcli", "--help"
  end
end

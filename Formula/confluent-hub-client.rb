class ConfluentHubClient < Formula
  desc "Confluent Hub client"
  homepage "https://confluent.io"
  url "https://github.com/confluentinc/hub-client/releases/download/v5.1.0-beta180619025141/confluent-hub-client-5.1.0-beta180619025141-package.tar.gz", :using => GitHubPrivateRepositoryReleaseDownloadStrategy
  version "5.1.0-beta180619025141"
  sha256 "6520a3bda6cbcf2b695e0d46248ea1638e1039b6f0a8e47a1a9ac3af5c21a388"

  def install
    bin.install "bin/confluent-hub"
    prefix.install Dir["etc"]
    prefix.install Dir["share"]
  end
end

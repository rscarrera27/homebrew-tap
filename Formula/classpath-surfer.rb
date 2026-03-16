class ClasspathSurfer < Formula
  desc "Fast dependency symbol search for Gradle Java/Kotlin projects"
  homepage "https://github.com/rscarrera27/classpath-surfer"
  url "https://github.com/rscarrera27/classpath-surfer/releases/download/v0.5.0/classpath-surfer-aarch64-apple-darwin.tar.gz"
  sha256 "2bc402cc9be1fbdae0c41736a8dfe6ce30478239603beb421511ed4ab5121ca8"
  version "0.5.0"
  license "Apache-2.0"

  def install
    bin.install "classpath-surfer"
    bin.install_symlink "classpath-surfer" => "cpsurf"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/classpath-surfer --version")
  end
end

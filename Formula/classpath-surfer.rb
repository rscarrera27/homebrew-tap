class ClasspathSurfer < Formula
  desc "Fast dependency symbol search for Gradle Java/Kotlin projects"
  homepage "https://github.com/rscarrera27/classpath-surfer"
  url "https://github.com/rscarrera27/classpath-surfer/releases/download/v0.3.0/classpath-surfer-aarch64-apple-darwin.tar.gz"
  sha256 "b11034f64a192ff0c33160b84d0832304d36d60ccd56971275a94eb5f045c195"
  version "0.3.0"
  license "Apache-2.0"

  def install
    bin.install "classpath-surfer"
    bin.install_symlink "classpath-surfer" => "cpsurf"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/classpath-surfer --version")
  end
end

# ispc-tex
========

[![Latest version](https://img.shields.io/crates/v/ispc-tex-rs.svg)](https://crates.io/crates/ispc-tex-rs)
[![Documentation](https://docs.rs/ispc-tex-rs/badge.svg)](https://docs.rs/ispc-tex-rs)
[![](https://tokei.rs/b1/github/legion-labs/ispc-tex-rs)](https://github.com/legion-labs/ispc-tex-rs)
![MIT](https://img.shields.io/badge/license-MIT-blue.svg)
![APACHE2](https://img.shields.io/badge/license-APACHE2-blue.svg)

Rust bindings for Intel's ISPC texture compressor.

* https://github.com/GameTechDev/ISPCTextureCompressor

State of the art texture compression for BC6H, BC7, and BC1/BC3.

ISPC and `libclang` are not required, unless regenerating the ISPC kernels:

```cargo build --features=ispc```

* ISPC compiler:
  * https://ispc.github.io/
* Also need `libclang` installed (for rust-bindgen)
  * https://rust-lang.github.io/rust-bindgen/requirements.html

For convenience, ISPC binaries for macOS, Linux, and Windows are in the repository (but not the crate).

## Supported compression formats:

* BC1, BC3 (aka DXT1, DXT5)
* BC6H (FP16 HDR input)
* BC7
* ETC1

## Pending compression formats:

* ASTC (LDR, block sizes up to 8x8)
  * Work in progress

## Usage

Add this to your `Cargo.toml`:

```toml
[dependencies]
ispc-tex = "0.1.0"
```

## Example

```shell
$ cargo run --release --example main

Width is 4096
Height is 4096
ColorType is RGB(8)
Converting RGB -> RGBA
Block count: 1048576
Compressing to BC7...
  Done!
Saving lambertian.dds file
```

## License

Licensed under either of

 * Apache License, Version 2.0 ([LICENSE-APACHE](LICENSE-APACHE) or http://www.apache.org/licenses/LICENSE-2.0)
 * MIT license ([LICENSE-MIT](LICENSE-MIT) or http://opensource.org/licenses/MIT)

at your option.

## Contribution

Unless you explicitly state otherwise, any contribution intentionally submitted
for inclusion in this crate by you, as defined in the Apache-2.0 license, shall
be dual licensed as above, without any additional terms or conditions.

Contributions are always welcome; please look at the [issue tracker](https://github.com/legion-labs/ispc-tex-rs/issues) to see what
known improvements are documented.

## Code of Conduct

Contribution to the intel-tex crate is organized under the terms of the
Contributor Covenant, the maintainer of intel-tex, @legion-labs, promises to
intervene to uphold that code of conduct.
# Yuoki Industries (Factorio 2.1)

A Factorio mod by [YuokiTani](https://mods.factorio.com/user/YuokiTani),
currently maintained by [jatmn](https://mods.factorio.com/user/jatmn).

## Compatibility

The `release/1.3.0` branch is the Yuoki **1.3.0** release line for
**Factorio 2.1.20 or later**. Use Yuoki **1.2.x** with Factorio 2.0.

Space Age and Quality are optional. If enabled, each must be version 2.1.20
or later. Factorio 2.1 provides recycling through the separate built-in
Recycler mod; Space Age works with Quality disabled. Yuoki's quality module
requires both Space Age and Quality.

Do not enable `Yuoki_F2`, `yi_engines_F2`, or `YuokiTweaks` alongside this mod;
these are declared incompatible in [info.json](info.json).

## Installation

Install [Yuoki Industries](https://mods.factorio.com/mod/Yuoki) through the
in-game mod manager, selecting a version compatible with your Factorio version.
To test this development branch, build `Yuoki_1.3.0.zip` using the commands in
[Development checks](docs/development.md#installable-package), then put that ZIP
in your Factorio mods directory. Enable only one installed copy of Yuoki.
Back up existing saves before upgrading from Factorio 2.0.

## Validation

The 1.3.0 compatibility audit uses the official Factorio **2.1.21** headless
engine with base Yuoki, Recycler, Quality, and Space Age with Quality both
on and off. Headless checks cover prototype loading and short save runs;
they do not establish graphical correctness or full third-party mod compatibility.
See [changelog.txt](changelog.txt) for changes and
[CONTRIBUTING.md](CONTRIBUTING.md) for development requirements.

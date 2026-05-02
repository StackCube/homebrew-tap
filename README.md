# homebrew-tap

Homebrew tap for the [StackCube](https://stackcube.dev) suite.

## Install

```sh
brew tap stackcube/tap
brew install stackcube      # CLI (developers / operators)
brew install stackcubed     # daemon (server admins)
```

After installing `stackcubed`, run the next-step command printed by brew
(`stackcubed service install --admin-key … --domain …`) to set up the
launchd LaunchAgent.

## Upgrades

```sh
brew update && brew upgrade stackcube       # or stackcubed
```

`stackcube update` (the binary's own self-update subcommand) detects when
it's been installed via Homebrew and refuses to swap the binary in
place — it tells you to use `brew upgrade` instead. This keeps brew's
package state honest.

## What's in the tap

| Formula        | Binary       | Audience                          |
|----------------|--------------|-----------------------------------|
| `stackcube`    | `stackcube`  | Developers, operators (CLI)       |
| `stackcubed`   | `stackcubed` | Server admins (daemon)            |

The two formulas are physically independent but operationally coupled:
both bump in lockstep with each `paas/` release.

## Snapshots and version pinning

Brew is `latest`-only. For dev snapshots or pinning to a specific build,
install stackcube outside Homebrew and use:

```sh
stackcube update --version v0.0.0-snapshot-<sha>
stackcube update --version vX.Y.Z
```

## Adding a new formula

When a new product joins the suite (e.g. `stackchat`):

1. Add the relevant `lib_publish_homebrew` template to that product's
   release script.
2. Land an initial `Formula/<name>.rb` here via the first release.
3. Update the table above.

The tap is intentionally just a thin distribution endpoint; all
release-cutting logic lives in the source repo's release script.

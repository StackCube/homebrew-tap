# homebrew-tap

Homebrew tap for the [StackCube](https://stackcube.dev) suite.

## Install

```sh
brew tap stackcube/tap
brew install stackpaas      # PaaS CLI (developers / operators)
brew install stackpaasd     # PaaS daemon (server admins)
brew install metastack      # meta-repo workspace driver
```

`metastack` installs on macOS (Apple Silicon + Intel) and Linux. `stackpaas`
and `stackpaasd` are currently macOS (Apple Silicon) only.

After installing `stackpaasd`, run the next-step command printed by brew
(`stackpaasd service install --admin-key … --domain …`) to set up the
launchd LaunchAgent.

## Upgrades

```sh
brew update && brew upgrade stackpaas       # or stackpaasd
```

`stackpaas update` (the binary's own self-update subcommand) detects when
it's been installed via Homebrew and refuses to swap the binary in
place — it tells you to use `brew upgrade` instead. This keeps brew's
package state honest.

## What's in the tap

| Formula        | Binary       | Audience                                | Platforms                            |
|----------------|--------------|-----------------------------------------|--------------------------------------|
| `stackpaas`    | `stackpaas`  | Developers, operators (PaaS CLI)        | macOS (Apple Silicon)                |
| `stackpaasd`   | `stackpaasd` | Server admins (PaaS daemon)             | macOS (Apple Silicon)                |
| `metastack`    | `metastack`  | Workspace authors managing meta-repos   | macOS (Apple Silicon + Intel), Linux |

`stackpaas` and `stackpaasd` are physically independent but operationally
coupled — both bump in lockstep with each `paas/` release. `metastack`
is independent and ships from its own repo
([StackCube/metastack](https://github.com/StackCube/metastack)).

## Snapshots and version pinning

Brew is `latest`-only. For dev snapshots or pinning to a specific build,
install stackpaas outside Homebrew and use:

```sh
stackpaas update --version v0.0.0-snapshot-<sha>
stackpaas update --version vX.Y.Z
```

## Adding a new formula

When a new product joins the suite (e.g. `stackchat`):

1. Add the relevant `lib_publish_homebrew` template to that product's
   release script.
2. Land an initial `Formula/<name>.rb` here via the first release.
3. Update the table above.

The tap is intentionally just a thin distribution endpoint; all
release-cutting logic lives in the source repo's release script.

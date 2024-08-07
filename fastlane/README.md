fastlane documentation
----

# Installation

Make sure you have the latest version of the Xcode command line tools installed:

```sh
xcode-select --install
```

For _fastlane_ installation instructions, see [Installing _fastlane_](https://docs.fastlane.tools/#installing-fastlane)

# Available Actions

## iOS

### ios build_for_testing

```sh
[bundle exec] fastlane ios build_for_testing
```



### ios tests_without_building

```sh
[bundle exec] fastlane ios tests_without_building
```



### ios tests

```sh
[bundle exec] fastlane ios tests
```



### ios create_release

```sh
[bundle exec] fastlane ios create_release
```



### ios create_release_patch

```sh
[bundle exec] fastlane ios create_release_patch
```



### ios submit_app_for_review

```sh
[bundle exec] fastlane ios submit_app_for_review
```



### ios create_github_release

```sh
[bundle exec] fastlane ios create_github_release
```



### ios enter_version_prompt

```sh
[bundle exec] fastlane ios enter_version_prompt
```

Enter the version to be released

### ios create_release_candidate_tag

```sh
[bundle exec] fastlane ios create_release_candidate_tag
```

Creates (or replaces if needed) a release candidate git tag

### ios remove_release_candidate_tag

```sh
[bundle exec] fastlane ios remove_release_candidate_tag
```

Removes the release candidate tag for the specifed version including all builds

### ios tag_release

```sh
[bundle exec] fastlane ios tag_release
```

Finds the release candidate tag for version and build and tags it with release/vX.X.X-bXXX

### ios create_git_tag

```sh
[bundle exec] fastlane ios create_git_tag
```

Creates a git tag from the latest commit and push to remote

----

This README.md is auto-generated and will be re-generated every time [_fastlane_](https://fastlane.tools) is run.

More information about _fastlane_ can be found on [fastlane.tools](https://fastlane.tools).

The documentation of _fastlane_ can be found on [docs.fastlane.tools](https://docs.fastlane.tools).

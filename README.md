Wercker step goveralls [![MIT License](http://img.shields.io/badge/license-MIT-blue.svg?style=flat)](https://github.com/tcnksm/wercker-step-goveralls/blob/master/LICENCE)
====

[![wercker status](https://app.wercker.com/status/70e3f334b22f160c68eb8c69d673d653/m "wercker status")](https://app.wercker.com/project/bykey/70e3f334b22f160c68eb8c69d673d653)

This is [wercker](http://wercker.com/) deploy step for [mattn/goveralls](https://github.com/tcnksm/goveralls), go integration with [https://coveralls.io/](https://coveralls.io/) continuous code coverage tracking system. 

## Usage

In the `wercker.yml` of your application use the following step definition:

```yaml
steps:
   - tcnksm/goveralls:
     token: $COVERALLS_TOKEN
```

To use this step, you need to set `$COVERALLS_TOKEN`.

## Author

[tcnksm](https://github.com/tcnksm)

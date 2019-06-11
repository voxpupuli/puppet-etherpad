# Changelog

All notable changes to this project will be documented in this file.
Each new release typically also includes the latest modulesync defaults.
These should not affect the functionality of the module.

## [v2.3.0](https://github.com/voxpupuli/puppet-etherpad/tree/v2.3.0) (2019-06-11)

[Full Changelog](https://github.com/voxpupuli/puppet-etherpad/compare/v2.2.0...v2.3.0)

**Breaking changes:**

- modulesync 2.7.0 and drop puppet 4 [\#77](https://github.com/voxpupuli/puppet-etherpad/pull/77) ([bastelfreak](https://github.com/bastelfreak))

**Fixed bugs:**

- fix datatype for tlsOptions [\#81](https://github.com/voxpupuli/puppet-etherpad/pull/81) ([Dan33l](https://github.com/Dan33l))
- ep\_mypads does not use ep\_ldapauth [\#80](https://github.com/voxpupuli/puppet-etherpad/pull/80) ([Dan33l](https://github.com/Dan33l))
- Allow puppetlabs/concat 6.x, puppetlabs/stdlib 6.x, puppet/nodejs 7.x; require at least stdlib 4.25.0 instead of 4.17 [\#79](https://github.com/voxpupuli/puppet-etherpad/pull/79) ([dhoppe](https://github.com/dhoppe))

**Merged pull requests:**

- Add use\_default\_ldapauth option to allow skip merging of default settings [\#66](https://github.com/voxpupuli/puppet-etherpad/pull/66) ([sergiik](https://github.com/sergiik))

## [v2.2.0](https://github.com/voxpupuli/puppet-etherpad/tree/v2.2.0) (2018-10-08)

[Full Changelog](https://github.com/voxpupuli/puppet-etherpad/compare/v2.1.0...v2.2.0)

**Implemented enhancements:**

- add ubuntu 16.04 as supported OS [\#67](https://github.com/voxpupuli/puppet-etherpad/pull/67) ([Dan33l](https://github.com/Dan33l))
- Add ep mypad into list of supported plugins [\#61](https://github.com/voxpupuli/puppet-etherpad/pull/61) ([your1p](https://github.com/your1p))
- Add plugins auto installation  [\#55](https://github.com/voxpupuli/puppet-etherpad/pull/55) ([your1p](https://github.com/your1p))

**Fixed bugs:**

- Idempotent fix [\#63](https://github.com/voxpupuli/puppet-etherpad/pull/63) ([Dan33l](https://github.com/Dan33l))
- Add dependencies for systemd service file [\#54](https://github.com/voxpupuli/puppet-etherpad/pull/54) ([sergiik](https://github.com/sergiik))

**Closed issues:**

- alert logs a message on the server [\#70](https://github.com/voxpupuli/puppet-etherpad/issues/70)
- Needed to clean service\_provider [\#69](https://github.com/voxpupuli/puppet-etherpad/issues/69)
- Add management for the plugins `ep\_mypads` [\#59](https://github.com/voxpupuli/puppet-etherpad/issues/59)
- Add plugins auto-installation method  [\#51](https://github.com/voxpupuli/puppet-etherpad/issues/51)
- Fix the travis matrix [\#36](https://github.com/voxpupuli/puppet-etherpad/issues/36)

**Merged pull requests:**

- remove unused old providers [\#72](https://github.com/voxpupuli/puppet-etherpad/pull/72) ([Dan33l](https://github.com/Dan33l))
- change alert\(\) to fail\(\) [\#71](https://github.com/voxpupuli/puppet-etherpad/pull/71) ([Dan33l](https://github.com/Dan33l))
- allow puppet 6.x [\#68](https://github.com/voxpupuli/puppet-etherpad/pull/68) ([Dan33l](https://github.com/Dan33l))
- update nodejs version to 5.0.0 \(4.7.1 does not exist\) [\#65](https://github.com/voxpupuli/puppet-etherpad/pull/65) ([Dan33l](https://github.com/Dan33l))
- update stdlib min version to 4.17.0 \(with service\_provider fact\) [\#64](https://github.com/voxpupuli/puppet-etherpad/pull/64) ([Dan33l](https://github.com/Dan33l))
- Move files for 'debian' service\_provider to correct path [\#58](https://github.com/voxpupuli/puppet-etherpad/pull/58) ([sergiik](https://github.com/sergiik))
- allow puppetlabs/stdlib 5.x [\#57](https://github.com/voxpupuli/puppet-etherpad/pull/57) ([bastelfreak](https://github.com/bastelfreak))

## [v2.1.0](https://github.com/voxpupuli/puppet-etherpad/tree/v2.1.0) (2018-08-06)

[Full Changelog](https://github.com/voxpupuli/puppet-etherpad/compare/v2.0.0...v2.1.0)

**Implemented enhancements:**

- Add managment for ssl settings [\#34](https://github.com/voxpupuli/puppet-etherpad/issues/34)
- allow puppetlabs/vcsrepo 2.x [\#52](https://github.com/voxpupuli/puppet-etherpad/pull/52) ([bastelfreak](https://github.com/bastelfreak))
- Fix issue \#38 [\#46](https://github.com/voxpupuli/puppet-etherpad/pull/46) ([your1p](https://github.com/your1p))
- \#34 manage ssl settings and add spec tests [\#35](https://github.com/voxpupuli/puppet-etherpad/pull/35) ([your1p](https://github.com/your1p))

**Closed issues:**

- Use a stable branch of Etherpad [\#47](https://github.com/voxpupuli/puppet-etherpad/issues/47)
- Fix ExecStart option for systemd  [\#45](https://github.com/voxpupuli/puppet-etherpad/issues/45)
- Use variables instead of hard coded text in template settings.json.epp [\#44](https://github.com/voxpupuli/puppet-etherpad/issues/44)
- Add management for pad options  [\#38](https://github.com/voxpupuli/puppet-etherpad/issues/38)

**Merged pull requests:**

- Modify the etherpad version in the module [\#50](https://github.com/voxpupuli/puppet-etherpad/pull/50) ([your1p](https://github.com/your1p))
- Remove docker nodesets [\#43](https://github.com/voxpupuli/puppet-etherpad/pull/43) ([bastelfreak](https://github.com/bastelfreak))
- drop EOL OSs; fix puppet version range [\#42](https://github.com/voxpupuli/puppet-etherpad/pull/42) ([bastelfreak](https://github.com/bastelfreak))

## [v2.0.0](https://github.com/voxpupuli/puppet-etherpad/tree/v2.0.0) (2017-11-17)

[Full Changelog](https://github.com/voxpupuli/puppet-etherpad/compare/v1.1.0...v2.0.0)

**Implemented enhancements:**

- Support for ep\_button\_link module options. Fix for ep\_ldapauth boolean options [\#23](https://github.com/voxpupuli/puppet-etherpad/pull/23) ([sergiik](https://github.com/sergiik))
- Add support for managing etherpad users and logfile location [\#18](https://github.com/voxpupuli/puppet-etherpad/pull/18) ([grigarr](https://github.com/grigarr))
- Add option to install settings for ep\_ldapauth plugin [\#17](https://github.com/voxpupuli/puppet-etherpad/pull/17) ([sergiik](https://github.com/sergiik))

**Fixed bugs:**

- Fixes to upstart init script and documentation [\#14](https://github.com/voxpupuli/puppet-etherpad/pull/14) ([mattock](https://github.com/mattock))

**Merged pull requests:**

- bump puppet version dependency to \>= 4.7.1 \< 6.0.0 [\#31](https://github.com/voxpupuli/puppet-etherpad/pull/31) ([bastelfreak](https://github.com/bastelfreak))
- replace validate\_\* with datatypes [\#28](https://github.com/voxpupuli/puppet-etherpad/pull/28) ([bastelfreak](https://github.com/bastelfreak))
- Add init.d script for 'debian' service\_provider [\#26](https://github.com/voxpupuli/puppet-etherpad/pull/26) ([sergiik](https://github.com/sergiik))

# Change log

All notable changes to this project will be documented in this file.
Each new release typically also includes the latest modulesync defaults.
These should not impact the functionality of the module.

## [v1.1.0](https://github.com/voxpupuli/puppet-etherpad/tree/v1.1.0) (2017-02-12)
[Full Changelog](https://github.com/voxpupuli/puppet-etherpad/compare/v1.0.0...v1.1.0)

**Merged pull requests:**

- Bump minimum version dependencies \(for Puppet 4\) [\#13](https://github.com/voxpupuli/puppet-etherpad/pull/13) ([juniorsysadmin](https://github.com/juniorsysadmin))
- Add missing badges [\#8](https://github.com/voxpupuli/puppet-etherpad/pull/8) ([dhoppe](https://github.com/dhoppe))

## [v1.0.0](https://github.com/voxpupuli/puppet-etherpad/tree/v1.0.0) (2016-08-19)
**Merged pull requests:**

- Modulesync 0.12.2 & Release 1.0.0 [\#2](https://github.com/voxpupuli/puppet-etherpad/pull/2) ([bastelfreak](https://github.com/bastelfreak))



\* *This Change Log was automatically generated by [github_changelog_generator](https://github.com/skywinder/Github-Changelog-Generator)*


\* *This Changelog was automatically generated by [github_changelog_generator](https://github.com/github-changelog-generator/github-changelog-generator)*

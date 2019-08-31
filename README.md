[![No Maintenance Intended](http://unmaintained.tech/badge.svg)](http://unmaintained.tech/)
# DEPRECATED/LOOKING FOR MAINTAINERS -> archived

# MIG Client ansible role

A simple ansible role to setup MIG Client
http://mig.mozilla.org/

It is differentiated of MIG server to avoid unnecessary dependencies.

## Requirements & Dependencies

### Ansible
It was tested on the following versions:
 * 1.9
 * 2.0

### Operating systems

Tested with vagrant only on Ubuntu 14.04 for now but should work on 12.04 and similar debian based systems.
Verified with kitchen against ubuntu14 and centos7

## Example Playbook

Just include this role in your list.
For example

```
- hosts: migclient
  roles:
    - { role: migclient, mig_api_host: ansiblemigservername }

```

## Variables

```
mig_api_host: localhost
mig_api_port: 51664

```

## Continuous integration

(not done, need the server)


## Troubleshooting & Known issues

* client can't connect
in debug mode, get
```
client$ sudo /sbin/mig-agent -d
[...]
[debug] Failed to connect to relay directly: 'initMQ() -> Exception (403) Reason: "username or password n
ot allowed"'
server$ sudo -u rabbitmq rabbitmqctl list_users
```

## License

BSD 2-clause




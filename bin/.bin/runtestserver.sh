#!/bin/bash
qemu-system-x86_64 -enable-kvm -m 1G -drive file=~/Virtual/testserver,format=raw -net nic -net user,hostfwd=tcp::10022-:22

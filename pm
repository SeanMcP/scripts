#!/usr/bin/env python3

import argparse
import os

VERSION = "1.0.0"

parser = argparse.ArgumentParser(description="Run command with best JavaScript package manager")
parser.add_argument("command", nargs="?", help="command to be run by the package manager")
parser.add_argument("-v", "--version", action="version", version=f"rpj {VERSION}", help="print version and exit")
parser.add_argument("--debug", action="store_true", help="print debug info")

args = parser.parse_args()
command = args.command
debug_mode = args.debug

def debug(*args):
    if debug_mode:
        print("🪲:", *args)

if not command:
    print("No command provided")
    raise SystemExit(1)

if os.path.exists("bun.lock"):
    debug("Using Bun")
    os.system(f"bun {command}")
elif os.path.exists("pnpm-lock.yaml"):
    debug("Using pnpm")
    os.system(f"pnpm {command}")
elif os.path.exists("yarn.lock"):
    debug("Using Yarn")
    os.system(f"yarn {command}")
elif os.path.exists("package-lock.json"):
    debug("Using npm")
    os.system(f"npm {command}")
else:
    os.system(f"pnpm {command}")

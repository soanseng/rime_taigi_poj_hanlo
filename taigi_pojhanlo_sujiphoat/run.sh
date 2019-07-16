#!/bin/bash
# Runner for RimeApiConsole & BDD

behave --no-capture /rime_taigi_poj_hanlo/BDD/features

/librime/build/bin/rime_api_console

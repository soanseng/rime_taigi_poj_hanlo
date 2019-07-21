import Platform
import RimeApiConfig
import sys
import subprocess
import re

rime_api_console_path_docker = "/librime/build/bin/rime_api_console"
rime_api_console_path_mac_os = "../librime/build/bin/Release/rime_api_console"


def call(console_input):
    if Platform.docker in sys.platform:
        rime_api_console_path = rime_api_console_path_docker
    elif Platform.mac_os in sys.platform:
        rime_api_console_path = rime_api_console_path_mac_os
    else:
        raise RuntimeError("Unsupported operating system: {}".format(sys.platform))

    working_path = RimeApiConfig.get_working_path()

    process = subprocess.Popen(
        [rime_api_console_path],
        stdin=subprocess.PIPE, stdout=subprocess.PIPE,
        encoding='utf-8',
        cwd=working_path
    )
    (out, _err) = process.communicate(console_input)
    return out


def output_exists_candidate(console_output, jisu):
    pate = re.compile('\d+\.  {} \Z'.format(jisu))
    choohap = re.compile('\d+\. \[{}\]\Z'.format(jisu))
    found_candidates = False
    found = False
    for line in console_output.split('\n'):
        if line.startswith('page: '):
            found_candidates = True
        if found_candidates:
            if pate.match(line) or choohap.match(line):
                found = True
                break

    return found

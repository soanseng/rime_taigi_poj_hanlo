import Platform
import RimeApiConfig
import sys
import subprocess
import re


rime_api_console_path_docker = "/librime/build/bin/rime_api_console"
rime_api_console_path_mac_os = "../../librime/build/bin/Release/rime_api_console"


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

    print("RimeApiConsole輸入：", console_input)

    (console_output, _err) = process.communicate(console_input)

    print("RimeApiConsole輸出：", console_output)

    return console_output


def output_exists_candidate(console_output, jisu):
    default_candidate_regex = re.compile('\d+\. \[{}\].*'.format(jisu))
    other_candidate_regex = re.compile('\d+\.  {} .*'.format(jisu))

    found_candidates = False
    found = False
    for line in console_output.split('\n'):
        if line.startswith('page: '):
            found_candidates = True
            continue
        if found_candidates:
            if other_candidate_regex.match(line) or default_candidate_regex.match(line):
                found = True
                break

    return found


def output_candidates_fit_orders(console_output, jisu1, jisu2):
    default_candidate_regex = re.compile('\d+\. \[{}\].*'.format(jisu1))
    other_candidate_regex = re.compile('\d+\.  {} .*'.format(jisu2))

    found_candidates = False
    found_first = False
    found_first_then_second = False
    for line in console_output.split('\n'):
        if line.startswith('page: '):
            found_candidates = True
            continue
        if found_candidates:
            if default_candidate_regex.match(line):
                found_first = True
                continue
            if found_first and other_candidate_regex.match(line):
                found_first_then_second = True
                break

    return found_first_then_second

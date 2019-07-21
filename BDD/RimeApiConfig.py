import Platform
import sys


path_docker = "."
path_mac_os = "../taigi_pojhanlo_sujiphoat/"

dict_filename = "taigi_pojhanlo.dict.yaml"


def dict_contains_word(jisu, phengim_with_space):
    found = False
    search_string = jisu + "\t" + phengim_with_space

    if Platform.docker in sys.platform:
        path = dict_filename
    elif Platform.mac_os in sys.platform:
        path = path_mac_os + dict_filename
    else:
        raise RuntimeError("Unsupported operating system: {}".format(sys.platform))

    with open(path, "r") as ins:
        for line in ins:
            if line.startswith(search_string):
                found = True
                break

    # if found:
    #     print("Search string:\"" + search_string + "\" found!")
    # else:
    #     print("Search string:\"" + search_string + "\" not found!")

    return found


def get_working_path():
    if Platform.docker in sys.platform:
        return path_docker
    elif Platform.mac_os in sys.platform:
        return path_mac_os
    else:
        raise RuntimeError("Unsupported operating system: {}".format(sys.platform))
